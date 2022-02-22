package com.nibiru.lib.controller;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.InputEvent;
import java.util.List;

public interface ControllerService {
   String FLAG_HAS_CONNECTED = "hasConnected";
   String FLAG_IS_AUTO_CLOSE = "isAutoClose";
   String FLAG_IS_SHOW_GAMEPAD_TIP = "isShowTip";
   int POS_LEFT = 0;
   int POS_RIGHT = 1;
   int REQUEST_DEVICE_MANAGER = 65535;

   boolean checkNibiruInstall(Context var1, boolean var2);

   void debug(boolean var1);

   boolean enableGlobalControl(boolean var1);

   CombKeyService getCombKeyService();

   Context getContext();

   ContinuesKeyService getContinusKeyService();

   CursorService getCursorService();

   ControllerDevice getDeviceByPlayerOrder(int var1) throws ControllerServiceException;

   List getDeviceList() throws ControllerServiceException;

   DpadService getDpadService();

   int getDriverVersion();

   Handler getHandler();

   int getKeyState(int var1, int var2);

   int[] getKeyStateMap(int var1);

   int getMouseSpeed();

   SensorStateService getSensorStateService();

   StickSimService getStickSimService();

   float getStickState(int var1, int var2);

   StickEvent getStickState(int var1);

   int getVersion();

   boolean handleExternalInput(InputEvent var1);

   boolean hasDeviceConnected();

   void hideInputView();

   boolean isEnable();

   boolean isHostControl();

   boolean isInputViewShow();

   boolean isServiceEnable();

   boolean isSupportEnable();

   boolean isSupportInput();

   void notifyCursorShow(boolean var1, int var2);

   boolean register(Context var1) throws ControllerServiceException;

   void setAccListener(OnAccListener var1);

   void setAutoGameGuide(boolean var1);

   void setAutoKeyUpKeys(int[] var1);

   void setAutoKeyUpMode(boolean var1);

   void setAutoKeyUpParam(long var1, boolean var3);

   void setControllerServiceListener(ControllerService.OnControllerSeviceListener var1);

   void setEnable(boolean var1);

   void setEnableLR2(boolean var1);

   void setEnableSystemKey(boolean var1);

   void setEnterKeyCode(int var1);

   void setGyroListener(OnGyroListener var1);

   void setHandler(Handler var1);

   void setHostController(boolean var1);

   void setKeyListener(OnKeyListener var1);

   void setMotionSenseListener(OnMotionSenseListener var1);

   void setRevExternalMotion(boolean var1);

   void setSimpleStickListener(OnSimpleStickListener var1);

   void setStateListener(OnStateListener var1);

   void setStickListener(OnStickListener var1);

   void setSupportStickHatMode(boolean var1);

   void showDeviceManagerUI(Context var1, Bundle var2) throws ControllerServiceException;

   void showGameGuide(boolean var1);

   boolean startInputView(String var1, String var2, int var3, int var4, OnInputResultListener var5);

   boolean startMotor(int var1, int var2, long var3);

   void stopMotor(int var1, int var2);

   void unregister();

   public interface OnControllerSeviceListener {
      void onControllerServiceReady(boolean var1);
   }
}
