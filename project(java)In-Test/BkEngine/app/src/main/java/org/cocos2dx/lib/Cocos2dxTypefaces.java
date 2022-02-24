package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;

public class Cocos2dxTypefaces {
   private static final HashMap sTypefaceCache = new HashMap();

/*   public static Typeface get(Context var0, String var1) {
      Class var7 = Cocos2dxTypefaces.class;
      synchronized(Cocos2dxTypefaces.class){}

      Throwable var10000;
      label204: {
         boolean var10001;
         label203: {
            Typeface var5;
            label209: {
               try {
                  if (sTypefaceCache.containsKey(var1)) {
                     break label203;
                  }

                  if (var1.startsWith("/")) {
                     var5 = Typeface.createFromFile(var1);
                     break label209;
                  }
               } catch (Throwable var27) {
                  var10000 = var27;
                  var10001 = false;
                  break label204;
               }

               Typeface var4;
               try {
                  var4 = Typeface.createFromAsset(var0.getAssets(), var1);
               } catch (Throwable var26) {
                  var10000 = var26;
                  var10001 = false;
                  break label204;
               }

               var5 = var4;
            }

            try {
               sTypefaceCache.put(var1, var5);
            } catch (Throwable var25) {
               var10000 = var25;
               var10001 = false;
               break label204;
            }
         }

         label189:
         try {
            Typeface var3 = (Typeface)sTypefaceCache.get(var1);
            return var3;
         } catch (Throwable var24) {
            var10000 = var24;
            var10001 = false;
            break label189;
         }
      }

      Throwable var2 = var10000;
      throw var2;
   }*/
}
