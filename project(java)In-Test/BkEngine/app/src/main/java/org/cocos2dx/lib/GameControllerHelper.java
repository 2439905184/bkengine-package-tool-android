package org.cocos2dx.lib;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.ArrayList;

public class GameControllerHelper {
   private static final int AXIS_BRAKE = 23;
   public static final int AXIS_GAS = 22;
   private static final int AXIS_LTRIGGER = 17;
   private static final int AXIS_RTRIGGER = 18;
   private static final int AXIS_RZ = 14;
   private static final int AXIS_THROTTLE = 19;
   private static final int AXIS_X = 0;
   private static final int AXIS_Y = 1;
   private static final int AXIS_Z = 11;
   public static final String StandardControllerName = "Standard";
   private static SparseArray mControllerExtendKey = new SparseArray();
   SparseIntArray ControllerKeyMap = new SparseIntArray(25);
   SparseArray mGameController = new SparseArray();
   private float mOldBrake = 0.0F;
   private float mOldGas = 0.0F;
   private float mOldLeftThumbstickX = 0.0F;
   private float mOldLeftThumbstickY = 0.0F;
   private float mOldLeftTrigger = 0.0F;
   private float mOldRightThumbstickX = 0.0F;
   private float mOldRightThumbstickY = 0.0F;
   private float mOldRightTrigger = 0.0F;
   private float mOldThrottle = 0.0F;

   public GameControllerHelper(GameControllerActivity var1) {
      this.ControllerKeyMap.put(96, 436);
      this.ControllerKeyMap.put(97, 437);
      this.ControllerKeyMap.put(98, 438);
      this.ControllerKeyMap.put(99, 439);
      this.ControllerKeyMap.put(100, 440);
      this.ControllerKeyMap.put(101, 441);
      this.ControllerKeyMap.put(19, 442);
      this.ControllerKeyMap.put(20, 443);
      this.ControllerKeyMap.put(21, 444);
      this.ControllerKeyMap.put(22, 445);
      this.ControllerKeyMap.put(23, 446);
      this.ControllerKeyMap.put(106, 451);
      this.ControllerKeyMap.put(107, 452);
      this.ControllerKeyMap.put(102, 447);
      this.ControllerKeyMap.put(103, 448);
      this.ControllerKeyMap.put(104, 449);
      this.ControllerKeyMap.put(105, 450);
      this.ControllerKeyMap.put(0, 432);
      this.ControllerKeyMap.put(1, 433);
      this.ControllerKeyMap.put(11, 434);
      this.ControllerKeyMap.put(14, 435);
      this.ControllerKeyMap.put(108, 453);
      this.ControllerKeyMap.put(109, 454);
   }

   static void gatherControllers(SparseArray var0) {
      int var1 = var0.size();

      for(int var2 = 0; var2 < var1; ++var2) {
         try {
            int var5 = var0.keyAt(var2);
            if (InputDevice.getDevice(var5) == null) {
               GameControllerAdapter.onDisconnected((String)var0.get(var5), var5);
               var0.delete(var5);
            }
         } catch (Exception var6) {
            int var4 = var0.keyAt(var2);
            GameControllerAdapter.onDisconnected((String)var0.get(var4), var4);
            var0.delete(var4);
            var6.printStackTrace();
         }
      }

   }

   public static void receiveExternalKeyEvent(int var0, int var1, boolean var2) {
      if (var2) {
         if (mControllerExtendKey.get(var0) == null) {
            mControllerExtendKey.put(var0, new ArrayList());
         }

         ((ArrayList)mControllerExtendKey.get(var0)).add(var1);
      } else if (mControllerExtendKey.get(var0) != null) {
         ((ArrayList)mControllerExtendKey.get(var0)).remove(var1);
         return;
      }

   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      int var2 = var1.getSource();
      boolean var4;
      if ((var2 & 1025) != 1025) {
         int var17 = 16777232 & var2;
         var4 = false;
         if (var17 != 16777232) {
            return var4;
         }
      }

      int var3 = var1.getAction();
      var4 = false;
      if (var3 == 2) {
         int var5 = var1.getDeviceId();
         String var6 = var1.getDevice().getName();
         if (this.mGameController.get(var5) == null) {
            gatherControllers(this.mGameController);
            this.mGameController.append(var5, var6);
         }

         float var7 = var1.getAxisValue(0);
         int var8 = Float.compare(var7, this.mOldLeftThumbstickX);
         var4 = false;
         if (var8 != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 432, var7, true);
            this.mOldLeftThumbstickX = var7;
            var4 = true;
         }

         float var9 = var1.getAxisValue(1);
         if (Float.compare(var9, this.mOldLeftThumbstickY) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 433, var9, true);
            this.mOldLeftThumbstickY = var9;
            var4 = true;
         }

         float var10 = var1.getAxisValue(11);
         if (Float.compare(var10, this.mOldRightThumbstickX) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 434, var10, true);
            this.mOldRightThumbstickX = var10;
            var4 = true;
         }

         float var11 = var1.getAxisValue(14);
         if (Float.compare(var11, this.mOldRightThumbstickY) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 435, var11, true);
            this.mOldRightThumbstickY = var11;
            var4 = true;
         }

         float var12 = var1.getAxisValue(17);
         if (Float.compare(var12, this.mOldLeftTrigger) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 449, var12, true);
            this.mOldLeftTrigger = var12;
            var4 = true;
         }

         float var13 = var1.getAxisValue(18);
         if (Float.compare(var13, this.mOldRightTrigger) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 450, var13, true);
            this.mOldRightTrigger = var13;
            var4 = true;
         }

         float var14 = var1.getAxisValue(23);
         if (Float.compare(var14, this.mOldBrake) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 449, var14, true);
            this.mOldBrake = var14;
            var4 = true;
         }

         float var15 = var1.getAxisValue(19);
         if (Float.compare(var15, this.mOldThrottle) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 450, var15, true);
            this.mOldThrottle = var15;
            var4 = true;
         }

         float var16 = var1.getAxisValue(22);
         if (Float.compare(var16, this.mOldGas) != 0) {
            GameControllerAdapter.onAxisEvent(var6, var5, 450, var16, true);
            this.mOldGas = var16;
            var4 = true;
         }
      }

      return var4;
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      boolean var8;
      boolean var9;
      label35: {
         int var2 = var1.getSource();
         int var3 = var1.getKeyCode();
         int var4 = this.ControllerKeyMap.get(var3);
         if ((var2 & 1025) != 1025) {
            int var12 = var2 & 16777232;
            var8 = false;
            if (var12 != 16777232) {
               break label35;
            }
         }

         int var5 = var1.getDeviceId();
         String var6 = var1.getDevice().getName();
         if (this.mGameController.get(var5) == null) {
            gatherControllers(this.mGameController);
            this.mGameController.append(var5, var6);
         }

         if (var4 == 0) {
            Object var10 = mControllerExtendKey.get(var5);
            var9 = false;
            if (var10 == null) {
               return var9;
            }

            boolean var11 = ((ArrayList)mControllerExtendKey.get(var5)).contains(var3);
            var9 = false;
            if (!var11) {
               return var9;
            }

            var4 = var3;
         }

         int var7 = var1.getAction();
         if (var7 == 0) {
            var8 = true;
            GameControllerAdapter.onButtonEvent(var6, var5, var4, true, 1.0F, false);
         } else {
            var8 = false;
            if (var7 == 1) {
               var8 = true;
               GameControllerAdapter.onButtonEvent(var6, var5, var4, false, 0.0F, false);
            }
         }
      }

      var9 = var8;
      return var9;
   }

   void onInputDeviceAdded(int param1) {
      // $FF: Couldn't be decompiled
   }

   void onInputDeviceChanged(int var1) {
      gatherControllers(this.mGameController);
   }

   void onInputDeviceRemoved(int var1) {
      if (this.mGameController.get(var1) != null) {
         GameControllerAdapter.onDisconnected((String)this.mGameController.get(var1), var1);
         this.mGameController.delete(var1);
      }

   }
}
