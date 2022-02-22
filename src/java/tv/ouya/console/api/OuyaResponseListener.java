package tv.ouya.console.api;

import android.os.Bundle;

public interface OuyaResponseListener {
   void onCancel();

   void onFailure(int var1, String var2, Bundle var3);

   void onSuccess(Object var1);
}
