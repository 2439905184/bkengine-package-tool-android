package com.unity3d.ads.android.data;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@TargetApi(9)
public class UnityAdsDevice {
   @SuppressLint({"DefaultLocale"})
   public static String buildMacAddressFromInterface(NetworkInterface var0) {
      if (var0 == null) {
         return "unknown";
      } else {
         byte[] var2;
         try {
            var2 = (byte[])((byte[])NetworkInterface.class.getMethod("getHardwareAddress", new Class[0]).invoke(var0, new Object[0]));
         } catch (Exception var7) {
            UnityAdsDeviceLog.error("Could not getHardwareAddress");
            var2 = null;
         }

         if (var2 == null) {
            return "unknown";
         } else {
            StringBuilder var3 = new StringBuilder();

            for(int var4 = 0; var4 < var2.length; ++var4) {
               Object[] var6 = new Object[]{var2[var4]};
               var3.append(String.format("%02X:", var6));
            }

            if (var3.length() > 0) {
               var3.deleteCharAt(-1 + var3.length());
            }

            return UnityAdsUtils.Md5(var3.toString()).toLowerCase();
         }
      }
   }

   public static String getAdvertisingTrackingId() {
      return UnityAdsAdvertisingId.getAdvertisingTrackingId();
   }

   @SuppressLint({"DefaultLocale"})
   public static String getAndroidId(boolean param0) {
      // $FF: Couldn't be decompiled
   }

   public static String getAndroidSerial() {
      String var0 = "unknown";

      try {
         Class var2 = Class.forName("android.os.SystemProperties");
         var0 = (String)var2.getMethod("get", new Class[]{String.class}).invoke(var2, new Object[]{"ro.serialno"});
         var0 = UnityAdsUtils.Md5(var0);
         String var3 = var0.toLowerCase();
         return var3;
      } catch (Exception var4) {
         return var0;
      }
   }

   public static String getConnectionType() {
      return isUsingWifi() ? "wifi" : "cellular";
   }

   public static int getDeviceType() {
      return UnityAdsProperties.getCurrentActivity().getResources().getConfiguration().screenLayout;
   }

   public static String getHardwareVersion() {
      return Build.MANUFACTURER + " " + Build.MODEL;
   }

   public static NetworkInterface getInterfaceFor(String var0) {
      ArrayList var2;
      try {
         var2 = Collections.list(NetworkInterface.getNetworkInterfaces());
      } catch (Exception var5) {
         return null;
      }

      Iterator var3 = var2.iterator();

      NetworkInterface var4;
      do {
         if (!var3.hasNext()) {
            return null;
         }

         var4 = (NetworkInterface)var3.next();
      } while(var0 == null || !var4.getName().equalsIgnoreCase(var0));

      UnityAdsDeviceLog.debug("Returning interface: " + var4.getName());
      return var4;
   }

   public static String getMacAddress() {
      NetworkInterface var0 = getInterfaceFor("eth0");
      if (var0 == null) {
         var0 = getInterfaceFor("wlan0");
      }

      return buildMacAddressFromInterface(var0);
   }

   public static int getNetworkType() {
      Activity var0 = UnityAdsProperties.getCurrentActivity();
      return var0 != null ? ((TelephonyManager)var0.getSystemService("phone")).getNetworkType() : 0;
   }

   public static String getPackageDataJson(Map var0) {
      JSONArray var1 = getPackageJsonArray(var0);
      if (var1 == null) {
         return null;
      } else {
         JSONObject var2 = new JSONObject();

         try {
            var2.put("games", var1);
            String var5 = var2.toString();
            return var5;
         } catch (Exception var6) {
            UnityAdsDeviceLog.debug("Exception in getPackageDataJson" + var6);
            return null;
         }
      }
   }

   public static JSONArray getPackageJsonArray(Map var0) {
      JSONArray var1 = null;
      if (var0 != null) {
         int var2 = var0.size();
         var1 = null;
         if (var2 != 0) {
            Activity var3 = UnityAdsProperties.getCurrentActivity();
            var1 = null;
            if (var3 != null) {
               PackageManager var4 = var3.getPackageManager();
               var1 = null;
               Iterator var5 = var4.getInstalledPackages(0).iterator();

               while(var5.hasNext()) {
                  PackageInfo var6 = (PackageInfo)var5.next();

                  Exception var10000;
                  label58: {
                     JSONObject var10;
                     boolean var10001;
                     try {
                        if (var6.packageName == null || var6.packageName.length() <= 0) {
                           continue;
                        }

                        String var8 = UnityAdsUtils.Md5(var6.packageName);
                        if (!var0.containsKey(var8)) {
                           continue;
                        }

                        var0.get(var8);
                        var10 = new JSONObject();
                        var10.put("id", var0.get(var8));
                        if (var6.firstInstallTime > 0L) {
                           var10.put("timestamp", var6.firstInstallTime);
                        }
                     } catch (Exception var13) {
                        var10000 = var13;
                        var10001 = false;
                        break label58;
                     }

                     if (var1 == null) {
                        try {
                           var1 = new JSONArray();
                        } catch (Exception var12) {
                           var10000 = var12;
                           var10001 = false;
                           break label58;
                        }
                     }

                     try {
                        var1.put(var10);
                        continue;
                     } catch (Exception var11) {
                        var10000 = var11;
                        var10001 = false;
                     }
                  }

                  Exception var7 = var10000;
                  UnityAdsDeviceLog.debug("Exception when processing package " + var6.packageName + " " + var7);
               }
            }
         }
      }

      return var1;
   }

   public static int getScreenDensity() {
      return UnityAdsProperties.getCurrentActivity().getResources().getDisplayMetrics().densityDpi;
   }

   public static int getScreenSize() {
      return getDeviceType();
   }

   public static String getSoftwareVersion() {
      return "" + VERSION.SDK_INT;
   }

   public static boolean isLimitAdTrackingEnabled() {
      return UnityAdsAdvertisingId.getLimitedAdTracking();
   }

   public static boolean isUsingWifi() {
      Activity var0 = UnityAdsProperties.getCurrentActivity();
      if (var0 != null) {
         ConnectivityManager var1 = (ConnectivityManager)var0.getSystemService("connectivity");
         if (var1 != null) {
            TelephonyManager var2 = null;
            if (var0 != null) {
               var2 = (TelephonyManager)var0.getSystemService("phone");
            }

            NetworkInfo var3 = var1.getActiveNetworkInfo();
            if (var3 != null && var1.getBackgroundDataSetting() && var1.getActiveNetworkInfo().isConnected() && var2 != null && var3.getType() == 1) {
               return var3.isConnected();
            }
         }
      }

      return false;
   }
}
