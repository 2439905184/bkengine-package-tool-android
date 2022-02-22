package com.nibiru.lib.controller;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

class NibiruCheckUtil {
   public static final String NIBIRU_PROPERTY = "nibiru.properties";
   private AlertDialog dN;
   private String dO;
   private String dP;
   private String dQ;
   private String dR;
   private String dS;
   private String dT;
   private String dU;
   private String dV;
   private String dW;
   private String dX;
   private ProgressDialog dY;
   private File dZ = null;
   private Handler handler = new Handler();
   private Context mContext;

   public NibiruCheckUtil(Context var1) {
      this.mContext = var1;
      if (getCurrentLangType(this.mContext) == 1) {
         this.dO = "手柄游戏";
         this.dP = "本游戏支持手柄操作，安装手柄驱动即可获得全新游戏体验，是否安装？";
         this.dQ = "安装";
         this.dR = "取消";
         this.dS = "正在获取手柄驱动...";
         this.dT = "获取手柄驱动失败";
         this.dX = "抱歉，更新手柄驱动失败，您可以在www.nibiruplayer.com下载Nibiru产品";
         this.dU = "本游戏支持手柄操控，连接手柄即可获得最佳游戏体验，是否连接手柄？";
         this.dV = "连接手柄";
         this.dW = "稍候再说";
      } else {
         this.dO = "Gamepad Game";
         this.dP = "This game support Gamepad only when you install the Nibiru gamepad driver, install now?";
         this.dQ = "Install";
         this.dR = "Later";
         this.dS = "Downloading the Gamepad driver";
         this.dT = "Get Gamepad driver failed.";
         this.dX = "Get Driver failed, you can install the app from www.nibiruplayer.com";
         this.dU = "This game support Gamepad controll, Do you want to connect gamepad for best game experiences?";
         this.dV = "Connect Gamepad";
         this.dW = "Later";
      }
   }

   private static File H() {
      new g();

      try {
         HttpURLConnection var3 = (HttpURLConnection)(new URL("http://www.nibiruplayer.com/download/driver/driver.apk")).openConnection();
         var3.setConnectTimeout(10000);
         var3.setRequestMethod("GET");
         if (var3.getResponseCode() == 200) {
            InputStream var4 = var3.getInputStream();
            File var5 = g.a(g.dz, "driver.apk", var4);
            return var5;
         }
      } catch (MalformedURLException var6) {
         var6.printStackTrace();
      } catch (IOException var7) {
         var7.printStackTrace();
      }

      return null;
   }

   static int a(Context var0) {
      if (var0 != null) {
         PackageManager var1 = var0.getPackageManager();
         if (var1 != null) {
            PackageInfo var5;
            label24: {
               PackageInfo var6;
               try {
                  var6 = var1.getPackageInfo("com.nibiru", 64);
               } catch (NameNotFoundException var8) {
                  PackageInfo var4;
                  try {
                     var4 = var1.getPackageInfo("com.nibiru.play", 64);
                  } catch (NameNotFoundException var7) {
                     var7.printStackTrace();
                     return -1;
                  }

                  var5 = var4;
                  break label24;
               }

               var5 = var6;
            }

            if (var5 != null) {
               return var5.versionCode;
            }
         }
      }

      return -1;
   }

   // $FF: synthetic method
   static void a(final NibiruCheckUtil var0) {
      if (var0.dN == null || !var0.dN.isShowing()) {
         Builder var1 = new Builder(var0.mContext);
         var1.setMessage(var0.dP);
         var1.setTitle(var0.dO);
         var1.setPositiveButton(var0.dQ, new OnClickListener() {
            public final void onClick(DialogInterface var1, int var2) {
               var1.dismiss();
               if (var0.dY != null && var0.dY.isShowing()) {
                  var0.dY.dismiss();
               }

               var0.dY = NibiruCheckUtil.getCircleProgressBar(var0.mContext, var0.dS);
               var0.dY.show();
               (new Thread() {
                  public final void run() {
                     if (var0.retrieveApkFromAssets() && var0.dZ != null && var0.handler != null) {
                        var0.handler.post(new Runnable() {
                           public final void run() {
                              if (var0.dY != null) {
                                 var0.dY.dismiss();
                              }

                              if (var0.dZ != null) {
                                 NibiruCheckUtil.a(var0, var0.dZ);
                              }

                           }
                        });
                     } else {
                        var0.dZ = NibiruCheckUtil.g(var0);
                        if (var0.dZ != null) {
                           if (var0.handler != null) {
                              var0.handler.post(new Runnable() {
                                 public final void run() {
                                    if (var0.dY != null) {
                                       var0.dY.dismiss();
                                    }

                                    if (var0.dZ != null) {
                                       NibiruCheckUtil.a(var0, var0.dZ);
                                    }

                                 }
                              });
                              return;
                           }
                        } else if (var0.handler != null) {
                           var0.handler.post(new Runnable() {
                              public final void run() {
                                 if (var0.dY != null) {
                                    var0.dY.dismiss();
                                 }

                                 Toast.makeText(var0.mContext, var0.dT, 1).show();
                              }
                           });
                           return;
                        }
                     }

                  }
               }).start();
            }
         });
         var1.setNegativeButton(var0.dR, new OnClickListener(var0) {
            public final void onClick(DialogInterface var1, int var2) {
               var1.dismiss();
            }
         });
         var0.dN = var1.create();
         var0.dN.show();
      }

   }

   // $FF: synthetic method
   static void a(NibiruCheckUtil var0, File var1) {
      Intent var2 = new Intent();
      var2.setAction("android.intent.action.VIEW");
      var2.setDataAndType(Uri.fromFile(var1), "application/vnd.android.package-archive");
      var2.setFlags(268435456);
      var0.mContext.startActivity(var2);
   }

   private boolean a(Context var1, String var2) {
      if (var1 != null) {
         PackageManager var3 = var1.getPackageManager();
         if (var3 != null) {
            PackageInfo var5;
            label31: {
               PackageInfo var7;
               try {
                  var7 = var3.getPackageInfo(var2, 64);
               } catch (NameNotFoundException var8) {
                  var5 = null;
                  break label31;
               }

               var5 = var7;
            }

            if (var1 == null) {
               GlobalLog.e("Why context is null?");
               return false;
            }

            if (this.dZ != null) {
               PackageInfo var6 = var1.getPackageManager().getPackageArchiveInfo(this.dZ.getAbsolutePath(), 0);
               if (var6 != null && var5 != null && var6.packageName.equals(var5.packageName) && var5.versionCode < var6.versionCode && this.getApkSize(this.mContext, var5.packageName) <= 6000000L) {
                  return true;
               }
            }
         }
      }

      return false;
   }

   private static boolean b(Context var0, String var1) {
      if (var0 != null) {
         PackageManager var2 = var0.getPackageManager();
         if (var2 != null) {
            PackageInfo var4;
            label17: {
               PackageInfo var5;
               try {
                  var5 = var2.getPackageInfo(var1, 64);
               } catch (NameNotFoundException var6) {
                  var4 = null;
                  break label17;
               }

               var4 = var5;
            }

            if (var4 != null) {
               return true;
            }
         }
      }

      return false;
   }

   // $FF: synthetic method
   static File g(NibiruCheckUtil var0) {
      return H();
   }

   public static ProgressDialog getCircleProgressBar(Context var0, String var1) {
      ProgressDialog var2 = new ProgressDialog(var0);
      var2.setProgressStyle(0);
      var2.setMessage(var1);
      var2.setOnCancelListener(new OnCancelListener() {
         public final void onCancel(DialogInterface var1) {
            var1.dismiss();
         }
      });
      var2.setIndeterminate(false);
      var2.setCancelable(true);
      return var2;
   }

   public static int getCurrentLangType(Context var0) {
      if (var0 != null) {
         String var1 = var0.getResources().getConfiguration().locale.getLanguage();
         if (var1 == null || !var1.startsWith("zh")) {
            return 3;
         }
      }

      return 1;
   }

   public static int getNibiruVerCode(Context var0, String var1) {
      Exception var10000;
      label55: {
         InputStream var3;
         boolean var10001;
         try {
            var3 = var0.getPackageManager().getResourcesForApplication(var1).getAssets().open("nibiru.properties");
         } catch (Exception var13) {
            var10000 = var13;
            var10001 = false;
            break label55;
         }

         if (var3 == null) {
            return 1;
         }

         BufferedReader var4;
         try {
            var4 = new BufferedReader(new InputStreamReader(var3));
         } catch (Exception var12) {
            var10000 = var12;
            var10001 = false;
            break label55;
         }

         while(true) {
            String var5;
            try {
               var5 = var4.readLine();
            } catch (Exception var11) {
               var10000 = var11;
               var10001 = false;
               break;
            }

            if (var5 == null) {
               return 1;
            }

            int var8;
            boolean var9;
            try {
               String[] var6 = var5.split("=");
               if (var6.length < 2) {
                  continue;
               }

               String var7 = var6[0].trim();
               if (var6[1].trim().length() == 0 || var7.equals("channel_code")) {
                  continue;
               }

               var8 = Integer.parseInt(var6[1]);
               var9 = var7.equals("version_code");
            } catch (Exception var10) {
               var10000 = var10;
               var10001 = false;
               break;
            }

            if (var9) {
               return var8;
            }
         }
      }

      Exception var2 = var10000;
      var2.printStackTrace();
      return 1;
   }

   public static void showMessage(String var0, Context var1) {
      Toast.makeText(var1, var0, 0).show();
   }

   public void checkInstallNibiru() {
      if (this.handler != null) {
         this.handler.post(new Runnable() {
            public final void run() {
               NibiruCheckUtil.a(NibiruCheckUtil.this);
            }
         });
      }

   }

   public long getApkSize(Context var1, String var2) {
      long var3 = 0L;

      int var7;
      try {
         File var5 = new File(var1.getPackageManager().getApplicationInfo(var2, 0).sourceDir);
         if (!var5.exists()) {
            return var3;
         }

         var7 = (new FileInputStream(var5)).available();
      } catch (Exception var8) {
         var8.printStackTrace();
         return var3;
      }

      var3 = (long)var7;
      return var3;
   }

   public void installApk() {
      if (this.dZ != null && this.dZ.exists()) {
         Intent var1 = new Intent();
         var1.setAction("android.intent.action.VIEW");
         var1.setDataAndType(Uri.fromFile(this.dZ), "application/vnd.android.package-archive");
         var1.setFlags(268435456);
         this.mContext.startActivity(var1);
      } else {
         Toast.makeText(this.mContext, this.dX, 1).show();
      }
   }

   public boolean isNibiruInstall() {
      return this.mContext != null && (b(this.mContext, "com.nibiru") || b(this.mContext, "com.nibiru.play"));
   }

   public boolean isNibiruUpdate() {
      if (this.mContext == null) {
         GlobalLog.e("Why mContext is null?");
      } else {
         if (this.dZ == null) {
            this.retrieveApkFromAssets();
         }

         if (this.a(this.mContext, "com.nibiru") || this.a(this.mContext, "com.nibiru.play")) {
            return true;
         }
      }

      return false;
   }

   public boolean retrieveApkFromAssets() {
      IOException var10000;
      label95: {
         String[] var2;
         int var3;
         boolean var10001;
         try {
            var2 = this.mContext.getAssets().list("");
            var3 = var2.length;
         } catch (IOException var17) {
            var10000 = var17;
            var10001 = false;
            break label95;
         }

         int var4 = 0;

         String var5;
         while(true) {
            if (var4 >= var3) {
               var5 = null;
               break;
            }

            try {
               var5 = var2[var4];
               if (var5.contains("Nibiru") && var5.endsWith(".apk")) {
                  break;
               }
            } catch (IOException var19) {
               var10000 = var19;
               var10001 = false;
               break label95;
            }

            ++var4;
         }

         if (var5 == null) {
            return false;
         }

         try {
            File var6 = new File(g.dz);
            if (!var6.exists() && !var6.mkdirs()) {
               GlobalLog.e("mkdir failed");
               return false;
            }
         } catch (IOException var16) {
            var10000 = var16;
            var10001 = false;
            break label95;
         }

         InputStream var7;
         try {
            var7 = this.mContext.getAssets().open(var5);
            this.dZ = new File(g.dz + "driver.apk");
            if (this.dZ.exists()) {
               this.dZ.delete();
            }
         } catch (IOException var15) {
            var10000 = var15;
            var10001 = false;
            break label95;
         }

         try {
            if (!this.dZ.createNewFile()) {
               GlobalLog.e("create file failed");
               return false;
            }
         } catch (IOException var18) {
            var10000 = var18;
            var10001 = false;
            break label95;
         }

         FileOutputStream var8;
         byte[] var9;
         try {
            var8 = new FileOutputStream(this.dZ);
            var9 = new byte[1024];
         } catch (IOException var14) {
            var10000 = var14;
            var10001 = false;
            break label95;
         }

         while(true) {
            int var10;
            try {
               var10 = var7.read(var9);
            } catch (IOException var12) {
               var10000 = var12;
               var10001 = false;
               break;
            }

            if (var10 <= 0) {
               try {
                  var8.close();
                  var7.close();
                  return true;
               } catch (IOException var11) {
                  var10000 = var11;
                  var10001 = false;
                  break;
               }
            }

            try {
               var8.write(var9, 0, var10);
            } catch (IOException var13) {
               var10000 = var13;
               var10001 = false;
               break;
            }
         }
      }

      IOException var1 = var10000;
      var1.printStackTrace();
      return false;
   }

   public void showDeviceTip(final ControllerServiceImpl var1, final Bundle var2) {
      Builder var3 = new Builder(var1.getContext());
      var3.setTitle(this.dO);
      var3.setMessage(this.dU);
      var3.setPositiveButton(this.dV, new OnClickListener(this) {
         public final void onClick(DialogInterface var1x, int var2x) {
            var1.a(var1.getContext(), var2);
            var1x.dismiss();
         }
      });
      var3.setNegativeButton(this.dW, new OnClickListener(this) {
         public final void onClick(DialogInterface var1, int var2) {
            var1.dismiss();
         }
      });
      var3.create().show();
   }
}
