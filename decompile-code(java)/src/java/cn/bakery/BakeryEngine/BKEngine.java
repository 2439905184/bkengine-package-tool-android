package cn.bakery.BakeryEngine;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import cn.bakery.BakeryEngine.VideoPlayer.activity.PlayerActivity;
import com.unity3d.ads.android.IUnityAdsListener;
import com.unity3d.ads.android.UnityAds;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.UUID;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.cocos2dx.lib.GameControllerActivity;

public class BKEngine extends GameControllerActivity implements IUnityAdsListener {
   private static final String NOTIFICATION_DELETED_ACTION = "NOTIFICATION_DELETED";
   static int NOTIFY_ID = 12567098;
   private boolean _isShowingAds = false;
   private boolean _unityAdsReady = false;
   private final BroadcastReceiver receiver = new BroadcastReceiver() {
      public void onReceive(Context var1, Intent var2) {
         Log.d("BKEngine", "Terminate Process");
         Cocos2dxHelper.terminateProcess();
      }
   };

   static {
      System.loadLibrary("openal");
      System.loadLibrary("BKEngine");
   }

   public String getApplicationVersion() {
      try {
         String var2 = this.getPackageManager().getPackageInfo(this.getPackageName(), 0).versionName;
         return var2;
      } catch (NameNotFoundException var3) {
         System.out.println(" Cannot get the version of our own package: " + var3);
         return "Unknown";
      }
   }

   public String getBrand() {
      return Build.BRAND;
   }

   public String getDefaultStoragePath() {
      String var1 = Environment.getExternalStorageDirectory().getAbsolutePath();
      if (var1.endsWith("/")) {
         var1 = var1.substring(0, -1 + var1.length());
      }

      return var1;
   }

   public String getModel() {
      return Build.MODEL;
   }

   public String[] getStoragesList() {
      Exception var10000;
      label97: {
         String var3;
         boolean var10001;
         try {
            var3 = Environment.getExternalStorageDirectory().getAbsolutePath();
            if (var3.endsWith("/")) {
               var3 = var3.substring(0, -1 + var3.length());
            }
         } catch (Exception var19) {
            var10000 = var19;
            var10001 = false;
            break label97;
         }

         String var5;
         BufferedReader var6;
         try {
            InputStreamReader var4 = new InputStreamReader(Runtime.getRuntime().exec("mount").getInputStream());
            var5 = new String();
            var6 = new BufferedReader(var4);
         } catch (Exception var15) {
            var10000 = var15;
            var10001 = false;
            break label97;
         }

         label91:
         while(true) {
            String[] var9;
            while(true) {
               do {
                  String var7;
                  while(true) {
                     try {
                        var7 = var6.readLine();
                     } catch (Exception var12) {
                        var10000 = var12;
                        var10001 = false;
                        break label91;
                     }

                     if (var7 == null) {
                        try {
                           String[] var10 = var5.split("\\*");
                           return var10;
                        } catch (Exception var11) {
                           var10000 = var11;
                           var10001 = false;
                           break label91;
                        }
                     }

                     try {
                        if (!var7.contains("secure") && !var7.contains("asec") && (var7.contains("fat") || var7.contains("fuse"))) {
                           break;
                        }
                     } catch (Exception var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label91;
                     }
                  }

                  try {
                     Log.v("BKEngine", var7);
                     var9 = var7.split(" ");
                  } catch (Exception var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label91;
                  }
               } while(var9 == null);

               try {
                  if (var9.length > 1 && !var3.equals(var9[1]) && (var9[1].contains("/mnt") || var9[1].contains("/storage"))) {
                     break;
                  }
               } catch (Exception var17) {
                  var10000 = var17;
                  var10001 = false;
                  break label91;
               }
            }

            try {
               if (!var5.isEmpty()) {
                  var5 = var5.concat("*");
               }
            } catch (Exception var18) {
               var10000 = var18;
               var10001 = false;
               break;
            }

            try {
               var5 = var5.concat(var9[1]);
            } catch (Exception var13) {
               var10000 = var13;
               var10001 = false;
               break;
            }
         }
      }

      Exception var1 = var10000;
      Log.e("BKEngine", "getStoragesList() failed:" + var1.toString());
      return null;
   }

   public String getSystemVersion() {
      return VERSION.RELEASE;
   }

   public String getUuid() {
      Exception var10000;
      label36: {
         boolean var10001;
         String var3;
         try {
            var3 = ((TelephonyManager)this.getSystemService("phone")).getDeviceId();
         } catch (Exception var10) {
            var10000 = var10;
            var10001 = false;
            break label36;
         }

         UUID var5;
         if (var3 == null) {
            try {
               String var4 = Secure.getString(getContext().getContentResolver(), "android_id");
               if ("9774d56d682e549c".equals(var4)) {
                  return null;
               }

               var5 = UUID.nameUUIDFromBytes(var4.getBytes("utf8"));
            } catch (Exception var8) {
               var10000 = var8;
               var10001 = false;
               break label36;
            }
         } else {
            UUID var6;
            try {
               var6 = UUID.nameUUIDFromBytes(var3.getBytes("utf8"));
            } catch (Exception var9) {
               var10000 = var9;
               var10001 = false;
               break label36;
            }

            var5 = var6;
         }

         try {
            return var5.toString();
         } catch (Exception var7) {
            var10000 = var7;
            var10001 = false;
         }
      }

      Exception var1 = var10000;
      Log.e("BKEngine", "getUuid() failed:" + var1.toString());
      return null;
   }

   public void hideTaskbarNotification() {
      ((NotificationManager)this.getSystemService("notification")).cancel(NOTIFY_ID);
   }

   public void initUnityAds(String var1) {
      if (!var1.isEmpty() && !var1.equals("0")) {
         Log.d("BKEngine", "Init UnityAds");
         UnityAds.init(this, var1, this);
      } else {
         Log.d("BKEngine", "Init UnityAds Debug");
         UnityAds.init(this, "16", this);
         UnityAds.setDebugMode(true);
         UnityAds.setTestMode(true);
      }
   }

   public boolean isNetworkConnected() {
      NetworkInfo var1 = ((ConnectivityManager)getContext().getSystemService("connectivity")).getActiveNetworkInfo();
      return var1 != null ? var1.isAvailable() : false;
   }

   public boolean isUnityAdsReady() {
      return this._unityAdsReady;
   }

   public native void nativeInitCallbacks();

   protected void onActivityResult(int var1, int var2, Intent var3) {
      super.onActivityResult(var1, var2, var3);
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      this.getWindow().addFlags(128);
      this.nativeInitCallbacks();
      this.connectController(0);
      this.connectController(1);
      this.connectController(2);
   }

   public void onFetchCompleted() {
      this._unityAdsReady = true;
      Log.d("BKEngine", "UnityAds onFetchCompleted()");
   }

   public void onFetchFailed() {
      this._unityAdsReady = false;
      Log.d("BKEngine", "UnityAds onFetchFailed()");
   }

   public void onHide() {
   }

   protected void onNewIntent(Intent var1) {
      super.onNewIntent(var1);
   }

   protected void onPause() {
      if (this._isShowingAds) {
         this._isShowingAds = false;
         this.showTaskbarNotification(" 播放广告中");
      } else {
         this.showTaskbarNotification(" 已暂停");
      }

      super.onPause();
   }

   protected void onResume() {
      this.hideTaskbarNotification();
      super.onResume();
      UnityAds.changeActivity(this);
   }

   public void onShow() {
   }

   public void onVideoCompleted(String var1, boolean var2) {
      Log.d("BKEngine", "UnityAds onVideoCompleted()");
   }

   public void onVideoStarted() {
      Log.d("BKEngine", "UnityAds onVideoStarted()");
   }

   public void openUrl(String var1) {
      this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(var1)));
   }

   public void playVideo(String var1, int var2, int var3, int var4) {
      try {
         String var7 = var1.replace('\\', '/');
         Log.v("BKEngine", "playVideo: " + var7 + " at " + var3);
         Intent var9 = new Intent();
         Bundle var10 = new Bundle();
         var10.putString("file", var7);
         var10.putInt("type", var2);
         var10.putInt("offset", var3);
         var10.putInt("length", var4);
         var9.putExtras(var10);
         var9.setClass(this, PlayerActivity.class);
         this.startActivity(var9);
         this.overridePendingTransition(17432576, 17432577);
      } catch (Exception var11) {
         Log.e("BKEngine", "playVideo error:  " + var11.getClass().getName());
      }
   }

   public void showDialog(String var1, String var2) {
      super.showDialog(var1, var2);
   }

   public void showTaskbarNotification(String var1) {
      String var2 = this.getResources().getString(2130968576);
      String var3 = this.getApplicationVersion();
      this.showTaskbarNotification(var2 + var1, "BKEngine v" + var3, var2 + var1 + ", 点击恢复。");
   }

   public void showTaskbarNotification(String var1, String var2, String var3) {
      Intent var4 = new Intent("NOTIFICATION_DELETED");
      this.registerReceiver(this.receiver, new IntentFilter("NOTIFICATION_DELETED"));
      NotificationManager var6 = (NotificationManager)this.getSystemService("notification");
      Notification var7 = new Notification(2130837512, var1, System.currentTimeMillis());
      var7.setLatestEventInfo(this, var2, var3, PendingIntent.getActivity(this, 0, this.getIntent(), 0));
      var7.deleteIntent = PendingIntent.getBroadcast(this, 0, var4, 0);
      var6.notify(NOTIFY_ID, var7);
   }

   public void showToastLong(String var1) {
      super.showToastLong(var1);
   }

   public void showToastShort(String var1) {
      super.showToastShort(var1);
   }

   public void showUnityAds(String var1, String var2) {
      if (!var1.isEmpty() && !var2.isEmpty()) {
         Log.d("BKEngine", "Try to show UnityAds z[" + var1 + "] , i[" + var2 + "]");
         UnityAds.setZone(var1, var2);
      } else if (!var1.isEmpty()) {
         Log.d("BKEngine", "Try to show UnityAds z[" + var1 + "]");
         UnityAds.setZone(var1);
      }

      if (UnityAds.canShow() && UnityAds.canShowAds()) {
         Log.d("BKEngine", "Show UnityAds");
         this._isShowingAds = true;
         HashMap var6 = new HashMap();
         var6.put("noOfferScreen", true);
         var6.put("openAnimated", false);
         var6.put("muteVideoSounds", true);
         var6.put("useDeviceOrientationForVideo", true);
         UnityAds.show(var6);
      }

   }
}
