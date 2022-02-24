package com.unity3d.ads.android.unity3d;

import android.app.Activity;
import com.unity3d.ads.android.IUnityAdsListener;
import com.unity3d.ads.android.UnityAds;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.webapp.UnityAdsWebData;
import com.unity3d.ads.android.zone.UnityAdsZone;
import com.unity3d.ads.android.zone.UnityAdsZoneManager;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class UnityAdsUnityWrapper implements IUnityAdsListener {
   private static Boolean _constructed = false;
   private static Boolean _initialized = false;
   private String _gameId = null;
   private String _gameObject = null;
   private Method _sendMessageMethod = null;
   private Activity _startupActivity = null;
   private boolean _testMode = false;

   public UnityAdsUnityWrapper() {
      if (!_constructed) {
         _constructed = true;

         try {
            this._sendMessageMethod = Class.forName("com.unity3d.player.UnityPlayer").getDeclaredMethod("UnitySendMessage", new Class[]{String.class, String.class, String.class});
         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Error getting class or method of com.unity3d.player.UnityPlayer, method UnitySendMessage(string, string, string). " + var2.getLocalizedMessage());
            return;
         }
      }

   }

   public boolean canShow() {
      return UnityAds.canShow();
   }

   public boolean canShowZone(String var1) {
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

   public void enableUnityDeveloperInternalTestMode() {
      UnityAds.enableUnityDeveloperInternalTestMode();
   }

   public String getCurrentRewardItemKey() {
      return UnityAds.getCurrentRewardItemKey();
   }

   public String getDefaultRewardItemKey() {
      return UnityAds.getDefaultRewardItemKey();
   }

   public String getRewardItemDetailsKeys() {
      return String.format("%s;%s", new Object[]{"name", "picture"});
   }

   public String getRewardItemDetailsWithKey(String var1) {
      if (UnityAds.getRewardItemDetailsWithKey(var1) != null) {
         UnityAdsDeviceLog.debug("Fetching reward data");
         HashMap var2 = (HashMap)UnityAds.getRewardItemDetailsWithKey(var1);
         if (var2 != null) {
            String var3 = (String)var2.get("name");
            return var3 + ";" + (String)var2.get("picture");
         }

         UnityAdsDeviceLog.debug("Problems getting reward item details");
      } else {
         UnityAdsDeviceLog.debug("Could not find reward item details");
      }

      return "";
   }

   public String getRewardItemKeys() {
      ArrayList var1 = UnityAds.getRewardItemKeys();
      String var2 = null;
      if (var1 != null) {
         int var3 = UnityAds.getRewardItemKeys().size();
         var2 = null;
         if (var3 > 0) {
            var2 = "";

            String var5;
            for(Iterator var4 = UnityAds.getRewardItemKeys().iterator(); var4.hasNext(); var2 = var2 + var5) {
               var5 = (String)var4.next();
               if (UnityAds.getRewardItemKeys().indexOf(var5) > 0) {
                  var2 = var2 + ";";
               }
            }
         }
      }

      return var2;
   }

   public String getSDKVersion() {
      return UnityAds.getSDKVersion();
   }

   public boolean hasMultipleRewardItems() {
      return UnityAds.hasMultipleRewardItems();
   }

   public void hide() {
      UnityAds.hide();
   }

   public void init(String var1, Activity var2, boolean var3, final int var4, String var5, final String var6) {
      if (!_initialized) {
         _initialized = true;
         this._gameId = var1;
         this._gameObject = var5;
         this._testMode = var3;
         if (this._startupActivity == null) {
            this._startupActivity = var2;
         }

         try {
            UnityAdsUtils.runOnUiThread(new Runnable() {
               public void run() {
                  UnityAdsDeviceLog.setLogLevel(var4);
                  UnityAds.setTestMode(UnityAdsUnityWrapper.this._testMode);
                  if (var6.length() > 0) {
                     UnityAdsProperties.UNITY_VERSION = var6;
                  }

                  UnityAds.init(UnityAdsUnityWrapper.this._startupActivity, UnityAdsUnityWrapper.this._gameId, UnityAdsUnityWrapper.this);
               }
            });
         } catch (Exception var8) {
            UnityAdsDeviceLog.error("Error occured while initializing Unity Ads");
            return;
         }
      }

   }

   public boolean isSupported() {
      return UnityAds.isSupported();
   }

   public void onFetchCompleted() {
      this.sendMessageToUnity3D("onFetchCompleted", (String)null);
   }

   public void onFetchFailed() {
      this.sendMessageToUnity3D("onFetchFailed", (String)null);
   }

   public void onHide() {
      this.sendMessageToUnity3D("onHide", (String)null);
   }

   public void onShow() {
      this.sendMessageToUnity3D("onShow", (String)null);
   }

   public void onVideoCompleted(String var1, boolean var2) {
      StringBuilder var3 = (new StringBuilder()).append(var1).append(";");
      String var4;
      if (var2) {
         var4 = "true";
      } else {
         var4 = "false";
      }

      this.sendMessageToUnity3D("onVideoCompleted", var3.append(var4).toString());
   }

   public void onVideoStarted() {
      this.sendMessageToUnity3D("onVideoStarted", (String)null);
   }

   public void sendMessageToUnity3D(String var1, String var2) {
      if (var2 == null) {
         var2 = "";
      }

      if (this._sendMessageMethod == null) {
         UnityAdsDeviceLog.error("Cannot send message to Unity3D. Method is null");
      } else {
         try {
            UnityAdsDeviceLog.debug("Sending message (" + var1 + ", " + var2 + ") to Unity3D");
            Method var4 = this._sendMessageMethod;
            Object[] var5 = new Object[]{this._gameObject, var1, var2};
            var4.invoke((Object)null, var5);
         } catch (Exception var6) {
            UnityAdsDeviceLog.error("Can't invoke UnitySendMessage method. Error = " + var6.getLocalizedMessage());
         }
      }
   }

   public void setCampaignDataURL(String var1) {
      UnityAds.setCampaignDataURL(var1);
   }

   public void setDefaultRewardItemAsRewardItem() {
      UnityAds.setDefaultRewardItemAsRewardItem();
   }

   public void setLogLevel(int var1) {
      UnityAdsDeviceLog.setLogLevel(var1);
   }

   public boolean setRewardItemKey(String var1) {
      return UnityAds.setRewardItemKey(var1);
   }

   public boolean show(String var1, String var2, String var3) {
      boolean var4 = this.canShowZone(var1);
      boolean var5 = false;
      if (var4) {
         int var6 = var3.length();
         HashMap var7 = null;
         if (var6 > 0) {
            var7 = new HashMap();
            String[] var8 = var3.split(",");
            int var9 = var8.length;

            for(int var10 = 0; var10 < var9; ++var10) {
               String[] var13 = var8[var10].split(":");
               var7.put(var13[0], var13[1]);
            }
         }

         if (var2.length() > 0) {
            if (var1 != null && var1.length() > 0) {
               UnityAds.setZone(var1, var2);
            }
         } else if (var1 != null && var1.length() > 0) {
            UnityAds.setZone(var1);
         }

         var5 = UnityAds.show(var7);
      }

      return var5;
   }
}
