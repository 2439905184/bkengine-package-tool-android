package tv.ouya.console.internal.util;

public class CurrentTime {
   private static CurrentTime instance = new CurrentTime();

   public static CurrentTime getInstance() {
      return instance;
   }

   @Deprecated
   public static void setInstance(CurrentTime var0) {
      instance = var0;
   }

   public long currentTimeMillis() {
      return System.currentTimeMillis();
   }
}
