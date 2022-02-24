package tv.ouya.console.api;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

public abstract class RequestRunnable implements Runnable {
   protected OuyaResponseListener listener;
   private String target;

   public RequestRunnable(OuyaResponseListener var1, String var2) {
      this.listener = var1;
      this.target = var2;
   }

   abstract void doRun() throws RemoteException;

   public void run() {
      try {
         this.doRun();
      } catch (RemoteException var2) {
         Log.e("OUYASDK", "Remote exception while " + this.target, var2);
         this.listener.onFailure(3003, "", new Bundle());
      }
   }
}
