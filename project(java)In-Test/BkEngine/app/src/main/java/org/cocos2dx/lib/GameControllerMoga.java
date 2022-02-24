package org.cocos2dx.lib;

import android.content.Context;
import android.os.Handler;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
/*import com.bda.controller.Controller;
import com.bda.controller.ControllerListener;
import com.bda.controller.StateEvent;*/

public class GameControllerMoga
{
    
}
/*implements ControllerListener, GameControllerDelegate {
   private static final String mVendorName = "Moga";
 //  private Controller mController = null;
   private GameControllerDelegate.ControllerEventListener mControllerEventListener;
   private SparseIntArray mKeyMap = null;
   private float mOldLeftThumbstickX = 0.0F;
   private float mOldLeftThumbstickY = 0.0F;
   private float mOldLeftTrigger = 0.0F;
   private float mOldRightThumbstickX = 0.0F;
   private float mOldRightThumbstickY = 0.0F;
   private float mOldRightTrigger = 0.0F;

   public GameControllerMoga() {
      this.mKeyMap = new SparseIntArray(20);
      this.mKeyMap.put(96, 436);
      this.mKeyMap.put(97, 437);
      this.mKeyMap.put(99, 439);
      this.mKeyMap.put(100, 440);
      this.mKeyMap.put(102, 447);
      this.mKeyMap.put(103, 448);
      this.mKeyMap.put(104, 449);
      this.mKeyMap.put(105, 450);
      this.mKeyMap.put(19, 442);
      this.mKeyMap.put(20, 443);
      this.mKeyMap.put(21, 444);
      this.mKeyMap.put(22, 445);
      this.mKeyMap.put(108, 453);
      this.mKeyMap.put(109, 454);
      this.mKeyMap.put(108, 453);
      this.mKeyMap.put(106, 451);
      this.mKeyMap.put(107, 452);
   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      return false;
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      return false;
   }

   public void onCreate(Context var1) {
      this.mController = Controller.getInstance(var1);
      this.mController.init();
      this.mController.setListener(this, new Handler());
   }

   public void onDestroy() {
      this.mController.exit();
   }

   public void onKeyEvent(com.bda.controller.KeyEvent var1) {
      int var2 = var1.getKeyCode();
      if (var2 != 104 && var2 != 105) {
         boolean var3;
         if (var1.getAction() == 0) {
            var3 = true;
         } else {
            var3 = false;
         }

         boolean var4;
         label27: {
            if (var2 != 106) {
               var4 = false;
               if (var2 != 107) {
                  break label27;
               }
            }

            var4 = true;
         }

         if (this.mKeyMap.get(var2, Integer.MIN_VALUE) != Integer.MIN_VALUE && this.mControllerEventListener != null) {
            GameControllerDelegate.ControllerEventListener var5 = this.mControllerEventListener;
            int var6 = var1.getControllerId();
            int var7 = this.mKeyMap.get(var2);
            float var8;
            if (var3) {
               var8 = 1.0F;
            } else {
               var8 = 0.0F;
            }

            var5.onButtonEvent("Moga", var6, var7, var3, var8, var4);
            return;
         }
      }

   }

   public void onMotionEvent(com.bda.controller.MotionEvent var1) {
      if (this.mControllerEventListener != null) {
         int var2 = var1.getControllerId();
         float var3 = var1.getAxisValue(0);
         if (var3 != this.mOldLeftThumbstickX) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 432, var3, true);
            this.mOldLeftThumbstickX = var3;
         }

         float var4 = var1.getAxisValue(1);
         if (var4 != this.mOldLeftThumbstickY) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 433, var4, true);
            this.mOldLeftThumbstickY = var4;
         }

         float var5 = var1.getAxisValue(11);
         if (var5 != this.mOldRightThumbstickX) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 434, var5, true);
            this.mOldRightThumbstickX = var5;
         }

         float var6 = var1.getAxisValue(14);
         if (var6 != this.mOldRightThumbstickY) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 435, var6, true);
            this.mOldRightThumbstickY = var6;
         }

         float var7 = var1.getAxisValue(17);
         if (var7 != this.mOldLeftTrigger) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 449, var7, true);
            this.mOldLeftTrigger = var7;
         }

         float var8 = var1.getAxisValue(18);
         if (var8 != this.mOldRightTrigger) {
            this.mControllerEventListener.onAxisEvent("Moga", var2, 450, var8, true);
            this.mOldRightTrigger = var8;
            return;
         }
      }

   }

   public void onPause() {
      this.mController.onPause();
   }

   public void onResume() {
      this.mController.onResume();
   }

   public void onStateEvent(StateEvent var1) {
      if (this.mControllerEventListener != null) {
         switch(var1.getState()) {
         case 1:
            switch(var1.getAction()) {
            case 0:
               this.mControllerEventListener.onDisconnected("Moga", var1.getControllerId());
               return;
            case 1:
               this.mControllerEventListener.onConnected("Moga", var1.getControllerId());
               return;
            default:
               return;
            }
         case 2:
            if (var1.getAction() == 1) {
               return;
            }
         }
      }

   }

   public void setControllerEventListener(GameControllerDelegate.ControllerEventListener var1) {
      this.mControllerEventListener = var1;
   }
}*/
