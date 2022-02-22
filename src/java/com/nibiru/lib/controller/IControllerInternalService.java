package com.nibiru.lib.controller;

import com.nibiru.lib.BTDevice;

public interface IControllerInternalService extends ControllerService {
   int STATE_ENABLE_CURSOR = 1;
   int STATE_ENABLE_DPAD = 2;
   int VIRTUAL_SERVER_BT = 1;
   int VIRTUAL_SERVER_WIFI = 0;
   int VIRTUAL_SERVICE_CONN_FAILED = 3;
   int VIRTUAL_SERVICE_CONN_SUCC = 2;
   int VIRTUAL_SERVICE_FAILED = 1;
   int VIRTUAL_SERVICE_PLAYER_BASE = 255;
   int VIRTUAL_SERVICE_SUCC;

   void configureService(int var1);

   void connectVirtualService(String var1, int var2);

   void deleteDevice(String var1) throws ControllerServiceException;

   void disconnectVirtualService(int var1);

   int getKeyState2(int var1);

   ControllerServiceState getServiceState();

   void requestConnectDevice(BTDevice var1) throws ControllerServiceException;

   void requestDisConnectDevice(BTDevice var1) throws ControllerServiceException;

   void requestInfoReport(int var1) throws ControllerServiceException;

   void resetCurrentApp();

   boolean sendVirutalData(byte[] var1);

   void setDirectPressMode(boolean var1);

   void setIME(boolean var1);

   void setInternalStateListener(IControllerInternalService.OnInternalStateChanged var1);

   void setNibiruIMEShow(boolean var1);

   void setNibiruPlayer(boolean var1);

   void setOneDirectMode(boolean var1);

   void setPlayerOrder(int var1, int var2);

   void setReportListener(OnReportListener var1);

   void setSysCursorMode(boolean var1);

   void setVirtualServiceListener(OnVirutalServiceListener var1);

   void startVirtualService(int var1);

   void stopVirtualService(int var1);

   void updateDeviceInfo(BTDevice var1) throws ControllerServiceException;

   public interface OnInternalStateChanged {
      void onError(String var1);
   }
}
