package org.cocos2dx.lib;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import org.cocos2dx.lib.inputmanagercompat.InputManagerCompat;

public abstract class GameControllerActivity extends Cocos2dxActivity implements InputManagerCompat.InputDeviceListener {
   public static final int DRIVERTYPE_MOGA = 1;
   public static final int DRIVERTYPE_NIBIRU = 0;
   public static final int DRIVERTYPE_OUYA = 2;
   public static final int DRIVERTYPE_STANDARD = 3;
   public static final int DRIVERTYPE_UNKNOWN = 4;
   private static final String TAG = GameControllerActivity.class.getSimpleName();
   private static GameControllerActivity sGameControllerActivity;
   GameControllerDelegate.ControllerEventListener mControllerEventListener = new GameControllerDelegate.ControllerEventListener() {
      public void onAxisEvent(String var1, int var2, int var3, float var4, boolean var5) {
         GameControllerAdapter.onAxisEvent(var1, var2, var3, var4, var5);
      }

      public void onButtonEvent(String var1, int var2, int var3, boolean var4, float var5, boolean var6) {
         GameControllerAdapter.onButtonEvent(var1, var2, var3, var4, var5, var6);
      }

      public void onConnected(String var1, int var2) {
         GameControllerAdapter.onConnected(var1, var2);
      }

      public void onDisconnected(String var1, int var2) {
         GameControllerAdapter.onDisconnected(var1, var2);
      }
   };
   protected GameControllerHelper mControllerHelper = null;
   protected GameControllerDelegate mControllerMoga = null;
   protected GameControllerDelegate mControllerNibiru = null;
   protected GameControllerDelegate mControllerOuya = null;
   private InputManagerCompat mInputManager = null;

   public void connectController(int var1) {
      Exception var10000;
      label86: {
         ClassLoader var3;
         boolean var10001;
         try {
            var3 = sGameControllerActivity.getClassLoader();
         } catch (Exception var13) {
            var10000 = var13;
            var10001 = false;
            break label86;
         }

         Class var4;
         if (var1 == 1) {
            try {
               if (this.mControllerMoga != null) {
                  return;
               }
            } catch (Exception var14) {
               var10000 = var14;
               var10001 = false;
               break label86;
            }

            try {
               var4 = var3.loadClass("org.cocos2dx.lib.GameControllerMoga");
            } catch (Exception var12) {
               var10000 = var12;
               var10001 = false;
               break label86;
            }
         } else if (var1 != 0) {
            var4 = null;
            if (var1 == 2) {
               Class var7;
               try {
                  if (this.mControllerOuya != null) {
                     return;
                  }

                  var7 = var3.loadClass("org.cocos2dx.lib.GameControllerOuya");
               } catch (Exception var10) {
                  var10000 = var10;
                  var10001 = false;
                  break label86;
               }

               var4 = var7;
            }
         } else {
            try {
               if (this.mControllerNibiru != null) {
                  this.mControllerNibiru.onCreate(sGameControllerActivity);
                  this.mControllerNibiru.onResume();
                  return;
               }
            } catch (Exception var15) {
               var10000 = var15;
               var10001 = false;
               break label86;
            }

            try {
               var4 = var3.loadClass("org.cocos2dx.lib.GameControllerNibiru");
            } catch (Exception var11) {
               var10000 = var11;
               var10001 = false;
               break label86;
            }
         }

         GameControllerDelegate var5;
         try {
            var5 = (GameControllerDelegate)var4.newInstance();
            sGameControllerActivity.setGameControllerInstance(var5, var1);
         } catch (Exception var9) {
            var10000 = var9;
            var10001 = false;
            break label86;
         }

         if (var1 != 0) {
            return;
         }

         try {
            var4.getDeclaredMethod("onResume", new Class[0]).invoke(var5, new Object[0]);
            return;
         } catch (Exception var8) {
            var10000 = var8;
            var10001 = false;
         }
      }

      Exception var2 = var10000;
      var2.printStackTrace();
   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      GameControllerDelegate var2 = this.mControllerNibiru;
      boolean var3 = false;
      if (var2 != null) {
         var3 = false | this.mControllerNibiru.dispatchGenericMotionEvent(var1);
      }

      if (!var3 && this.mControllerMoga != null) {
         var3 |= this.mControllerMoga.dispatchGenericMotionEvent(var1);
      }

      if (!var3 && this.mControllerOuya != null) {
         var3 |= this.mControllerOuya.dispatchGenericMotionEvent(var1);
      }

      if (!var3) {
         var3 |= this.mControllerHelper.dispatchGenericMotionEvent(var1);
      }

      return var3 || super.dispatchGenericMotionEvent(var1);
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      GameControllerDelegate var2 = this.mControllerNibiru;
      boolean var3 = false;
      if (var2 != null) {
         var3 = false | this.mControllerNibiru.dispatchKeyEvent(var1);
      }

      if (!var3 && this.mControllerMoga != null) {
         var3 |= this.mControllerMoga.dispatchKeyEvent(var1);
      }

      if (!var3 && this.mControllerOuya != null) {
         var3 |= this.mControllerOuya.dispatchKeyEvent(var1);
      }

      if (!var3) {
         var3 |= this.mControllerHelper.dispatchKeyEvent(var1);
      }

      return var3 || super.dispatchKeyEvent(var1);
   }

   public GameControllerDelegate getGameControllerDelegate(int var1) {
      if (var1 == 0) {
         return this.mControllerNibiru;
      } else if (var1 == 1) {
         return this.mControllerMoga;
      } else {
         return var1 == 2 ? this.mControllerOuya : null;
      }
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      sGameControllerActivity = this;
      this.mInputManager = InputManagerCompat.Factory.getInputManager(this);
      this.mInputManager.registerInputDeviceListener(this, (Handler)null);
      if (this.mControllerNibiru != null) {
         this.mControllerNibiru.onCreate(this);
      }

      if (this.mControllerMoga != null) {
         this.mControllerMoga.onCreate(this);
      }

      if (this.mControllerOuya != null) {
         this.mControllerOuya.onCreate(this);
      }

      if (this.mControllerHelper == null) {
         this.mControllerHelper = new GameControllerHelper(this);
      }

   }

   protected void onDestroy() {
      if (this.mControllerNibiru != null) {
         this.mControllerNibiru.onDestroy();
      }

      if (this.mControllerMoga != null) {
         this.mControllerMoga.onDestroy();
      }

      if (this.mControllerOuya != null) {
         this.mControllerOuya.onDestroy();
      }

      super.onDestroy();
   }

   public void onInputDeviceAdded(int var1) {
      Log.d(TAG, "onInputDeviceAdded:" + var1);
      this.mControllerHelper.onInputDeviceAdded(var1);
   }

   public void onInputDeviceChanged(int var1) {
      Log.w(TAG, "onInputDeviceChanged:" + var1);
   }

   public void onInputDeviceRemoved(int var1) {
      Log.d(TAG, "onInputDeviceRemoved:" + var1);
      this.mControllerHelper.onInputDeviceRemoved(var1);
   }

   protected void onPause() {
      if (this.mControllerNibiru != null) {
         this.mControllerNibiru.onPause();
      }

      if (this.mControllerMoga != null) {
         this.mControllerMoga.onPause();
      }

      if (this.mControllerOuya != null) {
         this.mControllerOuya.onPause();
      }

      super.onPause();
   }

   protected void onResume() {
      super.onResume();
      if (this.mControllerNibiru != null) {
         this.mControllerNibiru.onResume();
      }

      if (this.mControllerMoga != null) {
         this.mControllerMoga.onResume();
      }

      if (this.mControllerOuya != null) {
         this.mControllerOuya.onResume();
      }

      GameControllerHelper.gatherControllers(this.mControllerHelper.mGameController);
   }

   public void setGameControllerInstance(GameControllerDelegate var1, int var2) {
      if (var2 == 0) {
         this.mControllerNibiru = var1;
      } else if (var2 == 1) {
         this.mControllerMoga = var1;
      } else if (var2 == 2) {
         this.mControllerOuya = var1;
      }

      var1.setControllerEventListener(this.mControllerEventListener);
      var1.onCreate(sGameControllerActivity);
   }
}
