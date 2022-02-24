package tv.ouya.console.api;

import android.os.Bundle;

public abstract class CancelIgnoringJsonResponseListener extends JsonResponseListener {
   public void onCancel() {
   }

   public abstract void onFailure(int var1, String var2, Bundle var3);

   public abstract void onSuccess(Object var1);
}
