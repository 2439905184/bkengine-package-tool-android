package com.nibiru.lib;

import android.view.KeyEvent;

public interface OnBTDeviceKeyListener {
   void onBTInputDeviceKeyDown(int var1, int var2, KeyEvent var3);

   void onBTInputDeviceKeyUp(int var1, int var2, KeyEvent var3);
}
