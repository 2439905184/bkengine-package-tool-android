package com.nibiru.lib;

public interface OnBTDeviceStateListener {
   void onBTDeviceConnected(int var1, BTDevice var2);

   void onBTDeviceConnecting(int var1, BTDevice var2);

   void onBTDeviceDisconnected(int var1, BTDevice var2);

   void onBTStateChanged(int var1);

   void onError(String var1);

   void onReceiveBTDevice(int var1, BTDevice var2);

   void onReceiveBTDeviceList(BTDevice[] var1);
}
