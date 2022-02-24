package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

public class Cocos2dxHelper {
   private static final String PREFS_NAME = "Cocos2dxPrefsFile";
   private static boolean sAccelerometerEnabled;
   private static AssetManager sAssetManager;
   private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
   private static Cocos2dxHelper.Cocos2dxHelperListener sCocos2dxHelperListener;
   private static Context sContext = null;
   private static String sFileDirectory;
   private static String sPackageName;

   public static void disableAccelerometer() {
      sAccelerometerEnabled = false;
      sCocos2dxAccelerometer.disable();
   }

   public static void enableAccelerometer() {
      sAccelerometerEnabled = true;
      sCocos2dxAccelerometer.enable();
   }

   public static AssetManager getAssetManager() {
      return sAssetManager;
   }

   public static String getCocos2dxPackageName() {
      return sPackageName;
   }

   public static String getCocos2dxWritablePath() {
      return sFileDirectory;
   }

   public static String getCurrentLanguage() {
      return Locale.getDefault().getLanguage();
   }

   public static int getDPI() {
      if (sContext != null) {
         DisplayMetrics var0 = new DisplayMetrics();
         WindowManager var1 = ((Activity)sContext).getWindowManager();
         if (var1 != null) {
            Display var2 = var1.getDefaultDisplay();
            if (var2 != null) {
               var2.getMetrics(var0);
               return (int)(160.0F * var0.density);
            }
         }
      }

      return -1;
   }

   public static String getDeviceModel() {
      return Build.MODEL;
   }

   public static void init(Context var0, Cocos2dxHelper.Cocos2dxHelperListener var1) {
      ApplicationInfo var2 = var0.getApplicationInfo();
      sContext = var0;
      sCocos2dxHelperListener = var1;
      sPackageName = var2.packageName;
      sFileDirectory = var0.getFilesDir().getAbsolutePath();
      nativeSetApkPath(var2.sourceDir);
      sCocos2dxAccelerometer = new Cocos2dxAccelerometer(var0);
      sAssetManager = var0.getAssets();
   }

   private static native void nativeSetApkPath(String var0);

   private static native void nativeSetEditTextDialogResult(byte[] var0);

   public static void onPause() {
      if (sAccelerometerEnabled) {
         sCocos2dxAccelerometer.disable();
      }

   }

   public static void onResume() {
      if (sAccelerometerEnabled) {
         sCocos2dxAccelerometer.enable();
      }

   }

   public static void runOnGLThread(Runnable var0) {
      ((Cocos2dxActivity)sContext).runOnGLThread(var0);
   }

   public static void setAccelerometerInterval(float var0) {
      sCocos2dxAccelerometer.setInterval(var0);
   }

   public static void setEditTextDialogResult(String var0) {
      try {
         final byte[] var2 = var0.getBytes("UTF8");
         sCocos2dxHelperListener.runOnGLThread(new Runnable() {
            public void run() {
               Cocos2dxHelper.nativeSetEditTextDialogResult(var2);
            }
         });
      } catch (UnsupportedEncodingException var3) {
      }
   }

   private static void showDialog(String var0, String var1) {
      sCocos2dxHelperListener.showDialog(var0, var1);
   }

   private static void showEditTextDialog(String var0, String var1, int var2, int var3, int var4, int var5) {
      sCocos2dxHelperListener.showEditTextDialog(var0, var1, var2, var3, var4, var5);
   }

   public static void terminateProcess() {
      Process.killProcess(Process.myPid());
   }

   public interface Cocos2dxHelperListener {
      void runOnGLThread(Runnable var1);

      void showDialog(String var1, String var2);

      void showEditTextDialog(String var1, String var2, int var3, int var4, int var5, int var6);

      void showToastLong(String var1);

      void showToastShort(String var1);
   }
}
