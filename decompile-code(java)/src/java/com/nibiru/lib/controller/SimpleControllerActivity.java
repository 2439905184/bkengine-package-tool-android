package com.nibiru.lib.controller;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;

public class SimpleControllerActivity extends Activity implements CombKeyService.OnCombKeyListener, ControllerService.OnControllerSeviceListener, OnAccListener, OnGyroListener, OnKeyListener, OnMotionSenseListener, OnSimpleStickListener, OnStateListener, OnStickListener {
   private boolean aY = true;
   private boolean aZ = false;
   protected int mArrowId = -1;
   protected CombKeyService mCombKeyService;
   protected ContinuesKeyService mContinuesKeyService;
   protected ControllerService mControllerService;
   protected CursorService mCursorService;
   protected DpadService mDpadService;
   protected int mMouseStartKey = 108;
   protected StickSimService mStickSimService;

   private void c(boolean var1) {
      if (this.mStickSimService != null) {
         if (var1) {
            this.mStickSimService.startStickSim(this.mStickSimService.getStickSimConfig());
         } else {
            this.mStickSimService.stopStickSim();
         }
      }
   }

   public void disableStickSim() {
      this.c(false);
   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      return this.mControllerService != null && this.mControllerService.handleExternalInput(var1) ? true : super.dispatchGenericMotionEvent(var1);
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      return this.mControllerService != null && this.mControllerService.handleExternalInput(var1) ? true : super.dispatchKeyEvent(var1);
   }

   public void enableStickSimDir4() {
      if (this.mStickSimService != null) {
         this.mStickSimService.setMode(0);
      }

      this.c(true);
   }

   public void enableStickSimDir8() {
      if (this.mStickSimService != null) {
         this.mStickSimService.setMode(1);
      }

      this.c(true);
   }

   public CombKeyService getCombKeyService() {
      return this.mCombKeyService;
   }

   public ContinuesKeyService getContinuesKeyService() {
      return this.mContinuesKeyService;
   }

   public ControllerService getControllerService() {
      return this.mControllerService;
   }

   public CursorService getCursorSerivce() {
      return this.mCursorService;
   }

   public DpadService getDpadService() {
      return this.mDpadService;
   }

   public StickSimService getStickSimService() {
      return this.mStickSimService;
   }

   public boolean hasDeviceConnected() throws ControllerServiceException {
      if (this.mControllerService != null && this.mControllerService.isServiceEnable()) {
         return this.mControllerService.hasDeviceConnected();
      } else {
         throw new ControllerServiceException("Controller Service is not connected to driver, please install your driver first and wait for connection build");
      }
   }

   protected void initNibiruService() {
      try {
         this.mControllerService.register(this);
      } catch (ControllerServiceException var2) {
         var2.printStackTrace();
      }
   }

   public boolean isControllerServiceEnable() {
      return this.aZ;
   }

   public void onBluetoothStateChanged(int var1) {
   }

   public void onCombKeyEventOver(String var1, int var2, CombKeyService.CombKey var3) {
   }

   public void onCombKeyEventStart(String var1, int var2, CombKeyService.CombKey var3) {
   }

   public void onControllerAccEvent(int var1, AccEvent var2) {
   }

   public void onControllerGyroEvent(int var1, GyroEvent var2) {
   }

   public void onControllerKeyDown(int var1, int var2, ControllerKeyEvent var3) {
      if (this.mMouseStartKey > 0 && var2 == this.mMouseStartKey && this.mCursorService != null) {
         if (this.mCursorService.isCursorShow()) {
            this.mCursorService.hideCursor();
         } else if (this.mArrowId >= 0) {
            this.mCursorService.createCursor(this.mArrowId);
            return;
         }
      }

   }

   public void onControllerKeyUp(int var1, int var2, ControllerKeyEvent var3) {
   }

   public void onControllerServiceReady(boolean var1) {
      this.aZ = var1;
      if (var1 && this.mControllerService != null && !this.mControllerService.hasDeviceConnected()) {
         Bundle var2 = new Bundle();
         var2.putBoolean("isShowTip", true);
         var2.putBoolean("isAutoClose", true);

         try {
            this.mControllerService.showDeviceManagerUI(this, var2);
         } catch (ControllerServiceException var4) {
            var4.printStackTrace();
            return;
         }
      }

   }

   public void onControllerStateChanged(int var1, int var2, ControllerDevice var3) {
   }

   public void onControllerStickEvent(int var1, StickEvent var2) {
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      this.mControllerService = Controller.getControllerService();
      this.mCombKeyService = this.mControllerService.getCombKeyService();
      this.mStickSimService = this.mControllerService.getStickSimService();
      this.mContinuesKeyService = this.mControllerService.getContinusKeyService();
      this.mCursorService = this.mControllerService.getCursorService();
      this.mDpadService = this.mControllerService.getDpadService();
      this.mControllerService.setKeyListener(this);
      this.mControllerService.setStickListener(this);
      this.mControllerService.setSimpleStickListener(this);
      this.mControllerService.setStateListener(this);
      this.mControllerService.setControllerServiceListener(this);
      this.mControllerService.setAccListener(this);
      this.mControllerService.setGyroListener(this);
      this.mControllerService.setMotionSenseListener(this);
      this.mCombKeyService.setCombKeyListener(this);
      this.mContinuesKeyService.registerContinuesDirectionKey();
      this.mControllerService.setAutoGameGuide(true);
      this.mControllerService.setEnableLR2(true);
      this.mCursorService.setEventMode(0);
      this.mCursorService.setSensitivity(20, 10);
      this.mCursorService.setEnableDisplayAtPrePos(true);
      this.mCursorService.setHideKey(108);
      this.mControllerService.setHandler(new Handler());
      if (this.mControllerService != null && this.mControllerService.checkNibiruInstall(this, true)) {
         this.initNibiruService();
      }

   }

   protected void onDestroy() {
      super.onDestroy();
      if (this.mControllerService != null) {
         this.mControllerService.unregister();
         this.mControllerService = null;
      }

   }

   public void onLeftStickChanged(int var1, float var2, float var3) {
   }

   public void onMotionSenseChanged(int var1, MotionSenseEvent var2) {
   }

   protected void onPause() {
      super.onPause();
      if (this.mControllerService != null) {
         this.mControllerService.setEnable(false);
      }

      if (this.aY) {
         this.getWindow().clearFlags(128);
      }

   }

   protected void onResume() {
      super.onResume();
      if ((this.mControllerService == null || this.mControllerService != null && !this.mControllerService.isServiceEnable()) && this.mControllerService.checkNibiruInstall(this, false)) {
         this.initNibiruService();
      }

      if (this.mControllerService != null) {
         this.mControllerService.setEnable(true);
      }

      if (this.aY) {
         this.getWindow().setFlags(128, 128);
      }

      if (this.mControllerService != null && this.mControllerService.isServiceEnable() && this.mControllerService.hasDeviceConnected() && !((ControllerServiceImpl)this.mControllerService).cp && ((ControllerServiceImpl)this.mControllerService).bD) {
         this.showGameGuide(true);
      }

   }

   public void onRightStickChanged(int var1, float var2, float var3) {
   }

   public void setArrowResId(int var1) {
      this.mArrowId = var1;
      if (this.mCursorService != null) {
         this.mCursorService.setCursorResource(var1);
      }

   }

   public void setCursorSensitivity(int var1, int var2) {
      if (this.mCursorService != null) {
         this.mCursorService.setSensitivity(var1, var2);
      }

   }

   public void setCursorStartKey(int var1) {
      this.mMouseStartKey = var1;
      if (this.mCursorService != null) {
         this.mCursorService.setHideKey(var1);
      }

   }

   public void setEnableL2R2(boolean var1) {
      if (this.mControllerService != null) {
         this.mControllerService.setEnableLR2(var1);
      }

   }

   public void setEnterKeyCode(int var1) {
      if (this.mControllerService != null) {
         this.mControllerService.setEnterKeyCode(var1);
      }

   }

   protected void setScreenOnMode(boolean var1) {
      if (var1) {
         this.getWindow().clearFlags(128);
         this.getWindow().setFlags(128, 128);
      } else {
         this.getWindow().clearFlags(128);
      }

      this.aY = var1;
   }

   public void showGameGuide(boolean var1) {
      if (this.mControllerService != null && this.mControllerService.isServiceEnable()) {
         this.mControllerService.showGameGuide(var1);
      }
   }

   public void startCursorMode(int var1) {
      this.getCursorSerivce().createCursor(var1);
   }
}
