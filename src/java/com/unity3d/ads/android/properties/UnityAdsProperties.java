package com.unity3d.ads.android.properties;

import android.app.Activity;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.data.UnityAdsDevice;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.Map;

public class UnityAdsProperties {
   public static String ANALYTICS_BASE_URL = null;
   public static String APPFILTER_LIST = null;
   public static WeakReference BASE_ACTIVITY = null;
   public static long CACHING_SPEED = 0L;
   public static String CAMPAIGN_DATA_URL = "https://impact.applifier.com/mobile/campaigns";
   public static String CAMPAIGN_QUERY_STRING = null;
   public static int CAMPAIGN_REFRESH_SECONDS = 0;
   public static int CAMPAIGN_REFRESH_VIEWS_COUNT = 0;
   public static int CAMPAIGN_REFRESH_VIEWS_MAX = 0;
   public static WeakReference CURRENT_ACTIVITY = null;
   public static String INSTALLED_APPS_URL = null;
   public static final int MAX_BUFFERING_WAIT_SECONDS = 20;
   public static final int MAX_NUMBER_OF_ANALYTICS_RETRIES = 5;
   public static Boolean RUN_WEBVIEW_TESTS = false;
   public static UnityAdsCampaign SELECTED_CAMPAIGN = null;
   public static Boolean SELECTED_CAMPAIGN_CACHED = false;
   public static Boolean SEND_INTERNAL_DETAILS = false;
   public static Boolean TESTMODE_ENABLED = false;
   public static String TEST_DATA = null;
   public static String TEST_DEVELOPER_ID = null;
   private static Map TEST_EXTRA_PARAMS = null;
   public static String TEST_JAVASCRIPT = null;
   public static String TEST_OPTIONS_ID = null;
   public static String TEST_URL = null;
   public static String UNITY_ADS_BASE_URL = null;
   public static String UNITY_ADS_GAMER_ID = null;
   public static String UNITY_ADS_GAME_ID = null;
   public static Boolean UNITY_DEVELOPER_INTERNAL_TEST = false;
   public static String UNITY_VERSION = null;
   public static String WEBVIEW_BASE_URL = null;
   private static String _campaignQueryString = null;
   private static boolean _seenIsDestroyed = false;

   private static void createCampaignQueryString() {
      String var0 = "?";

      label115: {
         Exception var10000;
         label119: {
            String var7;
            boolean var10001;
            try {
               var0 = String.format("%s%s=%s", new Object[]{var0, "platform", "android"});
               Object[] var6 = new Object[]{var0, "deviceId", URLEncoder.encode(UnityAdsDevice.getAndroidId(true), "UTF-8")};
               var0 = String.format("%s&%s=%s", var6);
               var7 = UnityAdsDevice.getAdvertisingTrackingId();
            } catch (Exception var37) {
               var10000 = var37;
               var10001 = false;
               break label119;
            }

            if (var7 != null) {
               Object[] var8;
               byte var9;
               label102: {
                  label101: {
                     try {
                        var8 = new Object[]{var0, "trackingEnabled", null};
                        if (UnityAdsDevice.isLimitAdTrackingEnabled()) {
                           break label101;
                        }
                     } catch (Exception var35) {
                        var10000 = var35;
                        var10001 = false;
                        break label119;
                     }

                     var9 = 1;
                     break label102;
                  }

                  var9 = 0;
               }

               try {
                  var8[2] = Integer.valueOf(var9);
                  var0 = String.format("%s&%s=%d", var8);
                  String var10 = UnityAdsUtils.Md5(var7).toLowerCase();
                  Object[] var11 = new Object[]{var0, "advertisingTrackingId", URLEncoder.encode(var10, "UTF-8")};
                  var0 = String.format("%s&%s=%s", var11);
                  Object[] var12 = new Object[]{var0, "rawAdvertisingTrackingId", URLEncoder.encode(var7, "UTF-8")};
                  var0 = String.format("%s&%s=%s", var12);
               } catch (Exception var34) {
                  var10000 = var34;
                  var10001 = false;
                  break label119;
               }
            } else {
               label120: {
                  try {
                     if (!UnityAdsDevice.getAndroidId(false).equals("unknown")) {
                        Object[] var27 = new Object[]{var0, "androidId", URLEncoder.encode(UnityAdsDevice.getAndroidId(true), "UTF-8")};
                        var0 = String.format("%s&%s=%s", var27);
                        Object[] var28 = new Object[]{var0, "rawAndroidId", URLEncoder.encode(UnityAdsDevice.getAndroidId(false), "UTF-8")};
                        var0 = String.format("%s&%s=%s", var28);
                     }
                  } catch (Exception var33) {
                     var10000 = var33;
                     var10001 = false;
                     break label119;
                  }

                  String var26;
                  try {
                     if (UnityAdsDevice.getMacAddress().equals("unknown")) {
                        break label120;
                     }

                     Object[] var25 = new Object[]{var0, "macAddress", URLEncoder.encode(UnityAdsDevice.getMacAddress(), "UTF-8")};
                     var26 = String.format("%s&%s=%s", var25);
                  } catch (Exception var36) {
                     var10000 = var36;
                     var10001 = false;
                     break label119;
                  }

                  var0 = var26;
               }
            }

            try {
               Object[] var13 = new Object[]{var0, "gameId", URLEncoder.encode(UNITY_ADS_GAME_ID, "UTF-8")};
               var0 = String.format("%s&%s=%s", var13);
               Object[] var14 = new Object[]{var0, "sdkVersion", URLEncoder.encode("1401", "UTF-8")};
               var0 = String.format("%s&%s=%s", var14);
               Object[] var15 = new Object[]{var0, "softwareVersion", URLEncoder.encode(UnityAdsDevice.getSoftwareVersion(), "UTF-8")};
               var0 = String.format("%s&%s=%s", var15);
               Object[] var16 = new Object[]{var0, "hardwareVersion", URLEncoder.encode(UnityAdsDevice.getHardwareVersion(), "UTF-8")};
               var0 = String.format("%s&%s=%s", var16);
               Object[] var17 = new Object[]{var0, "deviceType", UnityAdsDevice.getDeviceType()};
               var0 = String.format("%s&%s=%s", var17);
               Object[] var18 = new Object[]{var0, "connectionType", URLEncoder.encode(UnityAdsDevice.getConnectionType(), "UTF-8")};
               var0 = String.format("%s&%s=%s", var18);
               if (UNITY_VERSION != null && UNITY_VERSION.length() > 0) {
                  Object[] var24 = new Object[]{var0, "unityVersion", URLEncoder.encode(UNITY_VERSION, "UTF-8")};
                  var0 = String.format("%s&%s=%s", var24);
               }
            } catch (Exception var32) {
               var10000 = var32;
               var10001 = false;
               break label119;
            }

            try {
               if (!UnityAdsDevice.isUsingWifi()) {
                  Object[] var23 = new Object[]{var0, "androidNetworkType", UnityAdsDevice.getNetworkType(), "UTF-8"};
                  var0 = String.format("%s&%s=%d", var23);
               }
            } catch (Exception var31) {
               var10000 = var31;
               var10001 = false;
               break label119;
            }

            try {
               if (CACHING_SPEED > 0L) {
                  Object[] var22 = new Object[]{var0, "cachingSpeed", CACHING_SPEED};
                  var0 = String.format("%s&%s=%d", var22);
               }
            } catch (Exception var30) {
               var10000 = var30;
               var10001 = false;
               break label119;
            }

            try {
               Object[] var19 = new Object[]{var0, "screenSize", UnityAdsDevice.getScreenSize()};
               var0 = String.format("%s&%s=%s", var19);
               Object[] var20 = new Object[]{var0, "screenDensity", UnityAdsDevice.getScreenDensity()};
               var0 = String.format("%s&%s=%s", var20);
               if (APPFILTER_LIST != null) {
                  Object[] var21 = new Object[]{var0, "appFilterList", APPFILTER_LIST};
                  var0 = String.format("%s&%s=%s", var21);
                  APPFILTER_LIST = null;
               }
               break label115;
            } catch (Exception var29) {
               var10000 = var29;
               var10001 = false;
            }
         }

         Exception var1 = var10000;
         UnityAdsDeviceLog.error("Problems creating campaigns query: " + var1.getMessage() + var1.getStackTrace().toString());
      }

      if (TESTMODE_ENABLED) {
         var0 = String.format("%s&%s=%s", new Object[]{var0, "test", "true"});
         if (TEST_OPTIONS_ID != null && TEST_OPTIONS_ID.length() > 0) {
            Object[] var5 = new Object[]{var0, "optionsId", TEST_OPTIONS_ID};
            var0 = String.format("%s&%s=%s", var5);
         }

         if (TEST_DEVELOPER_ID != null && TEST_DEVELOPER_ID.length() > 0) {
            Object[] var4 = new Object[]{var0, "developerId", TEST_DEVELOPER_ID};
            var0 = String.format("%s&%s=%s", var4);
         }
      } else if (getCurrentActivity() != null) {
         Object[] var2 = new Object[]{var0, "encrypted", null};
         String var3;
         if (UnityAdsUtils.isDebuggable(getCurrentActivity())) {
            var3 = "false";
         } else {
            var3 = "true";
         }

         var2[2] = var3;
         var0 = String.format("%s&%s=%s", var2);
      }

      if (SEND_INTERNAL_DETAILS) {
         var0 = String.format("%s&%s=%s", new Object[]{var0, "sendInternalDetails", "true"});
         SEND_INTERNAL_DETAILS = false;
      }

      _campaignQueryString = var0;
   }

   public static Activity getBaseActivity() {
      return BASE_ACTIVITY != null && BASE_ACTIVITY.get() != null && !((Activity)BASE_ACTIVITY.get()).isFinishing() && !isActivityDestroyed((Activity)BASE_ACTIVITY.get()) ? (Activity)BASE_ACTIVITY.get() : null;
   }

   public static String getCampaignQueryArguments() {
      return _campaignQueryString != null && _campaignQueryString.length() > 2 ? _campaignQueryString.substring(1) : "";
   }

   public static String getCampaignQueryUrl() {
      createCampaignQueryString();
      String var0 = CAMPAIGN_DATA_URL;
      if (getBaseActivity() != null && UnityAdsUtils.isDebuggable(getBaseActivity()) && TEST_URL != null) {
         var0 = TEST_URL;
      }

      Object[] var1 = new Object[]{var0, _campaignQueryString};
      return String.format("%s%s", var1);
   }

   public static Activity getCurrentActivity() {
      return CURRENT_ACTIVITY != null && CURRENT_ACTIVITY.get() != null && !((Activity)CURRENT_ACTIVITY.get()).isFinishing() && !isActivityDestroyed((Activity)CURRENT_ACTIVITY.get()) ? (Activity)CURRENT_ACTIVITY.get() : getBaseActivity();
   }

   public static boolean isActivityDestroyed(Activity var0) {
      Method var3;
      label27: {
         Method var7;
         try {
            var7 = Activity.class.getMethod("isDestroyed", new Class[0]);
         } catch (Exception var9) {
            boolean var2 = _seenIsDestroyed;
            var3 = null;
            if (!var2) {
               _seenIsDestroyed = true;
               UnityAdsDeviceLog.error("Couldn't get isDestroyed -method");
               var3 = null;
            }
            break label27;
         }

         var3 = var7;
      }

      boolean var4 = false;
      if (var3 != null) {
         var4 = false;
         if (var0 != null) {
            boolean var6;
            try {
               var6 = (Boolean)var3.invoke(var0, new Object[0]);
            } catch (Exception var8) {
               UnityAdsDeviceLog.error("Error running isDestroyed -method");
               return false;
            }

            var4 = var6;
         }
      }

      return var4;
   }

   public static void setExtraParams(Map var0) {
      if (var0.containsKey("testData")) {
         TEST_DATA = (String)var0.get("testData");
      }

      if (var0.containsKey("testUrl")) {
         TEST_URL = (String)var0.get("testUrl");
      }

      if (var0.containsKey("testJavaScript")) {
         TEST_JAVASCRIPT = (String)var0.get("testJavaScript");
      }

   }
}
