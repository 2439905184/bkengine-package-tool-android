package tv.ouya.console.api;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public abstract class JsonResponseListener {
   public abstract void onCancel();

   public final void onFailure(int var1, String var2) {
      this.onFailure(var1, var2, Bundle.EMPTY);
   }

   public abstract void onFailure(int var1, String var2, Bundle var3);

   public final void onFailure(int var1, String var2, Map var3) {
      this.onFailure(var1, var2, this.packageAsBundle(var3));
   }

   public abstract void onSuccess(Object var1);

   protected Bundle packageAsBundle(Map var1) {
      Bundle var2 = new Bundle();
      if (var1 != null && !var1.isEmpty()) {
         Iterator var3 = var1.entrySet().iterator();

         while(var3.hasNext()) {
            Entry var4 = (Entry)var3.next();
            var2.putStringArray((String)var4.getKey(), (String[])var4.getValue());
         }
      }

      return var2;
   }
}
