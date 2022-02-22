package tv.ouya.console.api;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.io.FileInputStream;
import java.io.IOException;

public class OuyaController {
   private static int[] AVAILABLE_AXES = new int[]{0, 1, 11, 14, 17, 18};
   public static final int AXIS_L2 = 17;
   public static final int AXIS_LS_X = 0;
   public static final int AXIS_LS_Y = 1;
   public static final int AXIS_R2 = 18;
   public static final int AXIS_RS_X = 11;
   public static final int AXIS_RS_Y = 14;
   public static final int BUTTON_A = 97;
   public static final int BUTTON_DPAD = 23;
   public static final int BUTTON_DPAD_DOWN = 20;
   public static final int BUTTON_DPAD_LEFT = 21;
   public static final int BUTTON_DPAD_RIGHT = 22;
   public static final int BUTTON_DPAD_UP = 19;
   public static final int BUTTON_HOME = 3;
   public static final int BUTTON_L1 = 102;
   @Deprecated
   public static final int BUTTON_L2 = 104;
   public static final int BUTTON_L3 = 106;
   public static final int BUTTON_MENU = 82;
   public static final int BUTTON_O = 96;
   public static final int BUTTON_R1 = 103;
   @Deprecated
   public static final int BUTTON_R2 = 105;
   public static final int BUTTON_R3 = 107;
   public static final int BUTTON_U = 99;
   public static final int BUTTON_Y = 100;
   private static final String EXTRA_OUYA_CONTROLLER_DEVICE_ID = "DEVICE_ID";
   private static final String EXTRA_OUYA_CONTROLLER_PLAYER_NUM = "PLAYER_NUM";
   private static final int INVALID_INPUT_DEVICE_ID = -1;
   private static final String LOG_TAG = "OuyaController";
   public static final int MAX_CONTROLLERS = 4;
   private static final String OUYA_CONTROLLER_ADDED_ACTION = "tv.ouya.controller.added";
   private static final String OUYA_CONTROLLER_REMOVED_ACTION = "tv.ouya.controller.removed";
   private static final int PRESSED_THIS_FRAME = 1;
   private static final int RELEASED_THIS_FRAME = 2;
   public static final float STICK_DEADZONE = 0.25F;
   private static Context appContext;
   private static Bundle sButtonDataBundle = null;
   private static SparseArray sButtonDataCache = null;
   private static final Uri sControllerUri = Uri.parse("content://tv.ouya.controllerdata/");
   static final OuyaController[] s_controllers = new OuyaController[4];
   private SparseArray axisValues;
   private SparseBooleanArray buttonValues;
   private InputDevice device;
   private int deviceId;
   private String deviceName;
   private SparseIntArray thisFrameButtonValues;

   OuyaController(int var1) {
      this.deviceId = var1;
      this.device = InputDevice.getDevice(var1);
      this.axisValues = new SparseArray();
      this.buttonValues = new SparseBooleanArray();
      this.thisFrameButtonValues = new SparseIntArray();
      this.deviceName = getBluetoothNameFromDeviceId(var1);
      if ((this.deviceName == null || this.deviceName.isEmpty()) && this.device != null) {
         this.deviceName = this.device.getName();
      }

   }

   private static String getBluetoothNameFromDeviceId(int var0) {
      Context var1 = appContext;
      String var2 = null;
      if (var1 != null) {
         var2 = null;

         Exception var10000;
         label232: {
            Cursor var10;
            boolean var10001;
            try {
               ContentResolver var6 = appContext.getContentResolver();
               Uri var7 = sControllerUri;
               String[] var8 = new String[]{"bt_name"};
               String[] var9 = new String[]{String.valueOf(var0)};
               var10 = var6.query(var7, var8, "input_device_id = ?", var9, (String)null);
            } catch (SQLiteException var42) {
               var10001 = false;
               return var2;
            } catch (Exception var43) {
               var10000 = var43;
               var10001 = false;
               break label232;
            }

            var2 = null;
            if (var10 != null) {
               label230: {
                  String var13;
                  label227: {
                     Throwable var44;
                     label228: {
                        boolean var12;
                        try {
                           var12 = var10.moveToNext();
                        } catch (Throwable var41) {
                           var44 = var41;
                           var10001 = false;
                           break label228;
                        }

                        var2 = null;
                        if (!var12) {
                           break label230;
                        }

                        label208:
                        try {
                           var13 = var10.getString(0);
                           break label227;
                        } catch (Throwable var40) {
                           var44 = var40;
                           var10001 = false;
                           break label208;
                        }
                     }

                     Throwable var11 = var44;
                     var2 = null;
                     if (var10 != null) {
                        try {
                           var10.close();
                        } catch (SQLiteException var36) {
                           var10001 = false;
                           return var2;
                        } catch (Exception var37) {
                           var10000 = var37;
                           var10001 = false;
                           break label232;
                        }
                     }

                     try {
                        throw var11;
                     } catch (SQLiteException var34) {
                        var10001 = false;
                        return var2;
                     } catch (Exception var35) {
                        var10000 = var35;
                        var10001 = false;
                        break label232;
                     }
                  }

                  var2 = var13;
               }
            }

            if (var10 == null) {
               return var2;
            }

            try {
               var10.close();
               return var2;
            } catch (SQLiteException var38) {
               var10001 = false;
               return var2;
            } catch (Exception var39) {
               var10000 = var39;
               var10001 = false;
            }
         }

         Exception var3 = var10000;
         Log.d("OuyaController", "Exception: " + var3.getMessage());
         return var2;
      } else {
         return var2;
      }
   }

   public static OuyaController.ButtonData getButtonData(int var0) {
      if (sButtonDataCache != null) {
         OuyaController.ButtonData var12 = (OuyaController.ButtonData)sButtonDataCache.get(var0);
         if (var12 != null) {
            return var12;
         }
      }

      if (sButtonDataBundle == null) {
         ContentResolver var9 = appContext.getContentResolver();

         try {
            sButtonDataBundle = var9.call(sControllerUri, "get_button_images", (String)null, (Bundle)null);
         } catch (IllegalArgumentException var13) {
            Log.e("OuyaController", "Error querying button remapping");
            return null;
         }
      }

      String var1 = String.valueOf(var0);

      Drawable var4;
      label48: {
         Drawable var8;
         label47: {
            IOException var10000;
            label55: {
               AssetFileDescriptor var6;
               boolean var10001;
               try {
                  var6 = (AssetFileDescriptor)sButtonDataBundle.get(var1);
               } catch (IOException var16) {
                  var10000 = var16;
                  var10001 = false;
                  break label55;
               }

               FileInputStream var7;
               if (var6 != null) {
                  try {
                     var7 = var6.createInputStream();
                  } catch (IOException var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label55;
                  }
               } else {
                  var7 = null;
               }

               try {
                  var8 = Drawable.createFromStream(var7, var1);
                  break label47;
               } catch (IOException var14) {
                  var10000 = var14;
                  var10001 = false;
               }
            }

            IOException var2 = var10000;
            Log.e("OuyaController", "IOException: " + var2.getMessage());
            var4 = null;
            break label48;
         }

         var4 = var8;
      }

      OuyaController.ButtonData var5 = new OuyaController.ButtonData(var4, sButtonDataBundle.getString(var1 + "_name"));
      if (sButtonDataCache == null) {
         sButtonDataCache = new SparseArray();
      }

      sButtonDataCache.put(var0, var5);
      return var5;
   }

   public static OuyaController getControllerByDeviceId(int var0) {
      OuyaController[] var1 = s_controllers;
      int var2 = var1.length;

      for(int var3 = 0; var3 < var2; ++var3) {
         OuyaController var4 = var1[var3];
         if (var4 != null && var4.getDeviceId() == var0) {
            return var4;
         }
      }

      return null;
   }

   public static OuyaController getControllerByPlayer(int var0) {
      return var0 >= 0 && var0 < 4 ? s_controllers[var0] : null;
   }

   private static int getDeviceIdFromPlayerNum(int var0) {
      ContentResolver var1 = appContext.getContentResolver();
      Uri var2 = sControllerUri;
      String[] var3 = new String[]{"input_device_id"};
      String[] var4 = new String[]{String.valueOf(var0)};
      Cursor var5 = var1.query(var2, var3, "player_num = ?", var4, (String)null);
      if (var5 != null) {
         try {
            if (var5.moveToNext()) {
               int var7 = var5.getInt(0);
               return var7;
            }
         } finally {
            if (var5 != null) {
               var5.close();
            }

         }
      }

      return -1;
   }

   private static OuyaController getOrCreateControllerByDeviceId(int var0) {
      OuyaController var1 = getControllerByDeviceId(var0);
      if (var1 != null) {
         return var1;
      } else {
         int var2 = getPlayerNumFromDeviceId(var0);
         if (var2 >= 0 && var2 < 4) {
            if (s_controllers[var2] != null) {
               Log.e("OuyaController", "Controller for player " + var2 + " already found, but doesn't match device id " + "(expected " + var0 + " got " + s_controllers[var2].getDeviceId() + ")");
               return s_controllers[var2];
            } else {
               s_controllers[var2] = new OuyaController(var0);
               return s_controllers[var2];
            }
         } else {
            return null;
         }
      }
   }

   public static int getPlayerNumByDeviceId(int var0) {
      OuyaController var1 = getOrCreateControllerByDeviceId(var0);
      return var1 == null ? -1 : var1.getPlayerNum();
   }

   private static int getPlayerNumFromDeviceId(int var0) {
      int var1 = -1;
      if (appContext != null) {
         ContentResolver var2 = appContext.getContentResolver();
         Uri var3 = sControllerUri;
         String[] var4 = new String[]{"player_num"};
         String[] var5 = new String[]{String.valueOf(var0)};
         Cursor var6 = var2.query(var3, var4, "input_device_id = ?", var5, (String)null);
         if (var6 != null) {
            label82: {
               boolean var10 = false;

               int var8;
               try {
                  var10 = true;
                  if (!var6.moveToNext()) {
                     var10 = false;
                     break label82;
                  }

                  var8 = var6.getInt(0);
                  var10 = false;
               } finally {
                  if (var10) {
                     if (var6 != null) {
                        var6.close();
                     }

                  }
               }

               var1 = var8;
               if (var6 != null) {
                  var6.close();
                  return var8;
               }

               return var1;
            }
         }

         if (var6 != null) {
            var6.close();
            return var1;
         }
      }

      return var1;
   }

   public static void init(Context var0) {
      if (appContext == null) {
         appContext = var0.getApplicationContext();

         for(int var1 = 0; var1 < 4; ++var1) {
            int var5 = getDeviceIdFromPlayerNum(var1);
            if (var5 != -1) {
               getOrCreateControllerByDeviceId(var5);
            }
         }

         BroadcastReceiver var2 = new BroadcastReceiver() {
            public void onReceive(Context var1, Intent var2) {
               if (var2.getAction().equals("tv.ouya.controller.added")) {
                  int var6 = var2.getIntExtra("DEVICE_ID", -1);
                  int var7 = var2.getIntExtra("PLAYER_NUM", -1);
                  if (var7 >= 0 && var7 < 4) {
                     if (OuyaController.s_controllers[var7] != null) {
                        Log.e("OuyaController", "Controller already exists for player " + var7 + "(new device id " + var6 + ", prev device id " + OuyaController.s_controllers[var7].getDeviceId() + ")");
                     }

                     OuyaController.s_controllers[var7] = new OuyaController(var6);
                     return;
                  }
               } else if (var2.getAction().equals("tv.ouya.controller.removed")) {
                  int var3 = var2.getIntExtra("DEVICE_ID", -1);

                  for(int var4 = 0; var4 < 4; ++var4) {
                     OuyaController var5 = OuyaController.s_controllers[var4];
                     if (var5 != null && var5.getDeviceId() == var3) {
                        OuyaController.s_controllers[var4] = null;
                        return;
                     }
                  }
               }

            }
         };
         IntentFilter var3 = new IntentFilter();
         var3.addAction("tv.ouya.controller.added");
         var3.addAction("tv.ouya.controller.removed");
         appContext.registerReceiver(var2, var3);
      }
   }

   public static boolean onGenericMotionEvent(MotionEvent var0) {
      if ((16 & var0.getSource()) != 0 && var0.getAction() == 2) {
         OuyaController var1 = getOrCreateControllerByDeviceId(var0.getDeviceId());
         if (var1 != null) {
            int[] var2 = AVAILABLE_AXES;
            int var3 = var2.length;

            for(int var4 = 0; var4 < var3; ++var4) {
               int var5 = var2[var4];
               Float var6 = (Float)var1.axisValues.get(var5);
               float var7 = var0.getAxisValue(var5);
               if (var6 == null || var6 != var7) {
                  var1.axisValues.put(var5, var7);
               }
            }

            return true;
         }
      }

      return false;
   }

   public static boolean onKeyDown(int var0, KeyEvent var1) {
      return onKeyEvent(var0, var1);
   }

   private static boolean onKeyEvent(int var0, KeyEvent var1) {
      OuyaController var2 = getOrCreateControllerByDeviceId(var1.getDeviceId());
      if (var2 == null) {
         return false;
      } else {
         int var3 = var1.getAction();
         boolean var4 = false;
         switch(var3) {
         case 0:
         case 2:
            var4 = true;
            break;
         case 1:
            var4 = false;
         }

         int var5 = var1.getKeyCode();
         if (var2.buttonValues.indexOfKey(var5) < 0 || var2.buttonValues.get(var5) != var4) {
            byte var6;
            if (var4) {
               var6 = 1;
            } else {
               var6 = 2;
            }

            int var7 = var6 | var2.thisFrameButtonValues.get(var5, 0);
            var2.thisFrameButtonValues.put(var5, var7);
         }

         var2.buttonValues.put(var5, var4);
         return true;
      }
   }

   public static boolean onKeyUp(int var0, KeyEvent var1) {
      return onKeyEvent(var0, var1);
   }

   public static void setCursorBitmap(Bitmap var0, float var1, float var2) {
      Intent var3 = new Intent("tv.ouya.controller.action.SET_CURSOR_BITMAP");
      if (var0 != null) {
         var3.putExtra("CURSOR_BITMAP", var0);
         var3.putExtra("HOTSPOT_X", var1);
         var3.putExtra("HOTSPOT_Y", var2);
      }

      appContext.sendBroadcast(var3);
   }

   public static void showCursor(boolean var0) {
      String var1;
      if (var0) {
         var1 = "tv.ouya.controller.action.SHOW_CURSOR";
      } else {
         var1 = "tv.ouya.controller.action.HIDE_CURSOR";
      }

      Intent var2 = new Intent(var1);
      appContext.sendBroadcast(var2);
   }

   public static void startOfFrame() {
      OuyaController[] var0 = s_controllers;
      int var1 = var0.length;

      for(int var2 = 0; var2 < var1; ++var2) {
         OuyaController var3 = var0[var2];
         if (var3 != null) {
            var3.startOfFrameInternal();
         }
      }

   }

   private void startOfFrameInternal() {
      if (this.thisFrameButtonValues.size() > 0) {
         this.thisFrameButtonValues.clear();
      }

   }

   public boolean buttonChangedThisFrame(int var1) {
      return this.thisFrameButtonValues.indexOfKey(var1) >= 0;
   }

   public boolean buttonPressedThisFrame(int var1) {
      return this.buttonChangedThisFrame(var1) && (1 & this.thisFrameButtonValues.get(var1)) != 0;
   }

   public boolean buttonReleasedThisFrame(int var1) {
      return this.buttonChangedThisFrame(var1) && (2 & this.thisFrameButtonValues.get(var1)) != 0;
   }

   public float getAxisValue(int var1) {
      return this.axisValues.indexOfKey(var1) >= 0 ? (Float)this.axisValues.get(var1) : 0.0F;
   }

   public boolean getButton(int var1) {
      return this.buttonValues.indexOfKey(var1) >= 0 ? this.buttonValues.get(var1) : false;
   }

   public InputDevice getDevice() {
      return this.device;
   }

   public int getDeviceId() {
      return this.deviceId;
   }

   public String getDeviceName() {
      return this.deviceName;
   }

   public int getPlayerNum() {
      for(int var1 = 0; var1 < 4; ++var1) {
         if (s_controllers[var1] == this) {
            return var1;
         }
      }

      return -1;
   }

   public static class ButtonData {
      public Drawable buttonDrawable;
      public String buttonName;

      ButtonData(Drawable var1, String var2) {
         this.buttonDrawable = var1;
         this.buttonName = var2;
      }
   }
}
