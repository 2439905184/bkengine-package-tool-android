package tv.ouya.console.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;
import tv.ouya.console.api.GamerInfo;
import tv.ouya.console.api.OuyaResponseListener;

public class GamerInfoListenerBinder extends IStringListener.Stub {
   private static final String LOG_TAG = "GamerInfoListenerBinder";
   private ListenerBinderHelper binderHelper;

   public GamerInfoListenerBinder(OuyaResponseListener var1) {
      this.binderHelper = new ListenerBinderHelper(var1);
   }

   public void onCancel() throws RemoteException {
      this.binderHelper.onCancel();
   }

   public void onFailure(int var1, String var2, Bundle var3) throws RemoteException {
      this.binderHelper.onFailure(var1, var2, var3);
   }

   public void onSuccess(String var1) throws RemoteException {
      try {
         JSONObject var4 = (new JSONObject(var1)).getJSONObject("gamer");
         GamerInfo var5 = new GamerInfo(var4.optString("uuid", ""), var4.optString("username", ""));
         this.binderHelper.onSuccess(var5);
      } catch (JSONException var6) {
         Log.e("GamerInfoListenerBinder", "Exception parsing result: " + var6);
      }
   }
}
