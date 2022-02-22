package com.nibiru.lib.controller;

import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

final class g {
   private static final String dx = Environment.getExternalStorageDirectory() + "/";
   private static String dy;
   public static final String dz;

   static {
      dy = dx + "Nibiru/";
      dz = dy + "Update/";
   }

   private static File a(String var0, String var1) {
      File var2 = new File(var0);
      if (!var2.exists() && var2.mkdirs()) {
         label26: {
            boolean var7;
            try {
               var7 = (new File(var0, ".nomedia")).createNewFile();
            } catch (IOException var9) {
               var9.printStackTrace();
               break label26;
            }

            if (var7) {
            }
         }
      }

      File var3 = new File(var0 + var1);
      if (!var3.exists()) {
         boolean var5;
         try {
            var5 = var3.createNewFile();
         } catch (IOException var8) {
            return null;
         }

         if (!var5) {
            return null;
         }
      }

      return var3;
   }

   public static File a(String param0, String param1, InputStream param2) {
      // $FF: Couldn't be decompiled
   }
}
