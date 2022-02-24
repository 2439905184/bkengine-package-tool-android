package com.nibiru.lib.controller;

public interface OnStateListener {
   void onBluetoothStateChanged(int var1);

   void onControllerStateChanged(int var1, int var2, ControllerDevice var3);
}
