package com.unity3d.ads.android;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;

public class UnityAdsDeviceLog {
   private static boolean LOGGING = true;
   public static int LOGLEVEL_DEBUG = 8;
   public static int LOGLEVEL_ERROR = 1;
   public static int LOGLEVEL_INFO = 4;
   public static int LOGLEVEL_NONE = 0;
   public static int LOGLEVEL_WARNING = 2;
   private static boolean LOG_DEBUG = false;
   private static boolean LOG_ERROR = true;
   private static boolean LOG_INFO = true;
   private static boolean LOG_WARNING = true;
   private static HashMap _deviceLogLevel = null;

   static {
      if (_deviceLogLevel == null) {
         _deviceLogLevel = new HashMap();
         _deviceLogLevel.put(UnityAdsDeviceLog.UnityAdsLogLevel.INFO, new UnityAdsDeviceLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel.INFO, "UnityAds", "i"));
         _deviceLogLevel.put(UnityAdsDeviceLog.UnityAdsLogLevel.DEBUG, new UnityAdsDeviceLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel.DEBUG, "UnityAds", "d"));
         _deviceLogLevel.put(UnityAdsDeviceLog.UnityAdsLogLevel.WARNING, new UnityAdsDeviceLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel.WARNING, "UnityAds", "w"));
         _deviceLogLevel.put(UnityAdsDeviceLog.UnityAdsLogLevel.ERROR, new UnityAdsDeviceLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel.ERROR, "UnityAds", "e"));
      }

   }

   private static String checkMessage(String var0) {
      if (var0 == null || var0.length() == 0) {
         var0 = "DO NOT USE EMPTY MESSAGES, use UnityAdsDeviceLog.entered() instead";
      }

      return var0;
   }

   private static UnityAdsDeviceLogEntry createLogEntry(UnityAdsDeviceLog.UnityAdsLogLevel var0, String var1) {
      StackTraceElement[] var2 = Thread.currentThread().getStackTrace();
      UnityAdsDeviceLogLevel var3 = getLogLevel(var0);
      UnityAdsDeviceLogEntry var4 = null;
      if (var3 != null) {
         boolean var5 = false;

         int var6;
         for(var6 = 0; var6 < var2.length; ++var6) {
            StackTraceElement var9 = var2[var6];
            if (var9.getClassName().equals(UnityAdsDeviceLog.class.getName())) {
               var5 = true;
            }

            if (!var9.getClassName().equals(UnityAdsDeviceLog.class.getName()) && var5) {
               break;
            }
         }

         int var7 = var2.length;
         StackTraceElement var8 = null;
         if (var6 < var7) {
            var8 = var2[var6];
         }

         var4 = null;
         if (var8 != null) {
            var4 = new UnityAdsDeviceLogEntry(var3, var1, var8);
         }
      }

      return var4;
   }

   public static void debug(String var0) {
      if (var0.length() > 3072) {
         debug(var0.substring(0, 3072));
         if (var0.length() < 30720) {
            debug(var0.substring(3072));
         }

      } else {
         write(UnityAdsDeviceLog.UnityAdsLogLevel.DEBUG, checkMessage(var0));
      }
   }

   public static void debug(String var0, Object... var1) {
      debug(String.format(var0, var1));
   }

   public static void entered() {
      debug("ENTERED METHOD");
   }

   public static void error(String var0) {
      write(UnityAdsDeviceLog.UnityAdsLogLevel.ERROR, checkMessage(var0));
   }

   public static void error(String var0, Object... var1) {
      error(String.format(var0, var1));
   }

   private static UnityAdsDeviceLogLevel getLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel var0) {
      return (UnityAdsDeviceLogLevel)_deviceLogLevel.get(var0);
   }

   public static void info(String var0) {
      write(UnityAdsDeviceLog.UnityAdsLogLevel.INFO, checkMessage(var0));
   }

   public static void info(String var0, Object... var1) {
      info(String.format(var0, var1));
   }

   public static void setLogLevel(int var0) {
      if (var0 >= LOGLEVEL_DEBUG) {
         LOG_ERROR = true;
         LOG_WARNING = true;
         LOG_INFO = true;
         LOG_DEBUG = true;
      } else if (var0 >= LOGLEVEL_INFO) {
         LOG_ERROR = true;
         LOG_WARNING = true;
         LOG_INFO = true;
         LOG_DEBUG = false;
      } else if (var0 >= LOGLEVEL_WARNING) {
         LOG_ERROR = true;
         LOG_WARNING = true;
         LOG_INFO = false;
         LOG_DEBUG = false;
      } else if (var0 >= LOGLEVEL_ERROR) {
         LOG_ERROR = true;
         LOG_WARNING = false;
         LOG_INFO = false;
         LOG_DEBUG = false;
      } else {
         LOG_ERROR = false;
         LOG_WARNING = false;
         LOG_INFO = false;
         LOG_DEBUG = false;
      }
   }

   public static void warning(String var0) {
      write(UnityAdsDeviceLog.UnityAdsLogLevel.WARNING, checkMessage(var0));
   }

   public static void warning(String var0, Object... var1) {
      warning(String.format(var0, var1));
   }

   private static void write(UnityAdsDeviceLog.UnityAdsLogLevel var0, String var1) {
      boolean var2 = LOGGING;
      if (var2) {
         switch(var0) {
         case INFO:
            var2 = LOG_INFO;
            break;
         case DEBUG:
            var2 = LOG_DEBUG;
            break;
         case WARNING:
            var2 = LOG_WARNING;
            break;
         case ERROR:
            var2 = LOG_ERROR;
         }
      }

      if (var2) {
         writeToLog(createLogEntry(var0, var1));
      }

   }

   private static void writeToLog(UnityAdsDeviceLogEntry var0) {
      if (var0 != null && var0.getLogLevel() != null) {
         Method var2;
         label20: {
            Method var6;
            try {
               var6 = Log.class.getMethod(var0.getLogLevel().getReceivingMethodName(), new Class[]{String.class, String.class});
            } catch (Exception var8) {
               var2 = null;
               break label20;
            }

            var2 = var6;
         }

         if (var2 != null) {
            try {
               Object[] var4 = new Object[]{var0.getLogLevel().getLogTag(), var0.getParsedMessage()};
               var2.invoke((Object)null, var4);
            } catch (Exception var7) {
               return;
            }
         }
      }

   }

   public static enum UnityAdsLogLevel {
      DEBUG,
      ERROR,
      INFO,
      WARNING;

      static {
         UnityAdsDeviceLog.UnityAdsLogLevel[] var0 = new UnityAdsDeviceLog.UnityAdsLogLevel[]{INFO, DEBUG, WARNING, ERROR};
      }
   }
}
