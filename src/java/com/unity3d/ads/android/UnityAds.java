package com.unity3d.ads.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.Build.VERSION;
import com.unity3d.ads.android.cache.IUnityAdsCacheListener;
import com.unity3d.ads.android.cache.UnityAdsCacheManager;
import com.unity3d.ads.android.cache.UnityAdsDownloader;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.campaign.UnityAdsCampaignHandler;
import com.unity3d.ads.android.data.UnityAdsAdvertisingId;
import com.unity3d.ads.android.item.UnityAdsRewardItem;
import com.unity3d.ads.android.item.UnityAdsRewardItemManager;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.video.UnityAdsVideoPausedView;
import com.unity3d.ads.android.view.IUnityAdsMainViewListener;
import com.unity3d.ads.android.view.UnityAdsFullscreenActivity;
import com.unity3d.ads.android.view.UnityAdsMainView;
import com.unity3d.ads.android.webapp.IUnityAdsWebBridgeListener;
import com.unity3d.ads.android.webapp.IUnityAdsWebDataListener;
import com.unity3d.ads.android.webapp.UnityAdsWebData;
import com.unity3d.ads.android.zone.UnityAdsIncentivizedZone;
import com.unity3d.ads.android.zone.UnityAdsZone;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

@TargetApi(9)
public class UnityAds implements IUnityAdsCacheListener, IUnityAdsMainViewListener, IUnityAdsWebBridgeListener, IUnityAdsWebDataListener {
   public static final String UNITY_ADS_OPTION_GAMERSID_KEY = "sid";
   public static final String UNITY_ADS_OPTION_MUTE_VIDEO_SOUNDS = "muteVideoSounds";
   public static final String UNITY_ADS_OPTION_NOOFFERSCREEN_KEY = "noOfferScreen";
   public static final String UNITY_ADS_OPTION_OPENANIMATED_KEY = "openAnimated";
   public static final String UNITY_ADS_OPTION_VIDEO_USES_DEVICE_ORIENTATION = "useDeviceOrientationForVideo";
   public static final String UNITY_ADS_REWARDITEM_NAME_KEY = "name";
   public static final String UNITY_ADS_REWARDITEM_PICTURE_KEY = "picture";
   private static IUnityAdsListener _adsListener = null;
   private static boolean _adsReadySent = false;
   private static AlertDialog _alertDialog = null;
   private static Timer _campaignRefreshTimer = null;
   private static long _campaignRefreshTimerDeadline = 0L;
   private static TimerTask _campaignRefreshTimerTask = null;
   private static boolean _fixMainview = false;
   private static boolean _hidingHandled = false;
   private static boolean _initialized = false;
   private static UnityAds _instance = null;
   private static boolean _openRequestFromDeveloper = false;
   private static TimerTask _pauseScreenTimer = null;
   private static Timer _pauseTimer = null;
   private static boolean _preventVideoDoubleStart = false;
   private static boolean _refreshAfterShowAds = false;
   private static boolean _showingAds = false;
   private static boolean _singleTaskApplication = false;
   public static UnityAdsCacheManager cachemanager = null;
   public static UnityAdsMainView mainview = null;
   public static UnityAdsWebData webdata = null;

   private UnityAds() {
   }

   public static boolean canShow() {
      if (!_showingAds && webdata != null) {
         Activity var0 = UnityAdsProperties.getCurrentActivity();
         if (var0 != null) {
            ConnectivityManager var3 = (ConnectivityManager)var0.getBaseContext().getSystemService("connectivity");
            if (var3 != null) {
               NetworkInfo var4 = var3.getActiveNetworkInfo();
               boolean var5;
               if (var4 != null && var4.isConnected()) {
                  var5 = true;
               } else {
                  var5 = false;
               }

               if (!var5) {
                  return false;
               }
            }
         }

         ArrayList var1 = webdata.getViewableVideoPlanCampaigns();
         if (var1 != null && var1.size() != 0) {
            UnityAdsCampaign var2 = (UnityAdsCampaign)var1.get(0);
            if (var2.allowStreamingVideo() || cachemanager.isCampaignCached(var2, true)) {
               return true;
            }
         }
      }

      return false;
   }

   public static boolean canShowAds() {
      return canShow();
   }

   private static void cancelPauseScreenTimer() {
      if (_pauseScreenTimer != null) {
         _pauseScreenTimer.cancel();
      }

      if (_pauseTimer != null) {
         _pauseTimer.cancel();
         _pauseTimer.purge();
      }

      _pauseScreenTimer = null;
      _pauseTimer = null;
   }

   public static void changeActivity(Activity var0) {
      if (var0 == null) {
         UnityAdsDeviceLog.debug("changeActivity: null, ignoring");
      } else {
         UnityAdsDeviceLog.debug("changeActivity: " + var0.getClass().getName());
         if (var0 != null && !var0.equals(UnityAdsProperties.getCurrentActivity())) {
            UnityAdsProperties.CURRENT_ACTIVITY = new WeakReference(var0);
            if (var0 != null && var0 instanceof UnityAdsFullscreenActivity) {
               boolean var1 = _openRequestFromDeveloper;
               String var2 = null;
               if (var1) {
                  var2 = "start";
                  UnityAdsDeviceLog.debug("This open request is from the developer, setting start view");
               }

               if (var2 != null) {
                  setupViews();
                  open(var2);
               }

               _openRequestFromDeveloper = false;
               return;
            }

            UnityAdsProperties.BASE_ACTIVITY = new WeakReference(var0);
            return;
         }
      }

   }

   public static void checkMainview() {
      if (_fixMainview) {
         _fixMainview = false;
         if (mainview != null) {
            mainview.fixActivityAttachment();
         }
      }

   }

   private static void close() {
      cancelPauseScreenTimer();
      if (UnityAdsProperties.getCurrentActivity() != null && UnityAdsProperties.getCurrentActivity() instanceof UnityAdsFullscreenActivity) {
         UnityAds.UnityAdsCloseRunner var0 = new UnityAds.UnityAdsCloseRunner();
         (new Handler(Looper.getMainLooper())).postDelayed(var0, 1L);
      } else {
         UnityAdsDeviceLog.debug("Did not close");
      }
   }

   private static void createPauseScreenTimer() {
      _pauseScreenTimer = new TimerTask() {
         public void run() {
            Activity var1 = UnityAdsProperties.getCurrentActivity();
            if (var1 != null && !((PowerManager)var1.getBaseContext().getSystemService("power")).isScreenOn()) {
               if (UnityAds.mainview != null && UnityAds.mainview.webview != null && UnityAds.mainview.webview.isWebAppLoaded()) {
                  UnityAds.mainview.webview.sendNativeEventToWebApp("hideSpinner", new JSONObject());
                  UnityAds.close();
               }

               UnityAds.cancelPauseScreenTimer();
            }

         }
      };
      _pauseTimer = new Timer();
      _pauseTimer.scheduleAtFixedRate(_pauseScreenTimer, 0L, 50L);
   }

   public static void enableUnityDeveloperInternalTestMode() {
      UnityAdsProperties.CAMPAIGN_DATA_URL = "https://impact.staging.applifier.com/mobile/campaigns";
      UnityAdsProperties.UNITY_DEVELOPER_INTERNAL_TEST = true;
   }

   public static String getCurrentRewardItemKey() {
      UnityAdsZone var0 = UnityAdsWebData.getZoneManager().getCurrentZone();
      return var0 != null && var0.isIncentivized() ? ((UnityAdsIncentivizedZone)var0).itemManager().getCurrentItem().getKey() : null;
   }

   public static String getDefaultRewardItemKey() {
      UnityAdsZone var0 = UnityAdsWebData.getZoneManager().getCurrentZone();
      return var0 != null && var0.isIncentivized() ? ((UnityAdsIncentivizedZone)var0).itemManager().getDefaultItem().getKey() : null;
   }

   public static Map getRewardItemDetailsWithKey(String var0) {
      UnityAdsZone var1 = UnityAdsWebData.getZoneManager().getCurrentZone();
      if (var1 != null && var1.isIncentivized()) {
         UnityAdsRewardItem var2 = ((UnityAdsIncentivizedZone)var1).itemManager().getItem(var0);
         if (var2 != null) {
            return var2.getDetails();
         }

         UnityAdsDeviceLog.info("Could not fetch reward item: " + var0);
      }

      return null;
   }

   public static ArrayList getRewardItemKeys() {
      UnityAdsZone var0 = UnityAdsWebData.getZoneManager().getCurrentZone();
      ArrayList var1;
      if (var0 != null && var0.isIncentivized()) {
         ArrayList var2 = ((UnityAdsIncentivizedZone)var0).itemManager().allItems();
         var1 = new ArrayList();
         Iterator var3 = var2.iterator();

         while(var3.hasNext()) {
            var1.add(((UnityAdsRewardItem)var3.next()).getKey());
         }
      } else {
         var1 = null;
      }

      return var1;
   }

   public static String getSDKVersion() {
      return "1401";
   }

   public static void handleFullscreenDestroy() {
      if (_singleTaskApplication) {
         hideOperations();
      } else if (_showingAds) {
         _fixMainview = true;
         return;
      }

   }

   public static boolean hasMultipleRewardItems() {
      UnityAdsZone var0 = UnityAdsWebData.getZoneManager().getCurrentZone();
      if (var0 != null && var0.isIncentivized()) {
         return ((UnityAdsIncentivizedZone)var0).itemManager().itemCount() > 1;
      } else {
         return false;
      }
   }

   private static boolean hasViewableAds() {
      return webdata != null && webdata.getViewableVideoPlanCampaigns() != null && webdata.getViewableVideoPlanCampaigns().size() > 0;
   }

   public static boolean hide() {
      if (_showingAds) {
         close();
         return true;
      } else {
         return false;
      }
   }

   private static void hideOperations() {
      if (!_hidingHandled) {
         short var0 = 30;
         if (_singleTaskApplication) {
            var0 = 250;
         }

         (new Handler(Looper.getMainLooper())).postDelayed(new Runnable() {
            public void run() {
               if (!UnityAds._hidingHandled) {
                  UnityAds._hidingHandled = true;
                  JSONObject var2 = new JSONObject();

                  try {
                     var2.put("action", "close");
                  } catch (Exception var4) {
                     return;
                  }

                  if (UnityAds.mainview != null && UnityAds.mainview.webview != null) {
                     UnityAds.mainview.webview.setWebViewCurrentView("none", var2);
                  }

                  if (UnityAds.mainview != null) {
                     UnityAds.mainview.closeAds(var2);
                     UnityAds.mainview = null;
                  }

                  UnityAds._showingAds = false;
                  if (UnityAds._adsListener != null) {
                     UnityAds._adsListener.onHide();
                  }

                  UnityAds.refreshCampaignsOrCacheNextVideo();
               }
            }
         }, (long)var0);
      }
   }

   public static void init(final Activity var0, String var1, IUnityAdsListener var2) {
      if (_instance == null && !_initialized) {
         if (var1 != null && var1.length() != 0) {
            try {
               if (Integer.parseInt(var1) <= 0) {
                  throw new IllegalArgumentException("gameId is invalid");
               }
            } catch (NumberFormatException var17) {
               throw new IllegalArgumentException("gameId does not parse as an integer");
            }

            UnityAdsDeviceLog.info("Initializing Unity Ads with gameId " + var1);

            try {
               Class.forName("com.unity3d.ads.android.webapp.UnityAdsWebBridge").getMethod("handleWebEvent", new Class[]{String.class, String.class});
               UnityAdsDeviceLog.debug("UnityAds ProGuard check OK");
            } catch (ClassNotFoundException var12) {
               UnityAdsDeviceLog.error("UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.UnityAdsWebBridge class not found, check ProGuard settings");
               return;
            } catch (NoSuchMethodException var13) {
               UnityAdsDeviceLog.error("UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent method not found, check ProGuard settings");
               return;
            } catch (Exception var14) {
               UnityAdsDeviceLog.debug("UnityAds ProGuard check: Unknown exception: " + var14);
            }

            String var5 = var0.getPackageName();
            PackageManager var6 = var0.getPackageManager();
            if (var5 != null && var6 != null) {
               label57: {
                  label75: {
                     boolean var10001;
                     PackageInfo var8;
                     try {
                        var8 = var6.getPackageInfo(var5, 1);
                     } catch (Exception var16) {
                        var10001 = false;
                        break label75;
                     }

                     int var9 = 0;

                     while(true) {
                        try {
                           if (var9 >= var8.activities.length) {
                              break label57;
                           }

                           if (var8.activities[var9].launchMode == 2) {
                              _singleTaskApplication = true;
                              UnityAdsDeviceLog.debug("Running in singleTask application mode");
                           }
                        } catch (Exception var15) {
                           var10001 = false;
                           break;
                        }

                        ++var9;
                     }
                  }

                  UnityAdsDeviceLog.debug("Error while checking singleTask activities");
               }
            }

            if (_instance == null) {
               _instance = new UnityAds();
            }

            setListener(var2);
            UnityAdsProperties.UNITY_ADS_GAME_ID = var1;
            UnityAdsProperties.BASE_ACTIVITY = new WeakReference(var0);
            UnityAdsProperties.CURRENT_ACTIVITY = new WeakReference(var0);
            UnityAdsVideoPausedView.initScreenMetrics(var0);
            UnityAdsDeviceLog.debug("Is debuggable=" + UnityAdsUtils.isDebuggable(var0));
            cachemanager = new UnityAdsCacheManager();
            cachemanager.setDownloadListener(_instance);
            webdata = new UnityAdsWebData();
            webdata.setWebDataListener(_instance);
            (new Thread(new Runnable() {
               public void run() {
                  UnityAdsAdvertisingId.init(var0);
                  if (UnityAds.webdata.initCampaigns()) {
                     UnityAds._initialized = true;
                  }

               }
            })).start();
         } else {
            throw new IllegalArgumentException("gameId is empty");
         }
      }
   }

   private static void initCache() {
      UnityAdsDeviceLog.entered();
      if (_initialized) {
         cachemanager.updateCache(webdata.getVideoPlanCampaigns());
      }

   }

   public static boolean isSupported() {
      return VERSION.SDK_INT >= 9;
   }

   private static void open(final String var0) {
      Boolean var1 = true;
      final JSONObject var2 = new JSONObject();

      try {
         UnityAdsZone var4 = UnityAdsWebData.getZoneManager().getCurrentZone();
         var2.put("action", "open");
         var2.put("zone", var4.getZoneId());
         if (var4.isIncentivized()) {
            var2.put("itemKey", ((UnityAdsIncentivizedZone)var4).itemManager().getCurrentItem().getKey());
         }
      } catch (Exception var5) {
         var1 = false;
      }

      UnityAdsDeviceLog.debug("DataOk: " + var1);
      if (var1 && var0 != null) {
         UnityAdsDeviceLog.debug("Opening with view:" + var0 + " and data:" + var2.toString());
         if (mainview != null) {
            (new Thread(new Runnable() {
               public void run() {
                  if (!UnityAds.mainview.webview.isWebAppLoadComplete()) {
                     UnityAds.mainview.webview.waitForWebAppLoadComplete();
                  }

                  UnityAdsUtils.runOnUiThread(new Runnable() {
                     public void run() {
                        if (UnityAds.mainview != null) {
                           UnityAds.mainview.openAds(var0, var2);
                           if (UnityAdsWebData.getZoneManager().getCurrentZone().noOfferScreen()) {
                              UnityAds.playVideo();
                           }

                           if (UnityAds._adsListener != null) {
                              UnityAds._adsListener.onShow();
                           }

                        } else {
                           UnityAdsDeviceLog.error("mainview null after open, closing");
                           UnityAds.close();
                        }
                     }
                  });
               }
            })).start();
         }
      }

   }

   private static void openPlayStoreAsIntent(String var0) {
      UnityAdsDeviceLog.debug("Opening playstore activity with storeId: " + var0);
      if (UnityAdsProperties.getCurrentActivity() != null) {
         try {
            UnityAdsProperties.getCurrentActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + var0)));
         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Couldn't start PlayStore intent!");
            return;
         }
      }

   }

   private static void openPlayStoreInBrowser(String var0) {
      UnityAdsDeviceLog.debug("Opening playStore in browser: " + var0);
      if (UnityAdsProperties.getCurrentActivity() != null) {
         try {
            UnityAdsProperties.getCurrentActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(var0)));
         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Couldn't start browser intent!");
            return;
         }
      }

   }

   private static void playVideo() {
      playVideo(0L);
   }

   private static void playVideo(long var0) {
      if (_preventVideoDoubleStart) {
         UnityAdsDeviceLog.debug("Prevent double start of video playback");
      } else {
         _preventVideoDoubleStart = true;
         UnityAdsDeviceLog.debug("Running threaded");
         UnityAdsUtils.runOnUiThread(new UnityAds.UnityAdsPlayVideoRunner(), var0);
      }
   }

   private static void refreshCampaignsOrCacheNextVideo() {
      if (_refreshAfterShowAds) {
         _refreshAfterShowAds = false;
         UnityAdsDeviceLog.debug("Starting delayed ad plan refresh");
         if (webdata != null) {
            webdata.initCampaigns();
         }
      } else if (_campaignRefreshTimerDeadline > 0L && SystemClock.elapsedRealtime() > _campaignRefreshTimerDeadline) {
         removeCampaignRefreshTimer();
         UnityAdsDeviceLog.debug("Refreshing ad plan from server due to timer deadline");
         if (webdata != null) {
            webdata.initCampaigns();
            return;
         }
      } else if (UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_MAX > 0 && UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_COUNT >= UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_MAX) {
         UnityAdsDeviceLog.debug("Refreshing ad plan from server due to endscreen limit");
         if (webdata != null) {
            webdata.initCampaigns();
            return;
         }
      } else {
         if (webdata != null && webdata.getVideoPlanCampaigns() != null) {
            if (webdata.getViewableVideoPlanCampaigns().size() == 0) {
               UnityAdsDeviceLog.debug("All available videos watched, refreshing ad plan from server");
               if (webdata != null) {
                  webdata.initCampaigns();
                  return;
               }

               return;
            }
         } else {
            UnityAdsDeviceLog.error("Unable to read video data to determine if ad plans should be refreshed");
         }

         if (webdata != null) {
            ArrayList var0 = webdata.getViewableVideoPlanCampaigns();
            if (var0 != null && var0.size() > 0) {
               UnityAdsCampaign var1 = (UnityAdsCampaign)var0.get(0);
               if (!cachemanager.isCampaignCached(var1, false) && var1.allowCacheVideo()) {
                  cachemanager.cacheNextVideo(var1);
                  return;
               }
            }
         }
      }

   }

   private static void removeCampaignRefreshTimer() {
      _campaignRefreshTimerDeadline = 0L;
      if (_campaignRefreshTimer != null) {
         _campaignRefreshTimer.cancel();
      }

   }

   private static void sendReadyEvent() {
      if (!_adsReadySent && _adsListener != null) {
         UnityAdsUtils.runOnUiThread(new Runnable() {
            public void run() {
               if (!UnityAds._adsReadySent) {
                  UnityAdsDeviceLog.debug("Unity Ads ready.");
                  UnityAds._adsListener.onFetchCompleted();
                  UnityAds._adsReadySent = true;
               }

            }
         });
      }

   }

   public static void setCampaignDataURL(String var0) {
      UnityAdsProperties.CAMPAIGN_DATA_URL = var0;
   }

   public static void setDebugMode(boolean var0) {
      if (var0) {
         UnityAdsDeviceLog.setLogLevel(UnityAdsDeviceLog.LOGLEVEL_DEBUG);
      } else {
         UnityAdsDeviceLog.setLogLevel(UnityAdsDeviceLog.LOGLEVEL_INFO);
      }
   }

   public static void setDefaultRewardItemAsRewardItem() {
      if (canShow()) {
         UnityAdsZone var0 = UnityAdsWebData.getZoneManager().getCurrentZone();
         if (var0 != null && var0.isIncentivized()) {
            UnityAdsRewardItemManager var1 = ((UnityAdsIncentivizedZone)var0).itemManager();
            var1.setCurrentItem(var1.getDefaultItem().getKey());
         }
      }

   }

   public static void setListener(IUnityAdsListener var0) {
      _adsListener = var0;
   }

   public static boolean setRewardItemKey(String var0) {
      if (canShow()) {
         UnityAdsZone var1 = UnityAdsWebData.getZoneManager().getCurrentZone();
         if (var1 != null && var1.isIncentivized()) {
            return ((UnityAdsIncentivizedZone)var1).itemManager().setCurrentItem(var0);
         }
      }

      return false;
   }

   public static void setTestDeveloperId(String var0) {
      UnityAdsProperties.TEST_DEVELOPER_ID = var0;
   }

   public static void setTestMode(boolean var0) {
      UnityAdsProperties.TESTMODE_ENABLED = var0;
   }

   public static void setTestOptionsId(String var0) {
      UnityAdsProperties.TEST_OPTIONS_ID = var0;
   }

   public static boolean setZone(String var0) {
      if (!_showingAds) {
         if (UnityAdsWebData.getZoneManager() == null) {
            throw new IllegalStateException("Unable to set zone before campaigns are available");
         } else {
            return UnityAdsWebData.getZoneManager().setCurrentZone(var0);
         }
      } else {
         return false;
      }
   }

   public static boolean setZone(String var0, String var1) {
      if (!_showingAds && setZone(var0)) {
         UnityAdsZone var2 = UnityAdsWebData.getZoneManager().getCurrentZone();
         if (var2.isIncentivized()) {
            return ((UnityAdsIncentivizedZone)var2).itemManager().setCurrentItem(var1);
         }
      }

      return false;
   }

   private static void setup() {
      initCache();
   }

   private static void setupCampaignRefreshTimer() {
      removeCampaignRefreshTimer();
      if (UnityAdsProperties.CAMPAIGN_REFRESH_SECONDS > 0) {
         _campaignRefreshTimerTask = new TimerTask() {
            public void run() {
               if (!UnityAds._showingAds) {
                  UnityAdsDeviceLog.debug("Refreshing ad plan to get new data");
                  UnityAds.webdata.initCampaigns();
               } else {
                  UnityAdsDeviceLog.debug("Refreshing ad plan after current ad");
                  UnityAds._refreshAfterShowAds = true;
               }
            }
         };
         _campaignRefreshTimerDeadline = SystemClock.elapsedRealtime() + (long)(1000 * UnityAdsProperties.CAMPAIGN_REFRESH_SECONDS);
         _campaignRefreshTimer = new Timer();
         _campaignRefreshTimer.schedule(_campaignRefreshTimerTask, (long)(1000 * UnityAdsProperties.CAMPAIGN_REFRESH_SECONDS));
      }

   }

   private static void setupViews() {
      if (mainview != null) {
         UnityAdsDeviceLog.debug("View was not destroyed, trying to destroy it");
         mainview.webview.destroy();
         mainview = null;
      }

      if (mainview == null) {
         mainview = new UnityAdsMainView(UnityAdsProperties.getCurrentActivity(), _instance, _instance);
      }

   }

   public static boolean show() {
      return show((Map)null);
   }

   public static boolean show(Map var0) {
      if (canShow()) {
         UnityAdsZone var1 = UnityAdsWebData.getZoneManager().getCurrentZone();
         if (var1 != null) {
            UnityAdsDownloader.stopAllDownloads();
            var1.mergeOptions(var0);
            if (var1.noOfferScreen()) {
               ArrayList var2 = webdata.getViewableVideoPlanCampaigns();
               if (var2.size() > 0) {
                  UnityAdsCampaign var3 = (UnityAdsCampaign)var2.get(0);
                  UnityAdsProperties.SELECTED_CAMPAIGN = var3;
                  if (var2.size() > 1) {
                     UnityAdsCampaign var4 = (UnityAdsCampaign)var2.get(1);
                     if (cachemanager.isCampaignCached(var3, true) && !cachemanager.isCampaignCached(var4, true) && var4.allowCacheVideo()) {
                        cachemanager.cacheNextVideo(var4);
                     }
                  }
               }
            }

            UnityAdsDeviceLog.info("Launching ad from \"" + var1.getZoneName() + "\", options: " + var1.getZoneOptions().toString());
            _openRequestFromDeveloper = true;
            _showingAds = true;
            _preventVideoDoubleStart = false;
            _hidingHandled = false;
            UnityAdsProperties.SELECTED_CAMPAIGN_CACHED = false;
            startFullscreenActivity();
            return _showingAds;
         } else {
            UnityAdsDeviceLog.error("Unity Ads current zone is null");
            return false;
         }
      } else {
         UnityAdsDeviceLog.error("Unity Ads not ready to show ads");
         return false;
      }
   }

   private static void startFullscreenActivity() {
      Intent var0 = new Intent(UnityAdsProperties.getCurrentActivity(), UnityAdsFullscreenActivity.class);
      int var1 = 268500992;
      if (UnityAdsWebData.getZoneManager().getCurrentZone().openAnimated()) {
         var1 = 268435456;
      }

      var0.addFlags(var1);

      try {
         UnityAdsProperties.getBaseActivity().startActivity(var0);
      } catch (ActivityNotFoundException var5) {
         UnityAdsDeviceLog.error("Could not find UnityAdsFullScreenActivity (failed Android manifest merging?): " + var5.getStackTrace());
      } catch (Exception var6) {
         UnityAdsDeviceLog.error("Weird error: " + var6.getStackTrace());
      }
   }

   public void onAllCampaignsReady() {
      UnityAdsDeviceLog.entered();
   }

   public void onCampaignReady(UnityAdsCampaignHandler var1) {
      if (var1 != null && var1.getCampaign() != null) {
         UnityAdsDeviceLog.debug(var1.getCampaign().toString());
         if (hasViewableAds()) {
            sendReadyEvent();
            return;
         }
      }

   }

   public void onCampaignUpdateStarted() {
      UnityAdsDeviceLog.debug("Campaign updates started.");
   }

   public void onCloseAdsView(JSONObject var1) {
      hide();
   }

   public void onMainViewAction(UnityAdsMainView.UnityAdsMainViewAction var1) {
      switch(var1) {
      case BackButtonPressed:
         if (_showingAds) {
            close();
            return;
         }
         break;
      case VideoStart:
         if (_adsListener != null) {
            _adsListener.onVideoStarted();
         }

         cancelPauseScreenTimer();
         return;
      case VideoEnd:
         ++UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_COUNT;
         if (_adsListener != null && UnityAdsProperties.SELECTED_CAMPAIGN != null && !UnityAdsProperties.SELECTED_CAMPAIGN.isViewed()) {
            UnityAdsDeviceLog.info("Unity Ads video completed");
            UnityAdsProperties.SELECTED_CAMPAIGN.setCampaignStatus(UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED);
            _adsListener.onVideoCompleted(getCurrentRewardItemKey(), false);
            return;
         }
         break;
      case VideoSkipped:
         ++UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_COUNT;
         if (_adsListener != null && UnityAdsProperties.SELECTED_CAMPAIGN != null && !UnityAdsProperties.SELECTED_CAMPAIGN.isViewed()) {
            UnityAdsDeviceLog.info("Unity Ads video skipped");
            UnityAdsProperties.SELECTED_CAMPAIGN.setCampaignStatus(UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED);
            _adsListener.onVideoCompleted(getCurrentRewardItemKey(), true);
            return;
         }
         break;
      case RequestRetryVideoPlay:
         UnityAdsDeviceLog.debug("Retrying video play, because something went wrong.");
         _preventVideoDoubleStart = false;
         playVideo(300L);
         return;
      }

   }

   public void onOpenPlayStore(JSONObject var1) {
      UnityAdsDeviceLog.entered();
      if (var1 != null) {
         UnityAdsDeviceLog.debug(var1.toString());
         Boolean var2 = false;
         boolean var3 = var1.has("iTunesId");
         String var4 = null;
         if (var3) {
            label56: {
               String var12;
               try {
                  var12 = var1.getString("iTunesId");
               } catch (Exception var15) {
                  UnityAdsDeviceLog.error("Could not fetch playStoreId");
                  var4 = null;
                  break label56;
               }

               var4 = var12;
            }
         }

         boolean var5 = var1.has("clickUrl");
         String var6 = null;
         if (var5) {
            label57: {
               String var10;
               try {
                  var10 = var1.getString("clickUrl");
               } catch (Exception var14) {
                  UnityAdsDeviceLog.error("Could not fetch clickUrl");
                  var6 = null;
                  break label57;
               }

               var6 = var10;
            }
         }

         if (var1.has("bypassAppSheet")) {
            label58: {
               Boolean var8;
               try {
                  var8 = var1.getBoolean("bypassAppSheet");
               } catch (Exception var13) {
                  UnityAdsDeviceLog.error("Could not fetch bypassAppSheet");
                  break label58;
               }

               var2 = var8;
            }
         }

         if (var4 != null && !var2) {
            openPlayStoreAsIntent(var4);
         } else if (var6 != null) {
            openPlayStoreInBrowser(var6);
            return;
         }
      }

   }

   public void onOrientationRequest(JSONObject var1) {
      ((Activity)UnityAdsProperties.CURRENT_ACTIVITY.get()).setRequestedOrientation(var1.optInt("orientation", -1));
   }

   public void onPauseVideo(JSONObject var1) {
   }

   public void onPlayVideo(JSONObject var1) {
      UnityAdsDeviceLog.entered();
      if (var1.has("campaignId")) {
         String var3;
         label50: {
            String var7;
            try {
               var7 = var1.getString("campaignId");
            } catch (Exception var9) {
               UnityAdsDeviceLog.error("Could not get campaignId");
               var3 = null;
               break label50;
            }

            var3 = var7;
         }

         if (var3 != null) {
            if (webdata != null && webdata.getCampaignById(var3) != null) {
               UnityAdsProperties.SELECTED_CAMPAIGN = webdata.getCampaignById(var3);
            }

            if (UnityAdsProperties.SELECTED_CAMPAIGN != null && UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId() != null && UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId().equals(var3)) {
               Boolean var4 = false;

               label40: {
                  Boolean var6;
                  try {
                     var6 = var1.getBoolean("rewatch");
                  } catch (Exception var8) {
                     break label40;
                  }

                  var4 = var6;
               }

               UnityAdsDeviceLog.debug("Selected campaign=" + UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId() + " isViewed: " + UnityAdsProperties.SELECTED_CAMPAIGN.isViewed());
               if (UnityAdsProperties.SELECTED_CAMPAIGN != null && (var4 || !UnityAdsProperties.SELECTED_CAMPAIGN.isViewed())) {
                  if (var4) {
                     _preventVideoDoubleStart = false;
                  }

                  playVideo();
               }
            }
         }
      }

   }

   public void onWebAppInitComplete(JSONObject var1) {
      UnityAdsDeviceLog.entered();
      Boolean var2 = true;
      if (hasViewableAds()) {
         JSONObject var3 = new JSONObject();

         try {
            var3.put("action", "initComplete");
         } catch (Exception var5) {
            var2 = false;
         }

         if (var2) {
            mainview.webview.setWebViewCurrentView("start", var3);
            sendReadyEvent();
         }
      }

   }

   public void onWebAppLoadComplete(JSONObject var1) {
      UnityAdsDeviceLog.entered();
      mainview.webview.setWebAppLoadComplete();
   }

   public void onWebDataCompleted() {
      UnityAdsDeviceLog.entered();
      boolean var1 = true;
      JSONObject var2 = webdata.getData();
      boolean var3 = false;
      if (var2 != null) {
         boolean var4 = webdata.getData().has("data");
         var3 = false;
         if (var4) {
            JSONObject var6;
            label35: {
               JSONObject var9;
               try {
                  var9 = webdata.getData().getJSONObject("data");
               } catch (Exception var11) {
                  var3 = true;
                  var6 = null;
                  break label35;
               }

               var6 = var9;
            }

            if (!var3) {
               setupCampaignRefreshTimer();
               if (var6.has("sdkIsCurrent")) {
                  label30: {
                     boolean var8;
                     try {
                        var8 = var6.getBoolean("sdkIsCurrent");
                     } catch (Exception var10) {
                        var3 = true;
                        break label30;
                     }

                     var1 = var8;
                  }
               }
            }
         }
      }

      if (!var3 && !var1 && UnityAdsProperties.getCurrentActivity() != null && UnityAdsUtils.isDebuggable(UnityAdsProperties.getCurrentActivity())) {
         _alertDialog = (new Builder(UnityAdsProperties.getCurrentActivity())).create();
         _alertDialog.setTitle("Unity Ads");
         _alertDialog.setMessage("You are not running the latest version of Unity Ads android. Please update your version (this dialog won't appear in release builds).");
         _alertDialog.setButton("OK", new OnClickListener() {
            public void onClick(DialogInterface var1, int var2) {
               UnityAds._alertDialog.dismiss();
            }
         });
         _alertDialog.show();
      }

      setup();
   }

   public void onWebDataFailed() {
      if (_adsListener != null && !_adsReadySent) {
         _adsListener.onFetchFailed();
      }

   }

   private static class UnityAdsCloseRunner implements Runnable {
      private UnityAdsCloseRunner() {
      }

      // $FF: synthetic method
      UnityAdsCloseRunner(Object var1) {
         this();
      }

      public void run() {
         if (UnityAdsProperties.getCurrentActivity() != null && UnityAdsProperties.getCurrentActivity() instanceof UnityAdsFullscreenActivity) {
            Activity var1 = UnityAdsProperties.getCurrentActivity();
            if (var1 != null && var1 instanceof UnityAdsFullscreenActivity && !var1.isFinishing() && !UnityAdsProperties.isActivityDestroyed(var1)) {
               var1.finish();
               if (UnityAdsWebData.getZoneManager() != null && !UnityAdsWebData.getZoneManager().getCurrentZone().openAnimated()) {
                  var1.overridePendingTransition(0, 0);
               }
            }
         }

         UnityAds.hideOperations();
      }
   }

   private static class UnityAdsPlayVideoRunner implements Runnable {
      private UnityAdsPlayVideoRunner() {
      }

      // $FF: synthetic method
      UnityAdsPlayVideoRunner(Object var1) {
         this();
      }

      public void run() {
         UnityAdsDeviceLog.entered();
         if (UnityAdsProperties.SELECTED_CAMPAIGN != null) {
            UnityAdsDeviceLog.debug("Selected campaign found");
            JSONObject var1 = new JSONObject();

            try {
               var1.put("textKey", "buffering");
            } catch (Exception var5) {
               UnityAdsDeviceLog.error("Couldn't create data JSON");
               return;
            }

            UnityAds.mainview.webview.sendNativeEventToWebApp("showSpinner", var1);
            UnityAds.createPauseScreenTimer();
            String var4;
            if (!UnityAds.cachemanager.isCampaignCached(UnityAdsProperties.SELECTED_CAMPAIGN, true)) {
               var4 = UnityAdsProperties.SELECTED_CAMPAIGN.getVideoStreamUrl();
               UnityAdsProperties.SELECTED_CAMPAIGN_CACHED = false;
            } else {
               var4 = UnityAdsUtils.getCacheDirectory() + "/" + UnityAdsProperties.SELECTED_CAMPAIGN.getVideoFilename();
               UnityAdsProperties.SELECTED_CAMPAIGN_CACHED = true;
            }

            UnityAds.mainview.setViewState(UnityAdsMainView.UnityAdsMainViewState.VideoPlayer);
            UnityAdsDeviceLog.debug("Start videoplayback with: " + var4);
            UnityAds.mainview.videoplayerview.playVideo(var4);
         } else {
            UnityAdsDeviceLog.error("Campaign is null");
         }
      }
   }
}
