package tv.ouya.console.api;

import android.util.Log;

public class GamerIdentity {
   private static GamerIdentity instance = new GamerIdentity();
   private String gamerToken;

   public static GamerIdentity getInstance() {
      return instance;
   }

   @Deprecated
   public static void setInstance(GamerIdentity var0) {
      instance = var0;
   }

   public String getGamerToken() {
      return this.gamerToken;
   }

   public void setGamerToken(String var1) {
      Log.d("Ouya Launcher Identity", "setting token " + var1);
      this.gamerToken = var1;
   }
}
