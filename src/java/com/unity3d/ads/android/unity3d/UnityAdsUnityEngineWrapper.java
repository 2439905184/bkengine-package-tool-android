package com.unity3d.ads.android.unity3d;

import android.annotation.TargetApi;
import android.app.Activity;
import com.unity3d.ads.android.IUnityAdsListener;
import com.unity3d.ads.android.UnityAds;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.webapp.UnityAdsWebData;
import com.unity3d.ads.android.zone.UnityAdsZone;
import com.unity3d.ads.android.zone.UnityAdsZoneManager;
import java.util.HashMap;

@TargetApi(9)
public class UnityAdsUnityEngineWrapper implements IUnityAdsListener {
   private static Boolean _initialized = false;

   private static native void UnityAdsOnFetchCompleted();

   private static native void UnityAdsOnFetchFailed();

   private static native void UnityAdsOnHide();

   private static native void UnityAdsOnShow();

   private static native void UnityAdsOnVideoCompleted(String var0, int var1);

   private static native void UnityAdsOnVideoStarted();

   public boolean canShowAds(String var1) {
      if (var1 != null && var1.length() > 0) {
         UnityAdsZoneManager var2 = UnityAdsWebData.getZoneManager();
         boolean var3 = false;
         if (var2 != null) {
            UnityAdsZone var4 = var2.getZone(var1);
            var3 = false;
            if (var4 != null) {
               var3 = UnityAds.canShow();
            }
         }

         return var3;
      } else {
         return UnityAds.canShow();
      }
   }

   public void init(final Activity var1, final String var2, final boolean var3, final int var4, final String var5) {
      if (!_initialized) {
         _initialized = true;

         try {
            UnityAdsUtils.runOnUiThread(new Runnable() {
               public void run() {
                  UnityAdsDeviceLog.setLogLevel(var4);
                  UnityAds.setTestMode(var3);
                  if (var5.length() > 0) {
                     UnityAdsProperties.UNITY_VERSION = var5;
                  }

                  UnityAds.init(var1, var2, UnityAdsUnityEngineWrapper.this);
               }
            });
         } catch (Exception var7) {
            UnityAdsDeviceLog.error("Error occured while initializing Unity Ads");
            return;
         }
      }

   }

   public void onFetchCompleted() {
      UnityAdsOnFetchCompleted();
   }

   public void onFetchFailed() {
      UnityAdsOnFetchFailed();
   }

   public void onHide() {
      UnityAdsOnHide();
   }

   public void onShow() {
      UnityAdsOnShow();
   }

   public void onVideoCompleted(String var1, boolean var2) {
      if (var1 == null || var1.isEmpty()) {
         var1 = "null";
      }

      byte var3;
      if (var2) {
         var3 = 1;
      } else {
         var3 = 0;
      }

      UnityAdsOnVideoCompleted(var1, var3);
   }

   public void onVideoStarted() {
      UnityAdsOnVideoStarted();
   }

   public void setCampaignDataURL(String var1) {
      UnityAds.setCampaignDataURL(var1);
   }

   public void setLogLevel(int var1) {
      UnityAdsDeviceLog.setLogLevel(var1);
   }

   public boolean show(String var1, String var2, String var3) {
      boolean var4 = UnityAds.canShowAds();
      boolean var5 = false;
      if (var4) {
         int var6 = var3.length();
         HashMap var7 = null;
         if (var6 > 0) {
            var7 = new HashMap();
            String[] var8 = var3.split(",");
            int var9 = var8.length;

            for(int var10 = 0; var10 < var9; ++var10) {
               String[] var14 = var8[var10].split(":");
               var7.put(var14[0], var14[1]);
            }
         }

         boolean var11 = this.canShowAds(var1);
         var5 = false;
         if (var11) {
            if (var2.length() > 0) {
               UnityAds.setZone(var1, var2);
            } else if (var1.length() > 0) {
               UnityAds.setZone(var1);
            }

            var5 = UnityAds.show(var7);
         }
      }

      return var5;
   }
}
