package com.unity3d.ads.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;

public class UnityAdsUtils {
   private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");

   @SuppressLint({"DefaultLocale"})
   public static String Md5(String var0) {
      MessageDigest var2;
      label23: {
         MessageDigest var7;
         try {
            var7 = MessageDigest.getInstance("MD5");
         } catch (NoSuchAlgorithmException var8) {
            var8.printStackTrace();
            var2 = null;
            break label23;
         }

         var2 = var7;
      }

      var2.update(var0.getBytes(), 0, var0.length());
      byte[] var3 = var2.digest();
      String var4 = new String();

      for(int var5 = 0; var5 < var3.length; ++var5) {
         int var6 = 255 & var3[var5];
         if (var6 <= 15) {
            var4 = var4 + "0";
         }

         var4 = var4 + Integer.toHexString(var6);
      }

      return var4.toUpperCase();
   }

   public static String SHA1(String var0) throws NoSuchAlgorithmException, UnsupportedEncodingException {
      MessageDigest var1 = MessageDigest.getInstance("SHA-1");
      var1.update(var0.getBytes("iso-8859-1"), 0, var0.length());
      return convertToHex(var1.digest());
   }

   public static boolean canUseExternalStorage() {
      return Environment.getExternalStorageState().equals("mounted");
   }

   private static String convertToHex(byte[] var0) {
      StringBuilder var1 = new StringBuilder();
      int var2 = var0.length;

      for(int var3 = 0; var3 < var2; ++var3) {
         byte var4 = var0[var3];
         int var5 = 15 & var4 >>> 4;
         int var6 = 0;

         while(true) {
            char var7;
            if (var5 >= 0 && var5 <= 9) {
               var7 = (char)(var5 + 48);
            } else {
               var7 = (char)(97 + (var5 - 10));
            }

            var1.append(var7);
            var5 = var4 & 15;
            int var9 = var6 + 1;
            if (var6 >= 1) {
               break;
            }

            var6 = var9;
         }
      }

      return var1.toString();
   }

   public static File createCacheDir() {
      File var0 = new File(getCacheDirectory());
      var0.mkdirs();
      if (var0 != null) {
         writeFile(new File(getCacheDirectory() + "/.nomedia"), "");
      }

      return var0;
   }

   public static String getCacheDirectory() {
      return Environment.getExternalStorageDirectory().toString() + "/" + "UnityAdsVideoCache";
   }

   public static long getSizeForLocalFile(String var0) {
      File var1 = new File(var0);
      File var2 = new File(getCacheDirectory() + "/" + var1.getName());
      long var3 = -1L;
      if (var2.exists()) {
         var3 = var2.length();
      }

      return var3;
   }

   public static boolean isDebuggable(Context var0) {
      boolean var1 = false;
      if (var0 == null) {
         return false;
      } else {
         PackageManager var2 = var0.getPackageManager();

         boolean var4;
         label53: {
            int var11;
            try {
               ApplicationInfo var10 = var2.getApplicationInfo(var0.getPackageName(), 0);
               var11 = 2 & var10.flags;
               var10.flags = var11;
            } catch (NameNotFoundException var16) {
               var1 = true;
               var4 = false;
               break label53;
            }

            if (var11 != 0) {
               var4 = true;
            } else {
               var4 = false;
               var1 = false;
            }
         }

         if (var1) {
            boolean var10001;
            Signature[] var7;
            try {
               var7 = var0.getPackageManager().getPackageInfo(var0.getPackageName(), 64).signatures;
            } catch (NameNotFoundException var14) {
               var10001 = false;
               return var4;
            } catch (CertificateException var15) {
               var10001 = false;
               return var4;
            }

            int var8 = 0;

            while(true) {
               boolean var9;
               try {
                  if (var8 >= var7.length) {
                     break;
                  }

                  var9 = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(var7[var8].toByteArray()))).getSubjectX500Principal().equals(DEBUG_DN);
               } catch (NameNotFoundException var12) {
                  var10001 = false;
                  break;
               } catch (CertificateException var13) {
                  var10001 = false;
                  break;
               }

               var4 = var9;
               if (var9) {
                  break;
               }

               ++var8;
            }
         }

         return var4;
      }
   }

   public static boolean isFileInCache(String var0) {
      File var1 = new File(var0);
      return (new File(getCacheDirectory() + "/" + var1.getName())).exists();
   }

   public static boolean isFileRequiredByCampaigns(String var0, ArrayList var1) {
      boolean var2 = true;
      if (var0 != null && var1 != null) {
         File var3 = new File(var0);
         if (!var3.getName().equals(".nomedia")) {
            Iterator var4 = var1.iterator();

            File var5;
            do {
               if (!var4.hasNext()) {
                  return false;
               }

               var5 = new File(((UnityAdsCampaign)var4.next()).getVideoFilename());
            } while(!var3.getName().equals(var5.getName()));

            return var2;
         }
      } else {
         var2 = false;
      }

      return var2;
   }

   public static String readFile(File var0, boolean var1) {
      String var2 = "";
      if (var0.exists() && var0.canRead()) {
         Exception var4;
         label54: {
            BufferedReader var3;
            try {
               var3 = new BufferedReader(new FileReader(var0));
            } catch (Exception var12) {
               var4 = var12;
               break label54;
            }

            Exception var10000;
            while(true) {
               String var5;
               boolean var10001;
               try {
                  var5 = var3.readLine();
               } catch (Exception var11) {
                  var10000 = var11;
                  var10001 = false;
                  break;
               }

               if (var5 == null) {
                  try {
                     var3.close();
                  } catch (Exception var8) {
                     UnityAdsDeviceLog.error("Problem closing reader: " + var8.getMessage());
                  }

                  return var2;
               }

               try {
                  var2 = var2.concat(var5);
               } catch (Exception var10) {
                  var10000 = var10;
                  var10001 = false;
                  break;
               }

               if (var1) {
                  String var6;
                  try {
                     var6 = var2.concat("\n");
                  } catch (Exception var9) {
                     var10000 = var9;
                     var10001 = false;
                     break;
                  }

                  var2 = var6;
               }
            }

            var4 = var10000;
         }

         UnityAdsDeviceLog.error("Problem reading file: " + var4.getMessage());
         return null;
      } else {
         UnityAdsDeviceLog.error("File did not exist or couldn't be read");
         return null;
      }
   }

   public static void removeFile(String var0) {
      if (var0 != null) {
         File var1 = new File(var0);
         File var2 = new File(getCacheDirectory() + "/" + var1.getName());
         if (!var2.exists()) {
            UnityAdsDeviceLog.debug("File: " + var2.getAbsolutePath() + " doesn't exist.");
            return;
         }

         if (var2.delete()) {
            UnityAdsDeviceLog.debug("Deleted: " + var2.getAbsolutePath());
            return;
         }

         UnityAdsDeviceLog.error("Could not delete: " + var2.getAbsolutePath());
      }

   }

   public static void runOnUiThread(Runnable var0) {
      runOnUiThread(var0, 0L);
   }

   public static void runOnUiThread(Runnable var0, long var1) {
      Handler var3 = new Handler(Looper.getMainLooper());
      if (var1 > 0L) {
         var3.postDelayed(var0, var1);
      } else {
         var3.post(var0);
      }
   }

   public static boolean writeFile(File var0, String var1) {
      label19: {
         Exception var3;
         label18: {
            FileOutputStream var2;
            try {
               var2 = new FileOutputStream(var0);
            } catch (Exception var5) {
               var3 = var5;
               break label18;
            }

            try {
               var2.write(var1.getBytes());
               var2.flush();
               var2.close();
               break label19;
            } catch (Exception var4) {
               var3 = var4;
            }
         }

         UnityAdsDeviceLog.error("Could not write file: " + var3.getMessage());
         return false;
      }

      UnityAdsDeviceLog.debug("Wrote file: " + var0.getAbsolutePath());
      return true;
   }
}
