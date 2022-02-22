package tv.ouya.console.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import tv.ouya.console.api.OuyaResponseListener;

public class ListenerBinderHelper {
   private OuyaResponseListener listener;

   public ListenerBinderHelper(OuyaResponseListener var1) {
      this.listener = var1;
   }

   public void onCancel() throws RemoteException {
      (new Handler(Looper.getMainLooper())).post(new Runnable() {
         public void run() {
            ListenerBinderHelper.this.listener.onCancel();
         }
      });
   }

   public void onFailure(final int var1, final String var2, final Bundle var3) throws RemoteException {
      (new Handler(Looper.getMainLooper())).post(new Runnable() {
         public void run() {
            ListenerBinderHelper.this.listener.onFailure(var1, var2, var3);
         }
      });
   }

   public void onSuccess(final Object var1) throws RemoteException {
      (new Handler(Looper.getMainLooper())).post(new Runnable() {
         public void run() {
            ListenerBinderHelper.this.listener.onSuccess(var1);
         }
      });
   }
}
