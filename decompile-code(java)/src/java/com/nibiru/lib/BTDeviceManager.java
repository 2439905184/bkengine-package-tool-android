package com.nibiru.lib;

public class BTDeviceManager {
   public static BTDeviceService getBTDeviceSevice() {
      Class var2 = BTDeviceManager.class;
      synchronized(BTDeviceManager.class){}

      BTInputDeviceController var0;
      try {
         var0 = new BTInputDeviceController();
      } finally {
         ;
      }

      return var0;
   }
}
