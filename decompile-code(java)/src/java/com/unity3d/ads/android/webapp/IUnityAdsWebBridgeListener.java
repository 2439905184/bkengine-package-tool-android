package com.unity3d.ads.android.webapp;

import org.json.JSONObject;

public interface IUnityAdsWebBridgeListener {
   void onCloseAdsView(JSONObject var1);

   void onOpenPlayStore(JSONObject var1);

   void onOrientationRequest(JSONObject var1);

   void onPauseVideo(JSONObject var1);

   void onPlayVideo(JSONObject var1);

   void onWebAppInitComplete(JSONObject var1);

   void onWebAppLoadComplete(JSONObject var1);
}
