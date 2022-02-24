package tv.ouya.console.internal.util;

import android.util.Log;
import java.io.File;

public final class RuntimeSwitchableLogging {
   private static final long CHECK_INTERVAL = 5000L;
   private static final File MAGIC_FILE = new File("/sdcard", "dont_skip_the_muffin");
   private static long sLastCheckTime = Long.MIN_VALUE;
   private static boolean sLoggingCache;

   private RuntimeSwitchableLogging() {
   }

   public static void i(String var0, String var1) {
      if (isLoggingEnabled()) {
         Log.i("*Dynamic*-" + var0, var1);
      }

   }

   public static void i(String var0, String var1, Exception var2) {
      if (isLoggingEnabled()) {
         Log.i("*Dynamic*-" + var0, var1, var2);
      }

   }

   private static boolean isLoggingEnabled() {
      Class var1 = RuntimeSwitchableLogging.class;
      synchronized(RuntimeSwitchableLogging.class){}

      Throwable var10000;
      boolean var10001;
      label131: {
         try {
            if (System.currentTimeMillis() - sLastCheckTime > 5000L) {
               sLoggingCache = MAGIC_FILE.exists();
               sLastCheckTime = System.currentTimeMillis();
            }
         } catch (Throwable var13) {
            var10000 = var13;
            var10001 = false;
            break label131;
         }

         label128:
         try {
            return sLoggingCache;
         } catch (Throwable var12) {
            var10000 = var12;
            var10001 = false;
            break label128;
         }
      }

      while(true) {
         Throwable var0 = var10000;

         try {
            throw var0;
         } catch (Throwable var11) {
            var10000 = var11;
            var10001 = false;
            continue;
         }
      }
   }
}
