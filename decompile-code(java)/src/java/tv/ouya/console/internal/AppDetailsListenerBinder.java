package tv.ouya.console.internal;

import android.os.Bundle;
import android.os.RemoteException;
import tv.ouya.console.api.OuyaResponseListener;
import tv.ouya.console.api.store.AppDetails;

public class AppDetailsListenerBinder extends IAppDetailsListener.Stub {
   private ListenerBinderHelper binderHelper;

   public AppDetailsListenerBinder(OuyaResponseListener var1) {
      this.binderHelper = new ListenerBinderHelper(var1);
   }

   public void onCancel() throws RemoteException {
      this.binderHelper.onCancel();
   }

   public void onFailure(int var1, String var2, Bundle var3) throws RemoteException {
      this.binderHelper.onFailure(var1, var2, var3);
   }

   public void onSuccess(AppDetails var1) throws RemoteException {
      this.binderHelper.onSuccess(var1);
   }
}
