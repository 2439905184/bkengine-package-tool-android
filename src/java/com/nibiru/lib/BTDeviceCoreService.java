package com.nibiru.lib;

public interface BTDeviceCoreService extends BTDeviceService {
   void allocateDeviceId(String var1, int var2) throws Exception;

   void configureBluexService(int var1, String var2) throws Exception;

   OnBTDeviceConfigureListener getConfigureListener();

   OnInfoReportReadyListener getReportListener();

   void removeConfigureListener();

   void removeReportListener();

   void requestConnectDevice(BTDevice var1) throws Exception;

   void requestDisConnectDevice(BTDevice var1) throws Exception;

   void requestDriverList() throws Exception;

   void requestInfoReport(int var1) throws Exception;

   void requestSetPlayerOrder(int var1, int var2) throws Exception;

   void setConfigureListener(OnBTDeviceConfigureListener var1);

   void setReportListener(OnInfoReportReadyListener var1);
}
