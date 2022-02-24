package tv.ouya.console.internal.util;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.Locale;

public class Strings {
   public static InputStream asStream(String var0) {
      return new ByteArrayInputStream(var0.getBytes());
   }

   public static String formatDollarAmount(int var0) {
      NumberFormat var1 = NumberFormat.getCurrencyInstance(Locale.US);
      return "$" + var1.format((double)((float)var0 / 100.0F)).substring(1);
   }

   public static String fromFile(String var0) {
      try {
         String var2 = fromStream(new FileInputStream(var0));
         return var2;
      } catch (IOException var3) {
         throw new RuntimeException(var3);
      }
   }

   public static String fromStream(InputStream var0) throws IOException {
      char[] var1 = new char[65536];
      StringBuilder var2 = new StringBuilder();
      InputStreamReader var3 = new InputStreamReader(var0, "UTF-8");

      String var7;
      label117: {
         Throwable var10000;
         while(true) {
            boolean var10001;
            int var5;
            try {
               var5 = var3.read(var1, 0, var1.length);
            } catch (Throwable var19) {
               var10000 = var19;
               var10001 = false;
               break;
            }

            if (var5 > 0) {
               try {
                  var2.append(var1, 0, var5);
               } catch (Throwable var17) {
                  var10000 = var17;
                  var10001 = false;
                  break;
               }
            } else {
               try {
                  var7 = var2.toString();
                  break label117;
               } catch (Throwable var18) {
                  var10000 = var18;
                  var10001 = false;
                  break;
               }
            }
         }

         Throwable var4 = var10000;
         var3.close();
         var0.close();
         throw var4;
      }

      var3.close();
      var0.close();
      return var7;
   }

   public static boolean hasLength(String var0) {
      return var0 != null && var0.length() > 0;
   }

   public static boolean isEmptyOrWhitespace(String var0) {
      return var0 == null || var0.trim().length() == 0;
   }

   public static String join(String var0, Collection var1) {
      return join(var0, var1.toArray());
   }

   public static String join(String var0, Object... var1) {
      String var2 = "";
      StringBuilder var3 = new StringBuilder();
      int var4 = var1.length;

      for(int var5 = 0; var5 < var4; ++var5) {
         Object var6 = var1[var5];
         String var7;
         if (var6 == null) {
            var7 = null;
         } else {
            var7 = var6.toString();
         }

         if (var7 != null && var7.length() > 0) {
            var3.append(var2).append(var7);
            var2 = var0;
         }
      }

      return var3.toString();
   }
}
