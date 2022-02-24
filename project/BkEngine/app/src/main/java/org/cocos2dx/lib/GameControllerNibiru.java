package org.cocos2dx.lib;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
/*import com.nibiru.lib.controller.AccEvent;
import com.nibiru.lib.controller.Controller;
import com.nibiru.lib.controller.ControllerDevice;
import com.nibiru.lib.controller.ControllerKeyEvent;
import com.nibiru.lib.controller.ControllerService;
import com.nibiru.lib.controller.ControllerServiceException;
import com.nibiru.lib.controller.GyroEvent;
import com.nibiru.lib.controller.OnAccListener;
import com.nibiru.lib.controller.OnGyroListener;
import com.nibiru.lib.controller.OnKeyListener;
import com.nibiru.lib.controller.OnSimpleStickListener;
import com.nibiru.lib.controller.OnStateListener;*/

public class GameControllerNibiru
{}
/*implements ControllerService.OnControllerSeviceListener, OnAccListener, OnGyroListener, OnKeyListener, OnSimpleStickListener, OnStateListener, GameControllerDelegate {
   private static final String TAG = "NibiruTag";
   private Context mContext;
   private GameControllerDelegate.ControllerEventListener mControllerEventListener = null;
   private ControllerService mControllerService = null;
   private SparseIntArray mKeyMap = new SparseIntArray(20);

   public GameControllerNibiru() {
      this.mKeyMap.put(99, 436);
      this.mKeyMap.put(97, 437);
      this.mKeyMap.put(98, 439);
      this.mKeyMap.put(96, 440);
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
      this.mKeyMap.put(106, 451);
      this.mKeyMap.put(107, 452);
   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      return this.mControllerService.handleExternalInput(var1);
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      return this.mControllerService.handleExternalInput(var1);
   }

   public void onBluetoothStateChanged(int var1) {
      Log.d("NibiruTag", "onBluetoothStateChanged:" + var1);
   }

   public void onControllerAccEvent(int var1, AccEvent var2) {
   }

   public void onControllerGyroEvent(int var1, GyroEvent var2) {
   }

   public void onControllerKeyDown(int var1, int var2, ControllerKeyEvent var3) {
      if (this.mKeyMap.get(var2) == 0) {
         Log.e("NibiruTag", "Didn't map the key: " + var2);
      } else if (this.mControllerEventListener != null) {
         try {
            ControllerDevice var5 = this.mControllerService.getDeviceByPlayerOrder(var1);
            this.mControllerEventListener.onButtonEvent(var5.getDeviceName(), var5.getDeviceId(), this.mKeyMap.get(var2), true, 1.0F, false);
            return;
         } catch (ControllerServiceException var6) {
            var6.printStackTrace();
            return;
         }
      }

   }

   public void onControllerKeyUp(int var1, int var2, ControllerKeyEvent var3) {
      if (this.mKeyMap.get(var2) == 0) {
         Log.e("NibiruTag", "Didn't map the key: " + var2);
      } else if (this.mControllerEventListener != null) {
         try {
            ControllerDevice var5 = this.mControllerService.getDeviceByPlayerOrder(var1);
            this.mControllerEventListener.onButtonEvent(var5.getDeviceName(), var5.getDeviceId(), this.mKeyMap.get(var2), false, 0.0F, false);
            return;
         } catch (ControllerServiceException var6) {
            var6.printStackTrace();
            return;
         }
      }

   }

   public void onControllerServiceReady(boolean var1) {
      if (var1 && !this.mControllerService.hasDeviceConnected()) {
         Bundle var2 = new Bundle();
         var2.putBoolean("isShowTip", false);

         try {
            this.mControllerService.showDeviceManagerUI(this.mContext, var2);
         } catch (ControllerServiceException var4) {
            var4.printStackTrace();
            return;
         }
      }

   }

   public void onControllerStateChanged(int var1, int var2, ControllerDevice var3) {
      if (this.mControllerEventListener != null) {
         if (var2 == 1) {
            this.mControllerEventListener.onConnected(var3.getDeviceName(), var3.getDeviceId());
         } else if (var2 == 3) {
            this.mControllerEventListener.onDisconnected(var3.getDeviceName(), var3.getDeviceId());
            return;
         }
      }

   }

   public void onCreate(Context var1) {
      this.mContext = var1;
      this.mControllerService = Controller.getControllerService();
      if (this.mControllerService != null) {
         this.mControllerService.setControllerServiceListener(this);
         this.mControllerService.setStateListener(this);
         this.mControllerService.setKeyListener(this);
         this.mControllerService.setSimpleStickListener(this);
         this.mControllerService.setEnableLR2(true);
         this.mControllerService.setAutoKeyUpMode(false);
         this.mControllerService.checkNibiruInstall(this.mContext, false);
      }

   }

   public void onDestroy() {
      if (this.mControllerService != null) {
         this.mControllerService.unregister();
      }

   }

   public void onLeftStickChanged(int var1, float var2, float var3) {
      if (this.mControllerEventListener != null) {
         try {
            ControllerDevice var5 = this.mControllerService.getDeviceByPlayerOrder(var1);
            String var6 = var5.getDeviceName();
            int var7 = var5.getDeviceId();
            this.mControllerEventListener.onAxisEvent(var6, var7, 432, var2, true);
            this.mControllerEventListener.onAxisEvent(var6, var7, 433, var3, true);
         } catch (ControllerServiceException var8) {
            var8.printStackTrace();
            return;
         }
      }

   }

   public void onPause() {
      if (this.mControllerService != null) {
         this.mControllerService.setEnable(false);
      }

   }

   public void onResume() {
      if (this.mControllerService != null) {
         if (!this.mControllerService.isServiceEnable() && this.mControllerService.checkNibiruInstall(this.mContext, false)) {
            try {
               this.mControllerService.register(this.mContext);
            } catch (ControllerServiceException var2) {
               var2.printStackTrace();
            }
         }

         this.mControllerService.setEnable(true);
      }

   }

   public void onRightStickChanged(int var1, float var2, float var3) {
      if (this.mControllerEventListener != null) {
         try {
            ControllerDevice var5 = this.mControllerService.getDeviceByPlayerOrder(var1);
            String var6 = var5.getDeviceName();
            int var7 = var5.getDeviceId();
            this.mControllerEventListener.onAxisEvent(var6, var7, 434, var2, true);
            this.mControllerEventListener.onAxisEvent(var6, var7, 435, var3, true);
         } catch (ControllerServiceException var8) {
            var8.printStackTrace();
            return;
         }
      }

   }

   public void setControllerEventListener(GameControllerDelegate.ControllerEventListener var1) {
      this.mControllerEventListener = var1;
   }
}*/
