package tv.ouya.console.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class OuyaPurchaseHelper {
   private static SharedPreferences getProductIdSharedPreferences(Context var0) {
      return var0.getSharedPreferences("IapSampleActivity", 0);
   }

   public static String getSuspendedPurchase(Context var0) {
      SharedPreferences var1 = getProductIdSharedPreferences(var0);
      String var2 = var1.getString("currentPurchase", (String)null);
      if (var2 == null) {
         return null;
      } else {
         var1.edit().remove("currentPurchase");
         return var2;
      }
   }

   public static final void suspendPurchase(Context var0, String var1) {
      Editor var2 = getProductIdSharedPreferences(var0).edit();
      var2.putString("currentPurchase", var1);
      var2.apply();
   }
}
