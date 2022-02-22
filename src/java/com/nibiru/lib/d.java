package com.nibiru.lib;

public final class d extends Exception {
   private static final long serialVersionUID = -3566353436260418217L;

   public d() {
      super("Nibiru service has not been registered! please invoke registerBTDeviceService method first!");
   }
}
