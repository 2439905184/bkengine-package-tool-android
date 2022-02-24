package tv.ouya.console.api;

import android.app.Activity;
import android.content.ContentResolver;
import android.hardware.input.InputManager;
import android.hardware.input.InputManager.InputDeviceListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class OuyaInputMapper {
   private static final String TAG = OuyaInputMapper.class.getSimpleName();
   private static SparseArray sController = new SparseArray();
   private static final Uri sControllerUri = Uri.parse("content://tv.ouya.controllerdata/");
   private static OuyaInputMapper.OuyaDeviceListener sDeviceListener = null;
   private static boolean sEnableControllerDispatch = true;
   private static InputManager sInputManager;
   private static List sLastValue = new ArrayList();
   private static MappingParser sParser = new MappingParser();
   private static boolean sSkipInputProcessing = false;

   public static boolean dispatchGenericMotionEvent(Activity var0, MotionEvent var1) {
      if (!shouldHandleInputEvent(var1)) {
         throw new RuntimeException("Don't pass events when shouldHandleInputEvent is false");
      } else {
         View var2 = var0.getCurrentFocus();
         if (var2 != null && var2 instanceof EditText) {
            return passDispatchGenericMotionEvent(var0, var1);
         } else {
            int var3 = OuyaController.getPlayerNumByDeviceId(var1.getDeviceId());
            if (var3 < 0) {
               Log.e(TAG, "Failed to find playerNum for Controller=" + var1.getDevice().getName());
               return passDispatchGenericMotionEvent(var0, var1);
            } else {
               MappingParser.Controller var4 = getControllerByDeviceId(var1.getDeviceId());
               if (var4 == null) {
                  return passDispatchGenericMotionEvent(var0, var1);
               } else {
                  int var5 = var1.getSource();
                  Vector var6 = var4.mButtonIsAxis;
                  boolean var7 = false;
                  if (var6 != null) {
                     int var18 = 0;

                     while(true) {
                        int var19 = var6.size();
                        if (var18 >= var19) {
                           break;
                        }

                        MappingParser.ButtonIsAxis var20 = (MappingParser.ButtonIsAxis)var6.get(var18);
                        float var21 = var1.getAxisValue(var20.mSourceAxis);
                        if (var21 >= var20.mActionDownMin && var21 <= var20.mActionDownMax) {
                           if (!((SparseBooleanArray)sLastValue.get(var3)).get(var20.mDestinationKeyCode)) {
                              ((SparseBooleanArray)sLastValue.get(var3)).put(var20.mDestinationKeyCode, true);
                              var7 |= passDispatchKeyEvent(var0, new KeyEvent(0L, 0L, 0, var20.mDestinationKeyCode, 0, 0, var1.getDeviceId(), 0, 1024), true);
                           }
                        } else if (((SparseBooleanArray)sLastValue.get(var3)).get(var20.mDestinationKeyCode)) {
                           ((SparseBooleanArray)sLastValue.get(var3)).put(var20.mDestinationKeyCode, false);
                           var7 |= passDispatchKeyEvent(var0, new KeyEvent(0L, 0L, 1, var20.mDestinationKeyCode, 0, 0, var1.getDeviceId(), 0, 1024), true);
                        }

                        ++var18;
                     }
                  }

                  if (var4.mAxisExcludeSource.size() > 0 && var4.mAxisExcludeSource.get(var5)) {
                     return true;
                  } else {
                     Vector var8 = var4.mAxisRemap;
                     if (var8 != null) {
                        int var9 = var1.getPointerCount();
                        if (var9 > 0 && var8.size() > 0) {
                           PointerProperties[] var10 = new PointerProperties[]{new PointerProperties()};
                           PointerCoords[] var11 = new PointerCoords[]{new PointerCoords()};
                           var1.getPointerProperties(0, var10[0]);
                           var1.getPointerCoords(0, var11[0]);
                           int var12 = 0;

                           while(true) {
                              int var13 = var8.size();
                              if (var12 >= var13) {
                                 MotionEvent var14 = MotionEvent.obtain(var1.getDownTime(), var1.getEventTime(), var1.getAction(), var9, var10, var11, var1.getMetaState(), var1.getButtonState(), 1.0F, 1.0F, var1.getDeviceId(), var1.getEdgeFlags(), var5, var1.getFlags());
                                 boolean var15 = var7 | passDispatchGenericMotionEvent(var0, var14);
                                 var14.recycle();
                                 return var15;
                              }

                              MappingParser.AxisRemap var16 = (MappingParser.AxisRemap)var8.get(var12);
                              if (var16.mSourceAxis != var16.mDestinationAxis) {
                                 float var17 = var1.getAxisValue(var16.mSourceAxis);
                                 var11[0].setAxisValue(var16.mDestinationAxis, var17);
                              }

                              ++var12;
                           }
                        }
                     }

                     return var7 | passDispatchGenericMotionEvent(var0, var1);
                  }
               }
            }
         }
      }
   }

   public static boolean dispatchKeyEvent(Activity var0, KeyEvent var1) {
      if (!shouldHandleInputEvent(var1)) {
         throw new RuntimeException("Don't pass events when shouldHandleInputEvent is false");
      } else {
         View var2 = var0.getCurrentFocus();
         if (var2 != null && var2 instanceof EditText) {
            return passDispatchKeyEvent(var0, var1, false);
         } else {
            MappingParser.Controller var3 = getControllerByDeviceId(var1.getDeviceId());
            if (var3 == null) {
               return passDispatchKeyEvent(var0, var1, true);
            } else {
               int var4 = var1.getKeyCode();
               int var5 = var1.getSource();
               MappingParser.Button var6 = sParser.getButton(var3, var4);
               if (var6 == null) {
                  return passDispatchKeyEvent(var0, var1, true);
               } else if (var6.mExcludeSource.size() > 0 && var6.mExcludeSource.get(var5)) {
                  return true;
               } else {
                  KeyEvent var7;
                  if (var4 == var6.mDestinationKeyCode) {
                     var7 = var1;
                  } else {
                     var7 = new KeyEvent(var1.getDownTime(), var1.getEventTime(), var1.getAction(), var6.mDestinationKeyCode, var1.getRepeatCount(), var1.getMetaState(), var1.getDeviceId(), 0);
                  }

                  return passDispatchKeyEvent(var0, var7, true);
               }
            }
         }
      }
   }

   private static String getButtonRemappingJSONString(Activity var0) {
      ContentResolver var1 = var0.getApplicationContext().getContentResolver();

      Bundle var4;
      label17: {
         Bundle var6;
         try {
            var6 = var1.call(sControllerUri, "get_button_remap_json", (String)null, (Bundle)null);
         } catch (IllegalArgumentException var7) {
            Log.e(TAG, "Error querying button remapping");
            var4 = null;
            break label17;
         }

         var4 = var6;
      }

      String var5 = null;
      if (var4 != null) {
         var5 = var4.getString("button_remap");
      }

      return var5;
   }

   private static MappingParser.Controller getControllerByDeviceId(int var0) {
      if (sController.get(var0) != null) {
         return (MappingParser.Controller)sController.get(var0);
      } else {
         sDeviceListener.onInputDeviceAdded(var0);
         return (MappingParser.Controller)sController.get(var0);
      }
   }

   public static void init(Activity var0) {
      OuyaController.init(var0);
      if (sDeviceListener == null) {
         sDeviceListener = new OuyaInputMapper.OuyaDeviceListener();
         sInputManager = (InputManager)var0.getSystemService("input");
         if (sInputManager != null) {
            sInputManager.registerInputDeviceListener(sDeviceListener, (Handler)null);
         }
      }

      for(int var1 = 0; var1 < 4; ++var1) {
         sLastValue.add(new SparseBooleanArray());
      }

      for(int var2 = 0; var2 < 4; ++var2) {
         OuyaController var4 = OuyaController.getControllerByPlayer(var2);
         if (var4 != null) {
            String var5 = "null";
            if (var4.getDevice() != null) {
               var5 = var4.getDevice().getName();
            }

            Log.i(TAG, "OUYA Controller #" + var2 + ": " + var5);
         }
      }

      String var3 = getButtonRemappingJSONString(var0);
      sParser.parse(var3);
   }

   private static boolean passDispatchGenericMotionEvent(Activity var0, MotionEvent var1) {
      if (sEnableControllerDispatch) {
         OuyaController.onGenericMotionEvent(var1);
      }

      sSkipInputProcessing = true;
      boolean var2 = var0.dispatchGenericMotionEvent(var1);
      sSkipInputProcessing = false;
      return var2;
   }

   private static boolean passDispatchKeyEvent(Activity var0, KeyEvent var1, boolean var2) {
      int var3 = var1.getKeyCode();
      switch(var1.getAction()) {
      case 0:
         if (sEnableControllerDispatch) {
            OuyaController.onKeyDown(var3, var1);
         }
         break;
      case 1:
         if (sEnableControllerDispatch) {
            OuyaController.onKeyUp(var3, var1);
         }
      }

      sSkipInputProcessing = true;
      boolean var5 = var0.dispatchKeyEvent(var1);
      if (!var5 && var2) {
         int var6 = var1.getKeyCode();
         byte var7 = 0;
         switch(var6) {
         case 96:
            var7 = 23;
            break;
         case 97:
            var7 = 4;
         case 98:
         default:
            break;
         case 99:
         case 100:
            var5 = true;
            var7 = 0;
         }

         if (var7 != 0) {
            var0.dispatchKeyEvent(new KeyEvent(var1.getDownTime(), var1.getEventTime(), var1.getAction(), var7, var1.getRepeatCount(), var1.getMetaState(), var1.getDeviceId(), 0, 1024));
            var5 = true;
         }
      }

      sSkipInputProcessing = false;
      return var5;
   }

   public static void setEnableControllerDispatch(boolean var0) {
      sEnableControllerDispatch = var0;
   }

   public static boolean shouldHandleInputEvent(InputEvent var0) {
      return !sSkipInputProcessing;
   }

   public static void shutdown(Activity var0) {
      if (sInputManager != null) {
         sInputManager.unregisterInputDeviceListener(sDeviceListener);
      }

   }

   static class OuyaDeviceListener implements InputDeviceListener {
      public void onInputDeviceAdded(int var1) {
         if (OuyaInputMapper.sController.get(var1) == null) {
            OuyaController var2 = OuyaController.getControllerByDeviceId(var1);
            if (var2 == null) {
               Log.e(OuyaInputMapper.TAG, "onInputDeviceAdded device=" + var1 + " not found");
               return;
            }

            MappingParser.Controller var4 = OuyaInputMapper.sParser.getController(OuyaInputMapper.sParser.getIdByString(var2.getDeviceName()));
            if (var4 != null) {
               OuyaInputMapper.sController.put(var1, var4);
            }
         }

      }

      public void onInputDeviceChanged(int var1) {
      }

      public void onInputDeviceRemoved(int var1) {
         if (OuyaInputMapper.sController.get(var1) != null) {
            OuyaInputMapper.sController.remove(var1);
         }

      }
   }
}
