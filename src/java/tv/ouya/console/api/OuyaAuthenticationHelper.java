package tv.ouya.console.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;

public class OuyaAuthenticationHelper {
   public static final String OUYA_ACCOUNT_TYPE = "tv.ouya.account.v1";

   public static boolean handleError(Activity var0, int var1, String var2, Bundle var3, int var4, OuyaResponseListener var5) {
      if (var1 == 2001) {
         if (var3.containsKey("intent")) {
            var0.startActivityForResult((Intent)var3.getParcelable("intent"), var4);
            return true;
         }
      } else if (var1 == 2014 || var1 == 2020 || var1 == 2021 || var1 == 2019) {
         Intent var6 = new Intent();
         var6.setComponent(new ComponentName("tv.ouya.console", "tv.ouya.console" + ".launcher.settings.CreditCardErrorActivity"));
         var6.putExtra("ERROR_CODE", var1);
         var0.startActivityForResult(var6, var4);
         return true;
      }

      return false;
   }
}
