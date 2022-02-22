package com.unity3d.ads.android;

public interface IUnityAdsListener {
   void onFetchCompleted();

   void onFetchFailed();

   void onHide();

   void onShow();

   void onVideoCompleted(String var1, boolean var2);

   void onVideoStarted();
}
