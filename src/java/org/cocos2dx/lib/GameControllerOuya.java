package org.cocos2dx.lib;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import tv.ouya.console.api.OuyaController;

public class GameControllerOuya implements GameControllerDelegate {
   private GameControllerDelegate.ControllerEventListener mControllerEventListener;
   private SparseArray mGameController = new SparseArray();
   private SparseIntArray mKeyMap = new SparseIntArray(20);
   private float mOldLeftThumbstickX = 0.0F;
   private float mOldLeftThumbstickY = 0.0F;
   private float mOldLeftTrigger = 0.0F;
   private float mOldRightThumbstickX = 0.0F;
   private float mOldRightThumbstickY = 0.0F;
   private float mOldRightTrigger = 0.0F;

   public GameControllerOuya() {
      this.mKeyMap.put(97, 437);
      this.mKeyMap.put(96, 436);
      this.mKeyMap.put(99, 439);
      this.mKeyMap.put(100, 440);
      this.mKeyMap.put(20, 443);
      this.mKeyMap.put(21, 444);
      this.mKeyMap.put(22, 445);
      this.mKeyMap.put(19, 442);
      this.mKeyMap.put(102, 447);
      this.mKeyMap.put(103, 448);
      this.mKeyMap.put(106, 451);
      this.mKeyMap.put(107, 452);
   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      boolean var2 = OuyaController.onGenericMotionEvent(var1);
      if (var2 && this.mControllerEventListener != null) {
         int var3 = var1.getDeviceId();
         String var4 = var1.getDevice().getName();
         OuyaController var5 = OuyaController.getControllerByDeviceId(var3);
         if (this.mGameController.get(var3) == null) {
            GameControllerHelper.gatherControllers(this.mGameController);
            this.mGameController.append(var3, var4);
         }

         float var6 = var5.getAxisValue(17);
         if (Float.compare(var6, this.mOldLeftTrigger) != 0) {
            this.mControllerEventListener.onAxisEvent(var4, var3, 449, var6, true);
            this.mOldLeftTrigger = var6;
         }

         float var7 = var5.getAxisValue(18);
         if (Float.compare(var7, this.mOldRightTrigger) != 0) {
            this.mControllerEventListener.onAxisEvent(var4, var3, 450, var7, true);
            this.mOldRightTrigger = var7;
         }

         float var8 = var5.getAxisValue(0);
         if (Float.compare(var8, this.mOldLeftThumbstickX) != 0) {
            if (Float.compare(var8, 0.0F) == 0) {
               this.mControllerEventListener.onAxisEvent(var4, var3, 432, 0.0F, true);
            } else {
               this.mControllerEventListener.onAxisEvent(var4, var3, 432, var8, true);
            }

            this.mOldLeftThumbstickX = var8;
         }

         float var9 = var5.getAxisValue(1);
         if (Float.compare(var9, this.mOldLeftThumbstickY) != 0) {
            if (Float.compare(var9, 0.0F) == 0) {
               this.mControllerEventListener.onAxisEvent(var4, var3, 433, 0.0F, true);
            } else {
               this.mControllerEventListener.onAxisEvent(var4, var3, 433, var9, true);
            }

            this.mOldLeftThumbstickY = var9;
         }

         float var10 = var5.getAxisValue(11);
         if (Float.compare(var10, this.mOldRightThumbstickX) != 0) {
            if (Float.compare(var10, 0.0F) == 0) {
               this.mControllerEventListener.onAxisEvent(var4, var3, 434, 0.0F, true);
            } else {
               this.mControllerEventListener.onAxisEvent(var4, var3, 434, var10, true);
            }

            this.mOldRightThumbstickX = var10;
         }

         float var11 = var5.getAxisValue(14);
         if (Float.compare(var11, this.mOldRightThumbstickY) != 0) {
            if (Float.compare(var11, 0.0F) == 0) {
               this.mControllerEventListener.onAxisEvent(var4, var3, 435, 0.0F, true);
            } else {
               this.mControllerEventListener.onAxisEvent(var4, var3, 435, var11, true);
            }

            this.mOldRightThumbstickY = var11;
         }
      }

      return var2;
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      int var2 = var1.getAction();
      int var3 = var1.getKeyCode();
      boolean var4;
      if (var2 == 0) {
         var4 = OuyaController.onKeyDown(var3, var1);
      } else {
         var4 = false;
         if (var2 == 1) {
            var4 = OuyaController.onKeyUp(var3, var1);
         }
      }

      if (var4 && this.mControllerEventListener != null) {
         boolean var5;
         label28: {
            if (var3 != 106) {
               var5 = false;
               if (var3 != 107) {
                  break label28;
               }
            }

            var5 = true;
         }

         int var6 = var1.getDeviceId();
         String var7 = var1.getDevice().getName();
         if (this.mGameController.get(var6) == null) {
            GameControllerHelper.gatherControllers(this.mGameController);
            this.mGameController.append(var6, var7);
         }

         if (var2 != 0) {
            this.mControllerEventListener.onButtonEvent(var7, var6, this.mKeyMap.get(var3), false, 0.0F, var5);
            return var4;
         }

         this.mControllerEventListener.onButtonEvent(var7, var6, this.mKeyMap.get(var3), true, 1.0F, var5);
      }

      return var4;
   }

   public void onCreate(Context var1) {
      OuyaController.init(var1);
   }

   public void onDestroy() {
   }

   public void onPause() {
      OuyaController.showCursor(true);
   }

   public void onResume() {
      OuyaController.showCursor(false);
   }

   public void setControllerEventListener(GameControllerDelegate.ControllerEventListener var1) {
      this.mControllerEventListener = var1;
   }
}
