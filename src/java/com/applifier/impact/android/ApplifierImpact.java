package com.applifier.impact.android;

import android.app.Activity;
import android.os.Build.VERSION;
import com.unity3d.ads.android.IUnityAdsListener;
import com.unity3d.ads.android.UnityAds;
import java.util.ArrayList;
import java.util.Map;

public class ApplifierImpact implements IUnityAdsListener {
   public static final String APPLIFIER_IMPACT_OPTION_GAMERSID_KEY = "sid";
   public static final String APPLIFIER_IMPACT_OPTION_MUTE_VIDEO_SOUNDS = "muteVideoSounds";
   public static final String APPLIFIER_IMPACT_OPTION_NOOFFERSCREEN_KEY = "noOfferScreen";
   public static final String APPLIFIER_IMPACT_OPTION_OPENANIMATED_KEY = "openAnimated";
   public static final String APPLIFIER_IMPACT_OPTION_VIDEO_USES_DEVICE_ORIENTATION = "useDeviceOrientationForVideo";
   public static final String APPLIFIER_IMPACT_REWARDITEM_NAME_KEY = "name";
   public static final String APPLIFIER_IMPACT_REWARDITEM_PICTURE_KEY = "picture";
   public static ApplifierImpact instance = null;
   private IApplifierImpactListener _impactListener = null;

   public ApplifierImpact(Activity var1, String var2) {
      this.init(var1, var2, (IApplifierImpactListener)null);
   }

   public ApplifierImpact(Activity var1, String var2, IApplifierImpactListener var3) {
      this.init(var1, var2, var3);
   }

   public static String getSDKVersion() {
      return UnityAds.getSDKVersion();
   }

   private void init(Activity var1, String var2, IApplifierImpactListener var3) {
      instance = this;
      this.setImpactListener(var3);
      UnityAds.init(var1, var2, this);
   }

   public static boolean isSupported() {
      return VERSION.SDK_INT >= 9;
   }

   public static void setDebugMode(boolean var0) {
      UnityAds.setDebugMode(var0);
   }

   public static void setTestDeveloperId(String var0) {
      UnityAds.setTestDeveloperId(var0);
   }

   public static void setTestMode(boolean var0) {
      UnityAds.setTestMode(var0);
   }

   public static void setTestOptionsId(String var0) {
      UnityAds.setTestOptionsId(var0);
   }

   public boolean canShowCampaigns() {
      return UnityAds.canShowAds();
   }

   public boolean canShowImpact() {
      return UnityAds.canShow();
   }

   public void changeActivity(Activity var1) {
      UnityAds.changeActivity(var1);
   }

   public String getCurrentRewardItemKey() {
      return UnityAds.getCurrentRewardItemKey();
   }

   public String getDefaultRewardItemKey() {
      return UnityAds.getDefaultRewardItemKey();
   }

   public Map getRewardItemDetailsWithKey(String var1) {
      return UnityAds.getRewardItemDetailsWithKey(var1);
   }

   public ArrayList getRewardItemKeys() {
      return UnityAds.getRewardItemKeys();
   }

   public boolean hasMultipleRewardItems() {
      return UnityAds.hasMultipleRewardItems();
   }

   public boolean hideImpact() {
      return UnityAds.hide();
   }

   public void onFetchCompleted() {
      if (this._impactListener != null) {
         this._impactListener.onCampaignsAvailable();
      }

   }

   public void onFetchFailed() {
      if (this._impactListener != null) {
         this._impactListener.onCampaignsFetchFailed();
      }

   }

   public void onHide() {
      if (this._impactListener != null) {
         this._impactListener.onImpactClose();
      }

   }

   public void onShow() {
      if (this._impactListener != null) {
         this._impactListener.onImpactOpen();
      }

   }

   public void onVideoCompleted(String var1, boolean var2) {
      if (this._impactListener != null) {
         this._impactListener.onVideoCompleted(var1, var2);
      }

   }

   public void onVideoStarted() {
      if (this._impactListener != null) {
         this._impactListener.onVideoStarted();
      }

   }

   public void setDefaultRewardItemAsRewardItem() {
      UnityAds.setDefaultRewardItemAsRewardItem();
   }

   public void setImpactListener(IApplifierImpactListener var1) {
      this._impactListener = var1;
   }

   public boolean setRewardItemKey(String var1) {
      return UnityAds.setRewardItemKey(var1);
   }

   public boolean setZone(String var1) {
      return UnityAds.setZone(var1);
   }

   public boolean setZone(String var1, String var2) {
      return UnityAds.setZone(var1, var2);
   }

   public boolean showImpact() {
      return UnityAds.show();
   }

   public boolean showImpact(Map var1) {
      return UnityAds.show(var1);
   }

   public void stopAll() {
   }
}
