package org.cocos2dx.lib;

import java.io.File;
import java.io.FileInputStream;

public class GameControllerUtils {
   public static void ensureDirectoryExist(String var0) {
      File var1 = new File(var0);
      if (!var1.exists()) {
         var1.mkdirs();
      }

   }

   public static String readJsonFile(String var0) {
      File var1 = new File(var0);
      if (!var1.exists()) {
         return null;
      } else {
         try {
            FileInputStream var2 = new FileInputStream(var1);
            byte[] var4 = new byte[var2.available()];
            var2.read(var4);
            var2.close();
            String var6 = new String(var4, "UTF-8");
            return var6;
         } catch (Exception var7) {
            var7.printStackTrace();
            return null;
         }
      }
   }
}
