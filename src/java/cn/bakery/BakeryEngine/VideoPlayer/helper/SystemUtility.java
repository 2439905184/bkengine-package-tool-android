package cn.bakery.BakeryEngine.VideoPlayer.helper;

import android.os.Environment;
import android.os.Build.VERSION;
import cn.bakery.BKEngine.R;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class SystemUtility {
   private static int sArmArchitecture = -1;
   protected static String sTempPath = "/data/local/tmp";

   public static int getArmArchitecture() {
      if (sArmArchitecture != -1) {
         return sArmArchitecture;
      } else {
         label100: {
            FileInputStream var0;
            InputStreamReader var1;
            boolean var10001;
            BufferedReader var2;
            try {
               var0 = new FileInputStream("/proc/cpuinfo");
               var1 = new InputStreamReader(var0);
               var2 = new BufferedReader(var1);
            } catch (Exception var16) {
               var10001 = false;
               break label100;
            }

            try {
               String var6;
               String var7;
               do {
                  String[] var5;
                  do {
                     var5 = var2.readLine().split(":");
                  } while(var5.length != 2);

                  var6 = var5[0].trim();
                  var7 = var5[1].trim();
               } while(var6.compareToIgnoreCase("CPU architecture") != 0);

               sArmArchitecture = Integer.parseInt(var7.substring(0, 1));
               return sArmArchitecture;
            } finally {
               label106: {
                  try {
                     var2.close();
                     var1.close();
                     var0.close();
                     if (sArmArchitecture == -1) {
                        sArmArchitecture = 6;
                     }
                  } catch (Exception var14) {
                     var10001 = false;
                     break label106;
                  }

                  label91:
                  try {
                     ;
                  } catch (Exception var13) {
                     var10001 = false;
                     break label91;
                  }
               }
            }
         }

         sArmArchitecture = 6;
         return sArmArchitecture;
      }
   }

   public static int getDrawableId(String var0) {
      try {
         int var2 = Class.forName(R.drawable.class.getName()).getField(var0).getInt(new R.drawable());
         return var2;
      } catch (Exception var3) {
         return -1;
      }
   }

   public static String getExternalStoragePath() {
      return Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory().getAbsolutePath() : "/";
   }

   public static int getSDKVersionCode() {
      return VERSION.SDK_INT;
   }

   public static int getStringHash(String var0) {
      byte[] var1 = var0.getBytes();
      int var2 = 1315423911;

      for(int var3 = 0; var3 < var1.length; ++var3) {
         var2 ^= var1[var3] + (var2 << 5) + (var2 >> 2);
      }

      return var2 & Integer.MAX_VALUE;
   }

   public static String getTempPath() {
      return sTempPath;
   }

   public static String getTimeString(int var0) {
      if (var0 < 0) {
         return String.format("--:--:--", new Object[0]);
      } else {
         int var1 = var0 / 1000;
         int var2 = var1 / 3600;
         int var3 = var1 % 3600;
         int var4 = var3 / 60;
         int var5 = var3 % 60;
         Object[] var6 = new Object[]{var2, var4, var5};
         return String.format("%02d:%02d:%02d", var6);
      }
   }

   public static Object realloc(Object var0, int var1) {
      int var2 = Array.getLength(var0);
      Object var3 = Array.newInstance(var0.getClass().getComponentType(), var1);
      int var4 = Math.min(var2, var1);
      if (var4 > 0) {
         System.arraycopy(var0, 0, var3, 0, var4);
      }

      return var3;
   }

   public static native int setenv(String var0, String var1, boolean var2);

   public static boolean simpleHttpGet(String var0, String var1) {
      boolean var10001;
      HttpResponse var4;
      try {
         HttpGet var2 = new HttpGet(var0);
         var2.setHeader("Accept-Encoding", "gzip");
         var4 = (new DefaultHttpClient()).execute(var2);
         if (var4.getStatusLine().getStatusCode() != 200) {
            return false;
         }
      } catch (IOException var17) {
         var10001 = false;
         return false;
      }

      Header var6;
      Object var7;
      try {
         HttpEntity var5 = var4.getEntity();
         var6 = var5.getContentEncoding();
         var7 = var5.getContent();
      } catch (IOException var16) {
         var10001 = false;
         return false;
      }

      if (var6 != null) {
         try {
            if (var6.getValue().equalsIgnoreCase("gzip")) {
               var7 = new GZIPInputStream((InputStream)var7);
            }
         } catch (IOException var15) {
            var10001 = false;
            return false;
         }
      }

      FileOutputStream var8;
      byte[] var9;
      try {
         var8 = new FileOutputStream(var1);
         var9 = new byte[4096];
      } catch (IOException var14) {
         var10001 = false;
         return false;
      }

      while(true) {
         int var10;
         try {
            var10 = ((InputStream)var7).read(var9);
         } catch (IOException var12) {
            var10001 = false;
            break;
         }

         if (var10 <= 0) {
            try {
               var8.close();
               ((InputStream)var7).close();
               return true;
            } catch (IOException var11) {
               var10001 = false;
               break;
            }
         }

         try {
            var8.write(var9, 0, var10);
         } catch (IOException var13) {
            var10001 = false;
            break;
         }
      }

      return false;
   }
}
