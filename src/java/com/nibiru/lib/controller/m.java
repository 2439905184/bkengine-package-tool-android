package com.nibiru.lib.controller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.nibiru.lib.BTUtil;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

final class m {
   private boolean bt = false;
   private Context mContext;
   int versionCode = -1;

   public m(Context var1) {
      this.mContext = var1;
   }

   private static String a(byte[] var0) {
      String var2;
      if (var0 == null) {
         var2 = null;
      } else {
         try {
            var2 = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(var0))).getPublicKey().toString();
            String[] var3 = var2.split("modulus");
            if (var3.length > 1) {
               String var4 = var3[1].replace("\\n", "").substring(1).trim().split("public")[0].replace("\\n", "").replace(",", "").trim();
               return var4;
            }
         } catch (CertificateException var5) {
            var5.printStackTrace();
            GlobalLog.e(var5.toString());
            return null;
         }
      }

      return var2;
   }

   private void a(PackageInfo var1) {
      if (var1 == null) {
         this.bt = false;
      } else {
         this.versionCode = var1.versionCode;

         Exception var10000;
         label57: {
            boolean var10001;
            String var4;
            try {
               var4 = BTUtil.md5(a(var1.signatures[0].toByteArray()));
            } catch (Exception var9) {
               var10000 = var9;
               var10001 = false;
               break label57;
            }

            label58: {
               if (var4 != null) {
                  try {
                     if (var4.equals("413e35df915ee8544609b85cab6fb4d8")) {
                        break label58;
                     }
                  } catch (Exception var8) {
                     var10000 = var8;
                     var10001 = false;
                     break label57;
                  }
               }

               try {
                  if (this.mContext.getPackageName().startsWith("com.nibiru") && var4.equals("922169d4a8d08ca1b6a7d392bbdd6863")) {
                     this.bt = true;
                     return;
                  }
               } catch (Exception var7) {
                  var10000 = var7;
                  var10001 = false;
                  break label57;
               }

               try {
                  Log.e("NIBIRU SDK", "NO PASS VALIDATION SERVICE: 0 ");
                  this.bt = false;
                  return;
               } catch (Exception var6) {
                  var10000 = var6;
                  var10001 = false;
                  break label57;
               }
            }

            try {
               Log.i("NIBIRU SDK", "PASS VALIDATION SERVICE: 0");
               this.bt = true;
               return;
            } catch (Exception var5) {
               var10000 = var5;
               var10001 = false;
            }
         }

         Exception var2 = var10000;
         var2.printStackTrace();
         Log.e("NIBIRU SDK", "NO PASS VALIDATION SERVICE: 1");
         this.bt = false;
      }
   }

   public final boolean I() {
      return this.bt;
   }

   public final void a(String var1) {
      if (this.mContext == null) {
         this.bt = false;
      } else if (var1 != null && var1.length() >= 3) {
         if (var1.startsWith("com.nibiru")) {
            try {
               this.a(this.mContext.getPackageManager().getPackageInfo(var1, 64));
            } catch (NameNotFoundException var9) {
               GlobalLog.d("com.nibiru.play can't find");
               this.bt = false;
            }
         } else {
            this.bt = false;
         }
      } else {
         PackageInfo var3;
         label38: {
            PackageInfo var7;
            try {
               var7 = this.mContext.getPackageManager().getPackageInfo("com.nibiru", 64);
            } catch (NameNotFoundException var11) {
               GlobalLog.d("com.nibiru can't find");
               var3 = null;
               break label38;
            }

            var3 = var7;
         }

         PackageInfo var4;
         if (var3 == null) {
            label33: {
               PackageInfo var6;
               try {
                  var6 = this.mContext.getPackageManager().getPackageInfo("com.nibiru.play", 64);
               } catch (NameNotFoundException var10) {
                  GlobalLog.d("com.nibiru.play can't find");
                  var4 = null;
                  break label33;
               }

               var4 = var6;
            }
         } else {
            var4 = var3;
         }

         this.a(var4);
      }
   }
}
