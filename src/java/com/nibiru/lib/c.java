package com.nibiru.lib;

public final class c {
   public final boolean equals(Object var1) {
      if (this != var1) {
         if (var1 == null) {
            return false;
         }

         if (this.getClass() != var1.getClass()) {
            return false;
         }
      }

      return true;
   }

   public final int hashCode() {
      return 923521;
   }

   public final String toString() {
      return "ControllerDeviceInfo [deviceName=" + null + ", deviceAddr=" + null + ", source=0" + ", driverType=0" + ", type=0" + ", keyMapId=0" + ", pid=0" + ", vid=0" + ", endpointIn=0" + ", endpointOut=0" + ", interfaceNum=0" + "]";
   }
}
