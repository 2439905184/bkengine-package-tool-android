package com.unity3d.ads.android.view;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.unity3d.ads.android.UnityAds;
import com.unity3d.ads.android.UnityAdsDeviceLog;

public class UnityAdsFullscreenActivity extends Activity {
   public void onCreate(Bundle var1) {
      UnityAdsDeviceLog.entered();
      super.onCreate(var1);
      UnityAds.changeActivity(this);
   }

   protected void onDestroy() {
      UnityAdsDeviceLog.entered();
      super.onDestroy();
      UnityAds.handleFullscreenDestroy();
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      return false;
   }

   public void onPause() {
      UnityAdsDeviceLog.entered();
      super.onPause();
   }

   public void onRestart() {
      UnityAdsDeviceLog.entered();
      super.onRestart();
   }

   public void onResume() {
      UnityAdsDeviceLog.entered();
      super.onResume();
      UnityAds.changeActivity(this);
      UnityAds.checkMainview();
   }

   public void onStart() {
      UnityAdsDeviceLog.entered();
      super.onStart();
   }

   public void onStop() {
      UnityAdsDeviceLog.entered();
      super.onStop();
   }
}
