package com.nibiru.lib.controller;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;

public class ControllerLooperActivity extends Activity implements CombKeyService.OnCombKeyListener, ControllerService.OnControllerSeviceListener, OnKeyListener, OnStateListener, OnStickListener {
   public static final String TAG = "ControllerLooperActivity";
   private boolean aY = true;
   private boolean aZ = false;
   protected CombKeyService mCombKeyService;
   protected ContinuesKeyService mContinuesKeyService;
   protected ControllerService mControllerService;
   protected CursorService mCursorService;
   protected DpadService mDpadService;
   protected StickSimService mStickSimService;

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

   public boolean isControllerServiceEnable() {
      return this.aZ;
   }

   public void onBluetoothStateChanged(int var1) {
   }

   public void onCombKeyEventOver(String var1, int var2, CombKeyService.CombKey var3) {
   }

   public void onCombKeyEventStart(String var1, int var2, CombKeyService.CombKey var3) {
   }

   public void onControllerKeyDown(int var1, int var2, ControllerKeyEvent var3) {
   }

   public void onControllerKeyUp(int var1, int var2, ControllerKeyEvent var3) {
   }

   public void onControllerServiceReady(boolean var1) {
      this.aZ = var1;
   }

   public void onControllerStateChanged(int var1, int var2, ControllerDevice var3) {
   }

   public void onControllerStickEvent(int var1, StickEvent var2) {
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      this.mControllerService = new d();
      this.mCombKeyService = this.mControllerService.getCombKeyService();
      this.mStickSimService = this.mControllerService.getStickSimService();
      this.mContinuesKeyService = this.mControllerService.getContinusKeyService();
      this.mCursorService = this.mControllerService.getCursorService();
      this.mDpadService = this.mControllerService.getDpadService();
      this.mControllerService.setHandler(new Handler());
      this.mControllerService.setKeyListener(this);
      this.mControllerService.setStickListener(this);
      this.mControllerService.setStateListener(this);
      this.mControllerService.setControllerServiceListener(this);
      this.mCombKeyService.setCombKeyListener(this);

      try {
         this.mControllerService.register(this);
      } catch (ControllerServiceException var3) {
         var3.printStackTrace();
      }
   }

   protected void onDestroy() {
      super.onDestroy();
      if (this.mControllerService != null) {
         this.mControllerService.unregister();
      }

   }

   public boolean onGenericMotionEvent(MotionEvent var1) {
      return this.mControllerService != null && this.mControllerService.handleExternalInput(var1) ? true : super.onGenericMotionEvent(var1);
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      return this.mControllerService != null && this.mControllerService.handleExternalInput(var2) ? true : super.onKeyDown(var1, var2);
   }

   public boolean onKeyUp(int var1, KeyEvent var2) {
      return this.mControllerService != null && this.mControllerService.handleExternalInput(var2) ? true : super.onKeyUp(var1, var2);
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
      if (this.mControllerService != null) {
         this.mControllerService.setEnable(true);
      }

      if (this.aY) {
         this.getWindow().setFlags(128, 128);
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

   public void startCursorMode(int var1) {
      this.getCursorSerivce().createCursor(var1);
   }
}
