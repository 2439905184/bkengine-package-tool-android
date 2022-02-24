package com.unity3d.ads.android.webapp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.data.UnityAdsDevice;
import com.unity3d.ads.android.item.UnityAdsRewardItemManager;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.zone.UnityAdsIncentivizedZone;
import com.unity3d.ads.android.zone.UnityAdsZone;
import com.unity3d.ads.android.zone.UnityAdsZoneManager;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.util.ByteArrayBuffer;
import org.json.JSONArray;
import org.json.JSONObject;

@TargetApi(9)
public class UnityAdsWebData {
   private static UnityAdsZoneManager _zoneManager = null;
   private static boolean installedAppsSent = false;
   private static boolean whitelistRequested = false;
   private JSONObject _campaignJson = null;
   private ArrayList _campaigns = null;
   private UnityAdsWebData.UnityAdsUrlLoader _currentLoader = null;
   private ArrayList _failedUrlLoaders = null;
   private boolean _initInProgress = false;
   private boolean _isLoading = false;
   private IUnityAdsWebDataListener _listener = null;
   private int _totalLoadersCreated = 0;
   private int _totalLoadersHaveRun = 0;
   private int _totalUrlsSent = 0;
   private Object _urlLoaderLock = null;
   private ArrayList _urlLoaders = null;

   public UnityAdsWebData() {
      this._urlLoaderLock = new Object();
   }

   // $FF: synthetic method
   static int access$308(UnityAdsWebData var0) {
      int var1 = var0._totalLoadersCreated++;
      return var1;
   }

   // $FF: synthetic method
   static int access$408(UnityAdsWebData var0) {
      int var1 = var0._totalLoadersHaveRun++;
      return var1;
   }

   private void addLoader(UnityAdsWebData.UnityAdsUrlLoader var1) {
      Object var2 = this._urlLoaderLock;
      synchronized(var2){}

      Throwable var10000;
      boolean var10001;
      label122: {
         try {
            if (this._urlLoaders == null) {
               this._urlLoaders = new ArrayList();
            }
         } catch (Throwable var17) {
            var10000 = var17;
            var10001 = false;
            break label122;
         }

         label119:
         try {
            this._urlLoaders.add(var1);
            return;
         } catch (Throwable var16) {
            var10000 = var16;
            var10001 = false;
            break label119;
         }
      }

      while(true) {
         Throwable var3 = var10000;

         try {
            throw var3;
         } catch (Throwable var15) {
            var10000 = var15;
            var10001 = false;
            continue;
         }
      }
   }

   private void campaignDataFailed() {
      if (this._listener != null) {
         this._listener.onWebDataFailed();
      }

   }

   private void campaignDataReceived(String var1) {
      Boolean var2 = true;
      this._initInProgress = false;

      Exception var10000;
      label241: {
         boolean var8;
         boolean var10001;
         try {
            this._campaignJson = new JSONObject(var1);
            var8 = this._campaignJson.has("data");
         } catch (Exception var41) {
            var10000 = var41;
            var10001 = false;
            break label241;
         }

         if (var8) {
            label245: {
               JSONObject var10;
               label234: {
                  JSONObject var18;
                  try {
                     var18 = this._campaignJson.getJSONObject("data");
                  } catch (Exception var39) {
                     try {
                        UnityAdsDeviceLog.error("Malformed data JSON");
                     } catch (Exception var38) {
                        var10000 = var38;
                        var10001 = false;
                        break label245;
                     }

                     var10 = null;
                     break label234;
                  }

                  var10 = var18;
               }

               try {
                  if (!var10.has("webViewUrl")) {
                     var2 = false;
                  }
               } catch (Exception var37) {
                  var10000 = var37;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (!var10.has("analyticsUrl")) {
                     var2 = false;
                  }
               } catch (Exception var36) {
                  var10000 = var36;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (!var10.has("impactUrl")) {
                     var2 = false;
                  }
               } catch (Exception var35) {
                  var10000 = var35;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (!var10.has("gamerId")) {
                     var2 = false;
                  }
               } catch (Exception var34) {
                  var10000 = var34;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (!var10.has("campaigns")) {
                     var2 = false;
                  }
               } catch (Exception var33) {
                  var10000 = var33;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (!var10.has("zones")) {
                     var2 = false;
                  }
               } catch (Exception var32) {
                  var10000 = var32;
                  var10001 = false;
                  break label245;
               }

               label247: {
                  JSONArray var13;
                  try {
                     if (!var2) {
                        break label247;
                     }

                     var13 = var10.getJSONArray("campaigns");
                  } catch (Exception var31) {
                     var10000 = var31;
                     var10001 = false;
                     break label245;
                  }

                  ArrayList var14 = null;
                  if (var13 != null) {
                     try {
                        var14 = this.deserializeCampaigns(var13);
                     } catch (Exception var27) {
                        var10000 = var27;
                        var10001 = false;
                        break label245;
                     }
                  }

                  label248: {
                     String var15;
                     try {
                        if (!var10.has("appFiltering")) {
                           break label248;
                        }

                        var15 = var10.getString("appFiltering");
                     } catch (Exception var29) {
                        var10000 = var29;
                        var10001 = false;
                        break label245;
                     }

                     if (var15 != null) {
                        label250: {
                           try {
                              if (!var15.equals("simple") && !var15.equals("advanced")) {
                                 break label250;
                              }
                           } catch (Exception var30) {
                              var10000 = var30;
                              var10001 = false;
                              break label245;
                           }

                           try {
                              if (var15.equals("advanced") && var10.has("installedAppsUrl") && var10.has("appWhitelist")) {
                                 UnityAdsProperties.INSTALLED_APPS_URL = var10.getString("installedAppsUrl");
                                 this.requestAppWhitelist(var10.getString("appWhitelist"));
                              }
                           } catch (Exception var26) {
                              var10000 = var26;
                              var10001 = false;
                              break label245;
                           }

                           if (var14 != null) {
                              label251: {
                                 ArrayList var16;
                                 try {
                                    if (var14.size() <= 0) {
                                       break label251;
                                    }

                                    var16 = this.filterCampaigns(var14);
                                 } catch (Exception var28) {
                                    var10000 = var28;
                                    var10001 = false;
                                    break label245;
                                 }

                                 if (var16 != null) {
                                    try {
                                       if (var16.size() == 0) {
                                          this.initCampaigns();
                                          return;
                                       }
                                    } catch (Exception var25) {
                                       var10000 = var25;
                                       var10001 = false;
                                       break label245;
                                    }
                                 }

                                 var14 = var16;
                              }
                           }
                        }
                     }
                  }

                  try {
                     this._campaigns = var14;
                  } catch (Exception var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label245;
                  }
               }

               try {
                  if (this._campaigns == null) {
                     this._campaigns = new ArrayList();
                  }
               } catch (Exception var23) {
                  var10000 = var23;
                  var10001 = false;
                  break label245;
               }

               try {
                  UnityAdsDeviceLog.debug("Parsed total of " + this._campaigns.size() + " campaigns");
                  UnityAdsProperties.WEBVIEW_BASE_URL = var10.getString("webViewUrl");
                  UnityAdsProperties.ANALYTICS_BASE_URL = var10.getString("analyticsUrl");
                  UnityAdsProperties.UNITY_ADS_BASE_URL = var10.getString("impactUrl");
                  UnityAdsProperties.UNITY_ADS_GAMER_ID = var10.getString("gamerId");
                  if (var10.has("refreshCampaignsAfterViewed")) {
                     UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_COUNT = 0;
                     UnityAdsProperties.CAMPAIGN_REFRESH_VIEWS_MAX = var10.getInt("refreshCampaignsAfterViewed");
                  }
               } catch (Exception var22) {
                  var10000 = var22;
                  var10001 = false;
                  break label245;
               }

               try {
                  if (var10.has("refreshCampaignsAfterSeconds")) {
                     UnityAdsProperties.CAMPAIGN_REFRESH_SECONDS = var10.getInt("refreshCampaignsAfterSeconds");
                  }
               } catch (Exception var21) {
                  var10000 = var21;
                  var10001 = false;
                  break label245;
               }

               label163: {
                  try {
                     if (!var2) {
                        break label163;
                     }

                     if (_zoneManager != null) {
                        _zoneManager.clear();
                        _zoneManager = null;
                     }
                  } catch (Exception var20) {
                     var10000 = var20;
                     var10001 = false;
                     break label245;
                  }

                  try {
                     _zoneManager = new UnityAdsZoneManager(var10.getJSONArray("zones"));
                  } catch (Exception var19) {
                     var10000 = var19;
                     var10001 = false;
                     break label245;
                  }
               }

               if (this._listener != null && var2 && this._campaigns != null && this._campaigns.size() > 0) {
                  UnityAdsDeviceLog.debug("WebDataCompleted: " + var1);
                  StringBuilder var11 = (new StringBuilder()).append("Unity Ads initialized with ").append(this._campaigns.size()).append(" campaigns and ");
                  int var12;
                  if (_zoneManager != null) {
                     var12 = _zoneManager.zoneCount();
                  } else {
                     var12 = 0;
                  }

                  UnityAdsDeviceLog.info(var11.append(var12).append(" zones").toString());
                  this._listener.onWebDataCompleted();
                  return;
               }

               this.campaignDataFailed();
               return;
            }
         } else {
            try {
               this.campaignDataFailed();
               return;
            } catch (Exception var40) {
               var10000 = var40;
               var10001 = false;
            }
         }
      }

      Exception var3 = var10000;
      UnityAdsDeviceLog.error("Malformed JSON: " + var3.getMessage());
      if (var3.getStackTrace() != null) {
         StackTraceElement[] var4 = var3.getStackTrace();
         int var5 = var4.length;

         for(int var6 = 0; var6 < var5; ++var6) {
            StackTraceElement var7 = var4[var6];
            UnityAdsDeviceLog.error("Malformed JSON: " + var7.toString());
         }
      }

      this.campaignDataFailed();
   }

   private void checkFailedUrls() {
      File var1 = new File(UnityAdsUtils.getCacheDirectory() + "/" + "pendingrequests.dat");
      if (var1.exists()) {
         String var2 = UnityAdsUtils.readFile(var1, true);

         label47: {
            label55: {
               JSONObject var3;
               try {
                  var3 = new JSONObject(var2);
               } catch (Exception var12) {
                  break label55;
               }

               boolean var10001;
               JSONArray var5;
               try {
                  var5 = var3.getJSONArray("data");
               } catch (Exception var11) {
                  var10001 = false;
                  break label55;
               }

               if (var5 == null) {
                  break label47;
               }

               try {
                  if (var5.length() <= 0) {
                     break label47;
                  }
               } catch (Exception var10) {
                  var10001 = false;
                  break label55;
               }

               int var6 = 0;

               while(true) {
                  try {
                     if (var6 >= var5.length()) {
                        break label47;
                     }

                     JSONObject var7 = var5.getJSONObject(var6);
                     UnityAdsUtils.runOnUiThread(new UnityAdsWebData.UnityAdsUrlLoaderCreator(var7.getString("url"), var7.getString("body"), var7.getString("methodType"), UnityAdsWebData.UnityAdsRequestType.getValueOf(var7.getString("requestType")), 1 + var7.getInt("retries")));
                  } catch (Exception var9) {
                     var10001 = false;
                     break;
                  }

                  ++var6;
               }
            }

            UnityAdsDeviceLog.error("Problems while sending some of the failed urls.");
         }

         UnityAdsUtils.removeFile(var1.toString());
      }

      this.startNextLoader();
   }

   private ArrayList deserializeCampaigns(JSONArray var1) {
      ArrayList var2;
      if (var1 != null && var1.length() > 0) {
         var2 = new ArrayList();

         for(int var3 = 0; var3 < var1.length(); ++var3) {
            label29: {
               UnityAdsCampaign var4;
               try {
                  var4 = new UnityAdsCampaign(var1.getJSONObject(var3));
               } catch (Exception var9) {
                  break label29;
               }

               try {
                  if (var4.hasValidData()) {
                     UnityAdsDeviceLog.debug("Adding campaign to cache");
                     var2.add(var4);
                  }
                  continue;
               } catch (Exception var8) {
               }
            }

            UnityAdsDeviceLog.error("Problem with the campaign, skipping.");
         }
      } else {
         var2 = null;
      }

      return var2;
   }

   private ArrayList filterCampaigns(ArrayList var1) {
      if (var1 != null && var1.size() > 0) {
         Activity var2 = UnityAdsProperties.getCurrentActivity();
         if (var2 == null) {
            return var1;
         } else {
            PackageManager var3 = var2.getPackageManager();
            ArrayList var4 = new ArrayList();
            ArrayList var5 = null;
            Iterator var6 = var1.iterator();

            while(true) {
               while(var6.hasNext()) {
                  UnityAdsCampaign var7 = (UnityAdsCampaign)var6.next();
                  String var8 = var7.getStoreId();
                  if (var8.indexOf(38) != -1) {
                     var8 = var8.substring(0, var8.indexOf(38));
                  }

                  if (var8 != null) {
                     label81: {
                        boolean var10001;
                        PackageInfo var12;
                        try {
                           var12 = var3.getPackageInfo(var8, 0);
                        } catch (NameNotFoundException var17) {
                           var10001 = false;
                           break label81;
                        }

                        label66: {
                           if (var12 != null) {
                              try {
                                 if (var8.equals(var12.packageName)) {
                                    break label66;
                                 }
                              } catch (NameNotFoundException var16) {
                                 var10001 = false;
                                 break label81;
                              }
                           }

                           try {
                              var4.add(var7);
                              continue;
                           } catch (NameNotFoundException var15) {
                              var10001 = false;
                              break label81;
                           }
                        }

                        if (var5 == null) {
                           try {
                              var5 = new ArrayList();
                           } catch (NameNotFoundException var14) {
                              var10001 = false;
                              break label81;
                           }
                        }

                        try {
                           var5.add(var7.getGameId());
                           UnityAdsDeviceLog.debug("Filtered game id " + var7.getGameId() + " from ad plan");
                           continue;
                        } catch (NameNotFoundException var13) {
                           var10001 = false;
                        }
                     }

                     var4.add(var7);
                  } else {
                     var4.add(var7);
                  }
               }

               if (var5 != null) {
                  UnityAdsProperties.APPFILTER_LIST = TextUtils.join(",", var5);
               }

               return var4;
            }
         }
      } else {
         return null;
      }
   }

   public static UnityAdsZoneManager getZoneManager() {
      return _zoneManager;
   }

   private void requestAppWhitelist(String var1) {
      if (!whitelistRequested) {
         whitelistRequested = true;
         UnityAdsUtils.runOnUiThread(new UnityAdsWebData.UnityAdsUrlLoaderCreator(var1, (String)null, "GET", UnityAdsWebData.UnityAdsRequestType.AppWhitelist, 0));
      }
   }

   private void sendInstalledApps(String var1, Map var2) {
      if (!installedAppsSent) {
         installedAppsSent = true;
         String var3 = UnityAdsDevice.getPackageDataJson(var2);
         if (var3 != null) {
            UnityAdsWebData.UnityAdsUrlLoaderCreator var4 = new UnityAdsWebData.UnityAdsUrlLoaderCreator(var1, UnityAdsProperties.getCampaignQueryArguments(), "POST", UnityAdsWebData.UnityAdsRequestType.InstalledApps, 0);
            var4.setPostBody(var3);
            UnityAdsUtils.runOnUiThread(var4);
         } else {
            UnityAdsDeviceLog.debug("Nothing to send for installed applications");
         }
      }
   }

   private void startNextLoader() {
      Object var1 = this._urlLoaderLock;
      synchronized(var1){}

      Throwable var10000;
      boolean var10001;
      label138: {
         try {
            if (this._urlLoaders != null && this._urlLoaders.size() > 0 && !this._isLoading) {
               UnityAdsDeviceLog.debug("Starting next URL loader");
               this._isLoading = true;
               this._currentLoader = (UnityAdsWebData.UnityAdsUrlLoader)((UnityAdsWebData.UnityAdsUrlLoader)this._urlLoaders.remove(0)).execute(new String[0]);
            }
         } catch (Throwable var15) {
            var10000 = var15;
            var10001 = false;
            break label138;
         }

         label135:
         try {
            return;
         } catch (Throwable var14) {
            var10000 = var14;
            var10001 = false;
            break label135;
         }
      }

      while(true) {
         Throwable var2 = var10000;

         try {
            throw var2;
         } catch (Throwable var13) {
            var10000 = var13;
            var10001 = false;
            continue;
         }
      }
   }

   private void urlLoadCompleted(UnityAdsWebData.UnityAdsUrlLoader var1) {
      if (var1 != null && var1.getRequestType() != null) {
         switch(var1.getRequestType()) {
         case VideoPlan:
            this.campaignDataReceived(var1.getData());
         case VideoViewed:
         case Unsent:
         case Analytics:
         default:
            break;
         case AppWhitelist:
            this.whitelistReceived(var1.getData());
         }

         var1.clear();
      } else {
         UnityAdsDeviceLog.error("Got broken urlLoader!");
      }

      ++this._totalUrlsSent;
      UnityAdsDeviceLog.debug("Total urls sent: " + this._totalUrlsSent);
      this._isLoading = false;
      this.startNextLoader();
   }

   private void urlLoadFailed(UnityAdsWebData.UnityAdsUrlLoader var1) {
      if (var1 != null && var1.getRequestType() != null) {
         switch(var1.getRequestType()) {
         case VideoPlan:
            this.campaignDataFailed();
            break;
         case VideoViewed:
         case Unsent:
         case Analytics:
            this.writeFailedUrl(var1);
         case AppWhitelist:
         }

         var1.clear();
      } else {
         UnityAdsDeviceLog.error("Got broken urlLoader!");
      }

      this._isLoading = false;
      this.startNextLoader();
   }

   private void whitelistReceived(String param1) {
      // $FF: Couldn't be decompiled
   }

   private void writeFailedUrl(UnityAdsWebData.UnityAdsUrlLoader param1) {
      // $FF: Couldn't be decompiled
   }

   public void clearData() {
      if (this._campaigns != null) {
         this._campaigns.clear();
         this._campaigns = null;
      }

      if (_zoneManager != null) {
         _zoneManager.clear();
         _zoneManager = null;
      }

      this._campaignJson = null;
   }

   public UnityAdsCampaign getCampaignById(String var1) {
      if (var1 != null && this._campaigns != null) {
         for(int var2 = 0; var2 < this._campaigns.size(); ++var2) {
            if (this._campaigns.get(var2) != null && ((UnityAdsCampaign)this._campaigns.get(var2)).getCampaignId() != null && ((UnityAdsCampaign)this._campaigns.get(var2)).getCampaignId().equals(var1)) {
               return (UnityAdsCampaign)this._campaigns.get(var2);
            }
         }
      }

      return null;
   }

   public JSONObject getData() {
      return this._campaignJson;
   }

   public String getVideoPlan() {
      return this._campaignJson != null ? this._campaignJson.toString() : null;
   }

   public ArrayList getVideoPlanCampaigns() {
      return this._campaigns;
   }

   public ArrayList getViewableVideoPlanCampaigns() {
      ArrayList var1 = this._campaigns;
      ArrayList var2 = null;
      if (var1 != null) {
         var2 = new ArrayList();

         for(int var3 = 0; var3 < this._campaigns.size(); ++var3) {
            UnityAdsCampaign var4 = (UnityAdsCampaign)this._campaigns.get(var3);
            if (var4 != null && !var4.getCampaignStatus().equals(UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED)) {
               var2.add(var4);
            }
         }
      }

      return var2;
   }

   public boolean initCampaigns() {
      if (this._initInProgress) {
         return true;
      } else if (UnityAdsProperties.getBaseActivity() != null && UnityAdsUtils.isDebuggable(UnityAdsProperties.getBaseActivity()) && UnityAdsProperties.TEST_DATA != null) {
         this.campaignDataReceived(UnityAdsProperties.TEST_DATA);
         return true;
      } else {
         this._initInProgress = true;

         label94: {
            label93: {
               Exception var10000;
               label92: {
                  Activity var5;
                  boolean var10001;
                  try {
                     var5 = UnityAdsProperties.getCurrentActivity();
                  } catch (UnknownHostException var22) {
                     var10001 = false;
                     break label94;
                  } catch (Exception var23) {
                     var10000 = var23;
                     var10001 = false;
                     break label92;
                  }

                  if (var5 == null) {
                     try {
                        UnityAdsDeviceLog.error("initCampaigns failed due to currentActivity null");
                        UnityAdsUtils.runOnUiThread(new Runnable() {
                           public void run() {
                              UnityAdsWebData.this.campaignDataFailed();
                           }
                        });
                        return true;
                     } catch (UnknownHostException var12) {
                        var10001 = false;
                        break label94;
                     } catch (Exception var13) {
                        var10000 = var13;
                        var10001 = false;
                     }
                  } else {
                     label101: {
                        ConnectivityManager var6;
                        try {
                           var6 = (ConnectivityManager)var5.getBaseContext().getSystemService("connectivity");
                        } catch (UnknownHostException var20) {
                           var10001 = false;
                           break label94;
                        } catch (Exception var21) {
                           var10000 = var21;
                           var10001 = false;
                           break label101;
                        }

                        boolean var7 = false;
                        if (var6 != null) {
                           label102: {
                              NetworkInfo var8;
                              try {
                                 var8 = var6.getActiveNetworkInfo();
                              } catch (UnknownHostException var16) {
                                 var10001 = false;
                                 break label94;
                              } catch (Exception var17) {
                                 var10000 = var17;
                                 var10001 = false;
                                 break label101;
                              }

                              label81: {
                                 if (var8 != null) {
                                    try {
                                       if (var8.isConnected()) {
                                          break label81;
                                       }
                                    } catch (UnknownHostException var18) {
                                       var10001 = false;
                                       break label94;
                                    } catch (Exception var19) {
                                       var10000 = var19;
                                       var10001 = false;
                                       break label101;
                                    }
                                 }

                                 var7 = false;
                                 break label102;
                              }

                              var7 = true;
                           }
                        }

                        if (!var7) {
                           try {
                              UnityAdsDeviceLog.error("Device offline, can't init campaigns");
                              UnityAdsUtils.runOnUiThread(new Runnable() {
                                 public void run() {
                                    UnityAdsWebData.this.campaignDataFailed();
                                 }
                              });
                              return true;
                           } catch (UnknownHostException var10) {
                              var10001 = false;
                              break label94;
                           } catch (Exception var11) {
                              var10000 = var11;
                              var10001 = false;
                           }
                        } else {
                           try {
                              InetAddress var9 = InetAddress.getByName("impact.applifier.com");
                              UnityAdsDeviceLog.debug("Ad server resolves to " + var9);
                              if (var9.isLoopbackAddress()) {
                                 UnityAdsDeviceLog.error("initCampaigns failed, ad server resolves to loopback address (due to ad blocker?)");
                                 UnityAdsUtils.runOnUiThread(new Runnable() {
                                    public void run() {
                                       UnityAdsWebData.this.campaignDataFailed();
                                    }
                                 });
                                 return true;
                              }
                              break label93;
                           } catch (UnknownHostException var14) {
                              var10001 = false;
                              break label94;
                           } catch (Exception var15) {
                              var10000 = var15;
                              var10001 = false;
                           }
                        }
                     }
                  }
               }

               Exception var1 = var10000;
               UnityAdsDeviceLog.debug("Unknown exception during DNS test: " + var1);
            }

            String var2 = UnityAdsProperties.getCampaignQueryUrl();
            UnityAdsDeviceLog.info("Requesting Unity Ads ad plan from " + var2);
            String[] var3 = var2.split("\\?");
            UnityAdsUtils.runOnUiThread(new UnityAdsWebData.UnityAdsUrlLoaderCreator(var3[0], var3[1], "GET", UnityAdsWebData.UnityAdsRequestType.VideoPlan, 0));
            this.checkFailedUrls();
            return true;
         }

         UnityAdsDeviceLog.error("initCampaigns failed due to DNS error, unable to resolve ad server address");
         UnityAdsUtils.runOnUiThread(new Runnable() {
            public void run() {
               UnityAdsWebData.this.campaignDataFailed();
            }
         });
         return true;
      }
   }

   public void sendAnalyticsRequest(String var1, UnityAdsCampaign var2) {
      if (var2 != null) {
         Object[] var3 = new Object[]{UnityAdsProperties.ANALYTICS_BASE_URL};
         String var4 = String.format("%s", var3);
         Object[] var5 = new Object[]{"gameId", UnityAdsProperties.UNITY_ADS_GAME_ID};
         String var6 = String.format("%s&%s=%s", new Object[]{String.format("%s=%s", var5), "type", var1});
         Object[] var7 = new Object[]{var6, "trackingId", UnityAdsProperties.UNITY_ADS_GAMER_ID};
         String var8 = String.format("%s&%s=%s", var7);
         Object[] var9 = new Object[]{var8, "providerId", var2.getCampaignId()};
         String var10 = String.format("%s&%s=%s", var9);
         UnityAdsZone var11 = getZoneManager().getCurrentZone();
         Object[] var12 = new Object[]{var10, "zone", var11.getZoneId()};
         String var13 = String.format("%s&%s=%s", var12);
         if (var11.isIncentivized()) {
            UnityAdsRewardItemManager var15 = ((UnityAdsIncentivizedZone)var11).itemManager();
            Object[] var16 = new Object[]{var13, "rewardItem", var15.getCurrentItem().getKey()};
            var13 = String.format("%s&%s=%s", var16);
         }

         if (var11.getGamerSid() != null) {
            Object[] var14 = new Object[]{var13, "sid", var11.getGamerSid()};
            var13 = String.format("%s&%s=%s", var14);
         }

         UnityAdsUtils.runOnUiThread(new UnityAdsWebData.UnityAdsUrlLoaderCreator(var4, var13, "GET", UnityAdsWebData.UnityAdsRequestType.Analytics, 0));
      }

   }

   public boolean sendCampaignViewProgress(UnityAdsCampaign var1, UnityAdsWebData.UnityAdsVideoPosition var2) {
      if (var1 == null) {
         return false;
      } else {
         UnityAdsDeviceLog.info("Unity Ads video position: " + var2.toString() + ", gamer id: " + UnityAdsProperties.UNITY_ADS_GAMER_ID);
         boolean var3 = false;
         if (var2 != null) {
            String var4 = UnityAdsProperties.UNITY_ADS_GAMER_ID;
            var3 = false;
            if (var4 != null) {
               Object[] var5 = new Object[]{UnityAdsProperties.UNITY_ADS_BASE_URL, "gamers/"};
               String var6 = String.format("%s%s", var5);
               Object[] var7 = new Object[]{var6, UnityAdsProperties.UNITY_ADS_GAMER_ID, var2.toString(), var1.getCampaignId()};
               String var8 = String.format("%s%s/video/%s/%s", var7);
               Object[] var9 = new Object[]{var8, UnityAdsProperties.UNITY_ADS_GAME_ID};
               String var10 = String.format("%s/%s", var9);
               UnityAdsZone var11 = getZoneManager().getCurrentZone();
               Object[] var12 = new Object[]{"zone", var11.getZoneId()};
               String var13 = String.format("%s=%s", var12);

               label105: {
                  String var34;
                  label104: {
                     Exception var10000;
                     label114: {
                        boolean var10001;
                        String var18;
                        try {
                           var13 = String.format("%s&%s=%s", new Object[]{var13, "platform", "android"});
                           var18 = UnityAdsDevice.getAdvertisingTrackingId();
                        } catch (Exception var49) {
                           var10000 = var49;
                           var10001 = false;
                           break label114;
                        }

                        if (var18 != null) {
                           Object[] var19;
                           byte var20;
                           label91: {
                              label90: {
                                 try {
                                    var19 = new Object[]{var13, "trackingEnabled", null};
                                    if (UnityAdsDevice.isLimitAdTrackingEnabled()) {
                                       break label90;
                                    }
                                 } catch (Exception var47) {
                                    var10000 = var47;
                                    var10001 = false;
                                    break label114;
                                 }

                                 var20 = 1;
                                 break label91;
                              }

                              var20 = 0;
                           }

                           try {
                              var19[2] = Integer.valueOf(var20);
                              var13 = String.format("%s&%s=%d", var19);
                              String var21 = UnityAdsUtils.Md5(var18).toLowerCase();
                              Object[] var22 = new Object[]{var13, "advertisingTrackingId", URLEncoder.encode(var21, "UTF-8")};
                              var13 = String.format("%s&%s=%s", var22);
                              Object[] var23 = new Object[]{var13, "rawAdvertisingTrackingId", URLEncoder.encode(var18, "UTF-8")};
                              var13 = String.format("%s&%s=%s", var23);
                           } catch (Exception var46) {
                              var10000 = var46;
                              var10001 = false;
                              break label114;
                           }
                        } else {
                           try {
                              Object[] var37 = new Object[]{var13, "deviceId", URLEncoder.encode(UnityAdsDevice.getAndroidId(true), "UTF-8")};
                              var13 = String.format("%s&%s=%s", var37);
                              if (!UnityAdsDevice.getAndroidId(false).equals("unknown")) {
                                 Object[] var39 = new Object[]{var13, "androidId", URLEncoder.encode(UnityAdsDevice.getAndroidId(true), "UTF-8")};
                                 var13 = String.format("%s&%s=%s", var39);
                                 Object[] var40 = new Object[]{var13, "rawAndroidId", URLEncoder.encode(UnityAdsDevice.getAndroidId(false), "UTF-8")};
                                 var13 = String.format("%s&%s=%s", var40);
                              }
                           } catch (Exception var45) {
                              var10000 = var45;
                              var10001 = false;
                              break label114;
                           }

                           try {
                              if (!UnityAdsDevice.getMacAddress().equals("unknown")) {
                                 Object[] var38 = new Object[]{var13, "macAddress", URLEncoder.encode(UnityAdsDevice.getMacAddress(), "UTF-8")};
                                 var13 = String.format("%s&%s=%s", var38);
                              }
                           } catch (Exception var48) {
                              var10000 = var48;
                              var10001 = false;
                              break label114;
                           }
                        }

                        try {
                           Object[] var24 = new Object[]{var13, "gameId", URLEncoder.encode(UnityAdsProperties.UNITY_ADS_GAME_ID, "UTF-8")};
                           var13 = String.format("%s&%s=%s", var24);
                           Object[] var25 = new Object[]{var13, "sdkVersion", URLEncoder.encode("1401", "UTF-8")};
                           var13 = String.format("%s&%s=%s", var25);
                           Object[] var26 = new Object[]{var13, "softwareVersion", URLEncoder.encode(UnityAdsDevice.getSoftwareVersion(), "UTF-8")};
                           var13 = String.format("%s&%s=%s", var26);
                           Object[] var27 = new Object[]{var13, "hardwareVersion", URLEncoder.encode(UnityAdsDevice.getHardwareVersion(), "UTF-8")};
                           var13 = String.format("%s&%s=%s", var27);
                           Object[] var28 = new Object[]{var13, "deviceType", UnityAdsDevice.getDeviceType()};
                           var13 = String.format("%s&%s=%s", var28);
                           Object[] var29 = new Object[]{var13, "connectionType", URLEncoder.encode(UnityAdsDevice.getConnectionType(), "UTF-8")};
                           var13 = String.format("%s&%s=%s", var29);
                           if (!UnityAdsDevice.isUsingWifi()) {
                              Object[] var36 = new Object[]{var13, "androidNetworkType", UnityAdsDevice.getNetworkType()};
                              var13 = String.format("%s&%s=%d", var36);
                           }
                        } catch (Exception var44) {
                           var10000 = var44;
                           var10001 = false;
                           break label114;
                        }

                        try {
                           if (UnityAdsProperties.CACHING_SPEED > 0L) {
                              Object[] var35 = new Object[]{var13, "cachingSpeed", UnityAdsProperties.CACHING_SPEED};
                              var13 = String.format("%s&%s=%d", var35);
                           }
                        } catch (Exception var43) {
                           var10000 = var43;
                           var10001 = false;
                           break label114;
                        }

                        Object[] var32;
                        String var33;
                        label75: {
                           label74: {
                              try {
                                 Object[] var30 = new Object[]{var13, "screenSize", UnityAdsDevice.getScreenSize()};
                                 var13 = String.format("%s&%s=%s", var30);
                                 Object[] var31 = new Object[]{var13, "screenDensity", UnityAdsDevice.getScreenDensity()};
                                 var13 = String.format("%s&%s=%s", var31);
                                 var32 = new Object[]{var13, "cachedPlayback", null};
                                 if (UnityAdsProperties.SELECTED_CAMPAIGN_CACHED) {
                                    break label74;
                                 }
                              } catch (Exception var42) {
                                 var10000 = var42;
                                 var10001 = false;
                                 break label114;
                              }

                              var33 = "false";
                              break label75;
                           }

                           var33 = "true";
                        }

                        try {
                           var32[2] = var33;
                           var34 = String.format("%s&%s=%s", var32);
                           break label104;
                        } catch (Exception var41) {
                           var10000 = var41;
                           var10001 = false;
                        }
                     }

                     Exception var14 = var10000;
                     UnityAdsDeviceLog.error("Problems creating campaigns query: " + var14.getMessage() + var14.getStackTrace().toString());
                     break label105;
                  }

                  var13 = var34;
               }

               if (var11.isIncentivized()) {
                  UnityAdsRewardItemManager var16 = ((UnityAdsIncentivizedZone)var11).itemManager();
                  Object[] var17 = new Object[]{var13, "rewardItem", var16.getCurrentItem().getKey()};
                  var13 = String.format("%s&%s=%s", var17);
               }

               if (var11.getGamerSid() != null) {
                  Object[] var15 = new Object[]{var13, "sid", var11.getGamerSid()};
                  var13 = String.format("%s&%s=%s", var15);
               }

               UnityAdsUtils.runOnUiThread(new UnityAdsWebData.UnityAdsUrlLoaderCreator(var10, var13, "POST", UnityAdsWebData.UnityAdsRequestType.VideoViewed, 0));
               var3 = true;
            }
         }

         return var3;
      }
   }

   public void setWebDataListener(IUnityAdsWebDataListener var1) {
      this._listener = var1;
   }

   public void stopAllRequests() {
      Object var1 = this._urlLoaderLock;
      synchronized(var1){}

      Throwable var10000;
      boolean var10001;
      label289: {
         try {
            if (this._urlLoaders != null) {
               this._urlLoaders.clear();
               this._urlLoaders = null;
            }
         } catch (Throwable var34) {
            var10000 = var34;
            var10001 = false;
            break label289;
         }

         try {
            if (this._failedUrlLoaders != null) {
               this._failedUrlLoaders.clear();
               this._failedUrlLoaders = null;
            }
         } catch (Throwable var33) {
            var10000 = var33;
            var10001 = false;
            break label289;
         }

         try {
            if (this._currentLoader != null) {
               this._currentLoader.cancel(true);
               this._currentLoader = null;
            }
         } catch (Throwable var32) {
            var10000 = var32;
            var10001 = false;
            break label289;
         }

         label276:
         try {
            return;
         } catch (Throwable var31) {
            var10000 = var31;
            var10001 = false;
            break label276;
         }
      }

      while(true) {
         Throwable var2 = var10000;

         try {
            throw var2;
         } catch (Throwable var30) {
            var10000 = var30;
            var10001 = false;
            continue;
         }
      }
   }

   private class UnityAdsCancelUrlLoaderRunner implements Runnable {
      private UnityAdsWebData.UnityAdsUrlLoader _loader = null;

      public UnityAdsCancelUrlLoaderRunner(UnityAdsWebData.UnityAdsUrlLoader var2) {
         this._loader = var2;
      }

      public void run() {
         try {
            this._loader.cancel(true);
         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Cancelling urlLoader got exception: " + var2.getMessage());
         }
      }
   }

   private static enum UnityAdsRequestType {
      Analytics,
      AppWhitelist,
      InstalledApps,
      Unsent,
      VideoPlan,
      VideoViewed;

      static {
         UnityAdsWebData.UnityAdsRequestType[] var0 = new UnityAdsWebData.UnityAdsRequestType[]{Analytics, VideoPlan, VideoViewed, Unsent, AppWhitelist, InstalledApps};
      }

      @SuppressLint({"DefaultLocale"})
      public static UnityAdsWebData.UnityAdsRequestType getValueOf(String var0) {
         if (VideoPlan.toString().equals(var0.toLowerCase())) {
            return VideoPlan;
         } else if (VideoViewed.toString().equals(var0.toLowerCase())) {
            return VideoViewed;
         } else {
            return Unsent.toString().equals(var0.toLowerCase()) ? Unsent : null;
         }
      }

      @SuppressLint({"DefaultLocale"})
      public String toString() {
         return this.name().toString().toLowerCase();
      }
   }

   private class UnityAdsUrlLoader extends AsyncTask {
      private String _baseUrl = null;
      private BufferedInputStream _binput = null;
      private HttpURLConnection _connection = null;
      private Boolean _done = false;
      private int _downloadLength = 0;
      private String _finalUrl = null;
      private String _httpMethod = "GET";
      private InputStream _input = null;
      private String _postBody = null;
      private String _queryParams = null;
      private UnityAdsWebData.UnityAdsRequestType _requestType = null;
      private int _retries = 0;
      private URL _url = null;
      private String _urlData = "";

      public UnityAdsUrlLoader(String var2, String var3, String var4, UnityAdsWebData.UnityAdsRequestType var5, int var6) {
         label31: {
            Exception var10000;
            label30: {
               boolean var10001;
               label29: {
                  try {
                     this._finalUrl = var2;
                     this._baseUrl = var2;
                     if (!var4.equals("GET")) {
                        break label29;
                     }
                  } catch (Exception var10) {
                     var10000 = var10;
                     var10001 = false;
                     break label30;
                  }

                  if (var3 != null) {
                     try {
                        if (var3.length() > 2) {
                           this._finalUrl = this._finalUrl + "?" + var3;
                        }
                     } catch (Exception var9) {
                        var10000 = var9;
                        var10001 = false;
                        break label30;
                     }
                  }
               }

               try {
                  this._url = new URL(this._finalUrl);
                  break label31;
               } catch (Exception var8) {
                  var10000 = var8;
                  var10001 = false;
               }
            }

            Exception var7 = var10000;
            UnityAdsDeviceLog.error("Problems with url! Error-message: " + var7.getMessage());
         }

         this._queryParams = var3;
         this._httpMethod = var4;
         UnityAdsWebData.access$308(UnityAdsWebData.this);
         UnityAdsDeviceLog.debug("Total urlLoaders created: " + UnityAdsWebData.this._totalLoadersCreated);
         this._requestType = var5;
         this._retries = var6;
      }

      private void cancelInMainThread() {
         UnityAdsUtils.runOnUiThread(UnityAdsWebData.this.new UnityAdsCancelUrlLoaderRunner(this));
      }

      private void closeAndFlushConnection() {
         try {
            if (this._input != null) {
               this._input.close();
               this._input = null;
            }

            if (this._binput != null) {
               this._binput.close();
               this._binput = null;
            }

         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Problems closing streams: " + var2.getMessage());
         }
      }

      public void clear() {
         this._url = null;
         this._downloadLength = 0;
         this._urlData = "";
         this._requestType = null;
         this._finalUrl = null;
         this._retries = 0;
         this._httpMethod = null;
         this._queryParams = null;
         this._baseUrl = null;
         this._postBody = null;
      }

      protected String doInBackground(String... var1) {
         Exception var10000;
         boolean var10001;
         label127: {
            label130: {
               label131: {
                  try {
                     if (this._url.toString().startsWith("https://")) {
                        this._connection = (HttpsURLConnection)this._url.openConnection();
                        break label131;
                     }
                  } catch (Exception var25) {
                     var10000 = var25;
                     var10001 = false;
                     break label130;
                  }

                  try {
                     this._connection = (HttpURLConnection)this._url.openConnection();
                  } catch (Exception var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label130;
                  }
               }

               label132: {
                  try {
                     this._connection.setConnectTimeout(20000);
                     this._connection.setReadTimeout(30000);
                     this._connection.setRequestMethod(this._httpMethod);
                     if (this._postBody == null) {
                        this._connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded");
                        break label132;
                     }
                  } catch (Exception var23) {
                     var10000 = var23;
                     var10001 = false;
                     break label130;
                  }

                  try {
                     this._connection.setRequestProperty("Content-type", "application/json");
                  } catch (Exception var22) {
                     var10000 = var22;
                     var10001 = false;
                     break label130;
                  }
               }

               try {
                  this._connection.setDoInput(true);
                  if (this._httpMethod.equals("POST")) {
                     this._connection.setDoOutput(true);
                  }
                  break label127;
               } catch (Exception var21) {
                  var10000 = var21;
                  var10001 = false;
               }
            }

            Exception var2 = var10000;
            UnityAdsDeviceLog.error("Problems opening connection: " + var2.getMessage());
            this.cancelInMainThread();
            return null;
         }

         if (this._connection != null) {
            if (this._httpMethod.equals("POST")) {
               label138: {
                  label98: {
                     PrintWriter var11;
                     label135: {
                        try {
                           var11 = new PrintWriter(new OutputStreamWriter(this._connection.getOutputStream(), "UTF-8"), true);
                           if (this._postBody == null) {
                              var11.print(this._queryParams);
                              break label135;
                           }
                        } catch (Exception var20) {
                           var10000 = var20;
                           var10001 = false;
                           break label98;
                        }

                        try {
                           var11.print(this._postBody);
                        } catch (Exception var19) {
                           var10000 = var19;
                           var10001 = false;
                           break label98;
                        }
                     }

                     try {
                        var11.flush();
                        break label138;
                     } catch (Exception var18) {
                        var10000 = var18;
                        var10001 = false;
                     }
                  }

                  Exception var12 = var10000;
                  UnityAdsDeviceLog.error("Problems writing post-data: " + var12.getMessage() + ", " + var12.getStackTrace());
                  this.cancelInMainThread();
                  return null;
               }
            }

            try {
               UnityAdsDeviceLog.debug("Connection response: " + this._connection.getResponseCode() + ", " + this._connection.getResponseMessage() + ", " + this._connection.getURL().toString() + " : " + this._queryParams);
               this._input = this._connection.getInputStream();
               this._binput = new BufferedInputStream(this._input);
            } catch (Exception var13) {
               UnityAdsDeviceLog.error("Problems opening stream: " + var13.getMessage());
               this.cancelInMainThread();
               return null;
            }

            long var4 = 0L;
            this._downloadLength = this._connection.getContentLength();

            label81: {
               ByteArrayBuffer var8;
               try {
                  UnityAdsWebData.access$408(UnityAdsWebData.this);
                  UnityAdsDeviceLog.debug("Total urlLoaders that have started running: " + UnityAdsWebData.this._totalLoadersHaveRun);
                  UnityAdsDeviceLog.debug("Reading data from: " + this._url.toString() + " Content-length: " + this._downloadLength);
                  var8 = new ByteArrayBuffer(20480);
               } catch (Exception var17) {
                  var10000 = var17;
                  var10001 = false;
                  break label81;
               }

               while(true) {
                  int var9;
                  try {
                     var9 = this._binput.read();
                  } catch (Exception var15) {
                     var10000 = var15;
                     var10001 = false;
                     break;
                  }

                  if (var9 == -1) {
                     try {
                        this._urlData = new String(var8.toByteArray());
                        UnityAdsDeviceLog.debug("Read total of: " + var4);
                        return null;
                     } catch (Exception var14) {
                        var10000 = var14;
                        var10001 = false;
                        break;
                     }
                  }

                  ++var4;

                  boolean var10;
                  try {
                     var8.append((byte)var9);
                     var10 = this.isCancelled();
                  } catch (Exception var16) {
                     var10000 = var16;
                     var10001 = false;
                     break;
                  }

                  if (var10) {
                     return null;
                  }
               }
            }

            Exception var6 = var10000;
            UnityAdsDeviceLog.error("Problems loading url! Error-message: " + var6.getMessage());
            this.cancelInMainThread();
            return null;
         } else {
            return null;
         }
      }

      public String getBaseUrl() {
         return this._baseUrl;
      }

      public String getData() {
         return this._urlData;
      }

      public String getHTTPMethod() {
         return this._httpMethod;
      }

      public String getQueryParams() {
         return this._queryParams;
      }

      public UnityAdsWebData.UnityAdsRequestType getRequestType() {
         return this._requestType;
      }

      public int getRetries() {
         return this._retries;
      }

      public String getUrl() {
         return this._url.toString();
      }

      protected void onCancelled() {
         this._done = true;
         this.closeAndFlushConnection();
         UnityAdsWebData.this.urlLoadFailed(this);
      }

      protected void onPostExecute(String var1) {
         if (!this.isCancelled() && !this._done) {
            this._done = true;
            this.closeAndFlushConnection();
            UnityAdsWebData.this.urlLoadCompleted(this);
         }

         super.onPostExecute(var1);
      }

      protected void onProgressUpdate(Integer... var1) {
         super.onProgressUpdate(var1);
      }

      public void setPostBody(String var1) {
         if (this._queryParams != null && this._queryParams.length() > 2) {
            this._finalUrl = this._baseUrl + "?" + this._queryParams;

            try {
               this._url = new URL(this._finalUrl);
            } catch (MalformedURLException var3) {
               UnityAdsDeviceLog.error("Error when creating adding query parameters to URL " + var3);
            }
         }

         this._postBody = var1;
      }
   }

   private class UnityAdsUrlLoaderCreator implements Runnable {
      private String _postBody = null;
      private String _queryParams = null;
      private String _requestMethod = null;
      private UnityAdsWebData.UnityAdsRequestType _requestType = null;
      private int _retries = 0;
      private String _url = null;

      public UnityAdsUrlLoaderCreator(String var2, String var3, String var4, UnityAdsWebData.UnityAdsRequestType var5, int var6) {
         this._url = var2;
         this._queryParams = var3;
         this._requestMethod = var4;
         this._requestType = var5;
         this._retries = var6;
      }

      public void run() {
         UnityAdsWebData.UnityAdsUrlLoader var1 = UnityAdsWebData.this.new UnityAdsUrlLoader(this._url, this._queryParams, this._requestMethod, this._requestType, this._retries);
         UnityAdsDeviceLog.debug("URL: " + var1.getUrl());
         if (this._postBody != null) {
            var1.setPostBody(this._postBody);
         }

         if (this._retries <= 5) {
            UnityAdsWebData.this.addLoader(var1);
         }

         UnityAdsWebData.this.startNextLoader();
      }

      public void setPostBody(String var1) {
         this._postBody = var1;
      }
   }

   public static enum UnityAdsVideoPosition {
      End,
      FirstQuartile,
      MidPoint,
      Start,
      ThirdQuartile;

      static {
         UnityAdsWebData.UnityAdsVideoPosition[] var0 = new UnityAdsWebData.UnityAdsVideoPosition[]{Start, FirstQuartile, MidPoint, ThirdQuartile, End};
      }

      @SuppressLint({"DefaultLocale"})
      public String toString() {
         switch(this) {
         case FirstQuartile:
            return "first_quartile";
         case MidPoint:
            return "mid_point";
         case ThirdQuartile:
            return "third_quartile";
         case End:
            return "video_end";
         case Start:
            return "video_start";
         default:
            return this.name().toString().toLowerCase();
         }
      }
   }
}
