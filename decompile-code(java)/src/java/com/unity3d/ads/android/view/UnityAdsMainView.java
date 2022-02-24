package com.unity3d.ads.android.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.FrameLayout.LayoutParams;
import com.unity3d.ads.android.UnityAds;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.video.IUnityAdsVideoPlayerListener;
import com.unity3d.ads.android.video.UnityAdsVideoPlayView;
import com.unity3d.ads.android.webapp.IUnityAdsWebBridgeListener;
import com.unity3d.ads.android.webapp.IUnityAdsWebViewListener;
import com.unity3d.ads.android.webapp.UnityAdsInstrumentation;
import com.unity3d.ads.android.webapp.UnityAdsWebBridge;
import com.unity3d.ads.android.webapp.UnityAdsWebData;
import com.unity3d.ads.android.webapp.UnityAdsWebView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

@TargetApi(9)
public class UnityAdsMainView extends RelativeLayout implements IUnityAdsVideoPlayerListener, IUnityAdsWebViewListener {
   private static final int FILL_PARENT = -1;
   private UnityAdsMainView.UnityAdsMainViewState _currentState;
   private IUnityAdsMainViewListener _listener = null;
   private IUnityAdsWebBridgeListener _webBridgeListener = null;
   public UnityAdsVideoPlayView videoplayerview = null;
   public UnityAdsWebView webview = null;

   public UnityAdsMainView(Context var1) {
      super(var1);
      this._currentState = UnityAdsMainView.UnityAdsMainViewState.WebView;
      this.init();
   }

   public UnityAdsMainView(Context var1, AttributeSet var2) {
      super(var1, var2);
      this._currentState = UnityAdsMainView.UnityAdsMainViewState.WebView;
      this.init();
   }

   public UnityAdsMainView(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
      this._currentState = UnityAdsMainView.UnityAdsMainViewState.WebView;
      this.init();
   }

   public UnityAdsMainView(Context var1, IUnityAdsMainViewListener var2, IUnityAdsWebBridgeListener var3) {
      super(var1);
      this._currentState = UnityAdsMainView.UnityAdsMainViewState.WebView;
      this._listener = var2;
      this._webBridgeListener = var3;
      this.init();
   }

   private void createVideoPlayerView() {
      this.videoplayerview = new UnityAdsVideoPlayView(UnityAdsProperties.getCurrentActivity().getBaseContext(), this);
      this.videoplayerview.setLayoutParams(new LayoutParams(-1, -1));
      this.videoplayerview.setId(1002);
      this.addView(this.videoplayerview);
   }

   private void createWebView() {
      this.webview = new UnityAdsWebView(UnityAdsProperties.getCurrentActivity(), this, new UnityAdsWebBridge(this._webBridgeListener));
      this.webview.setId(1003);
      this.addView(this.webview, new LayoutParams(-1, -1));
   }

   private void destroyVideoPlayerView() {
      UnityAdsDeviceLog.entered();
      if (this.videoplayerview != null) {
         this.videoplayerview.clearVideoPlayer();
      }

      this.removeFromMainView(this.videoplayerview);
      this.videoplayerview = null;
   }

   private void focusToView(View var1) {
      if (var1 != null) {
         var1.setFocusable(true);
         var1.setFocusableInTouchMode(true);
         var1.requestFocus();
      }

   }

   private void init() {
      UnityAdsDeviceLog.entered();
      this.setId(1001);
      this.createWebView();
   }

   private void removeFromMainView(View var1) {
      if (var1 != null) {
         var1.setFocusable(false);
         var1.setFocusableInTouchMode(false);
         ViewGroup var2 = (ViewGroup)var1.getParent();
         if (var2 != null) {
            var2.removeView(var1);
         }
      }

   }

   private void sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction var1) {
      if (this._listener != null) {
         this._listener.onMainViewAction(var1);
      }

   }

   public void afterVideoPlaybackOperations() {
      if (this.videoplayerview != null) {
         this.videoplayerview.setKeepScreenOn(false);
      }

      this.destroyVideoPlayerView();
      this.setViewState(UnityAdsMainView.UnityAdsMainViewState.WebView);
      Activity var1 = UnityAdsProperties.getCurrentActivity();
      if (var1 != null) {
         var1.setRequestedOrientation(-1);
      }

   }

   public void closeAds(JSONObject var1) {
      if (this.getParent() != null) {
         ViewGroup var2 = (ViewGroup)this.getParent();
         if (var2 != null) {
            var2.removeView(this);
         }
      }

      this.destroyVideoPlayerView();
      UnityAdsProperties.SELECTED_CAMPAIGN = null;
      this.webview.destroy();
      this.webview = null;
   }

   public void fixActivityAttachment() {
      if (this.getParent() != null && (ViewGroup)this.getParent() != null) {
         ((ViewGroup)this.getParent()).removeView(this);
      }

      UnityAdsProperties.getCurrentActivity().addContentView(this, new LayoutParams(-1, -1));
   }

   public UnityAdsMainView.UnityAdsMainViewState getViewState() {
      return this._currentState;
   }

   protected void onAttachedToWindow() {
      super.onAttachedToWindow();
      this.focusToView(this);
   }

   public void onBackButtonClicked(View var1) {
      UnityAdsDeviceLog.debug("Current state: " + this._currentState.toString());
      if (this.videoplayerview != null) {
         UnityAdsDeviceLog.debug("Seconds: " + this.videoplayerview.getSecondsUntilBackButtonAllowed());
      }

      if ((UnityAdsProperties.SELECTED_CAMPAIGN == null || !UnityAdsProperties.SELECTED_CAMPAIGN.isViewed()) && this._currentState == UnityAdsMainView.UnityAdsMainViewState.VideoPlayer && (this._currentState != UnityAdsMainView.UnityAdsMainViewState.VideoPlayer || this.videoplayerview == null || this.videoplayerview.getSecondsUntilBackButtonAllowed() != 0) && (this._currentState != UnityAdsMainView.UnityAdsMainViewState.VideoPlayer || UnityAdsWebData.getZoneManager().getCurrentZone().disableBackButtonForSeconds() != 0L)) {
         UnityAdsDeviceLog.debug("Prevented back-button");
      } else {
         this.sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction.BackButtonPressed);
      }
   }

   public void onCompletion(MediaPlayer var1) {
      UnityAdsDeviceLog.entered();
      this.afterVideoPlaybackOperations();
      this.onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition.End);
      JSONObject var2 = new JSONObject();

      try {
         var2.put("campaignId", UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId());
      } catch (Exception var4) {
         UnityAdsDeviceLog.error("Could not create JSON");
      }

      this.webview.sendNativeEventToWebApp("videoCompleted", var2);
      this.sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction.VideoEnd);
   }

   public void onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition var1) {
      if (UnityAdsProperties.SELECTED_CAMPAIGN != null && !UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignStatus().equals(UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED)) {
         UnityAds.webdata.sendCampaignViewProgress(UnityAdsProperties.SELECTED_CAMPAIGN, var1);
      }

   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      switch(var1) {
      case 4:
         this.onBackButtonClicked(this);
         return true;
      default:
         return false;
      }
   }

   public void onVideoHidden() {
      HashMap var1 = new HashMap();
      if (this.videoplayerview != null) {
         var1.put("bufferingDuration", this.videoplayerview.getBufferingDuration());
      }

      var1.put("eventValue", "hidden");
      UnityAdsInstrumentation.gaInstrumentationVideoAbort(UnityAdsProperties.SELECTED_CAMPAIGN, var1);
      if (this.videoplayerview != null) {
         this.videoplayerview.setKeepScreenOn(false);
         this.videoplayerview.hideVideo();
         this.videoplayerview = null;
      }

      this.setViewState(UnityAdsMainView.UnityAdsMainViewState.WebView);
      Activity var3 = UnityAdsProperties.getCurrentActivity();
      if (var3 != null) {
         var3.setRequestedOrientation(-1);
      }

      JSONObject var4 = new JSONObject();

      try {
         var4.put("campaignId", UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId());
      } catch (Exception var6) {
         UnityAdsDeviceLog.error("Could not create JSON");
      }

      this.webview.sendNativeEventToWebApp("videoCompleted", var4);
      this.sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction.VideoSkipped);
   }

   public void onVideoPlaybackError() {
      this.afterVideoPlaybackOperations();
      UnityAdsDeviceLog.entered();
      UnityAds.webdata.sendAnalyticsRequest("videoError", UnityAdsProperties.SELECTED_CAMPAIGN);
      JSONObject var1 = new JSONObject();
      JSONObject var2 = new JSONObject();
      JSONObject var3 = new JSONObject();

      try {
         var1.put("textKey", "videoPlaybackError");
         var2.put("textKey", "buffering");
         var3.put("campaignId", UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId());
      } catch (Exception var5) {
         UnityAdsDeviceLog.error("Could not create JSON");
      }

      if (this.webview != null) {
         this.webview.setWebViewCurrentView("completed", var3);
         this.webview.sendNativeEventToWebApp("showError", var1);
         this.webview.sendNativeEventToWebApp("videoCompleted", var3);
         this.webview.sendNativeEventToWebApp("hideSpinner", var2);
      }

      if (UnityAdsProperties.SELECTED_CAMPAIGN != null) {
         UnityAdsProperties.SELECTED_CAMPAIGN.setCampaignStatus(UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED);
         UnityAdsProperties.SELECTED_CAMPAIGN = null;
      }

   }

   public void onVideoPlaybackStarted() {
      UnityAdsDeviceLog.entered();
      JSONObject var1 = new JSONObject();
      JSONObject var2 = new JSONObject();

      try {
         var1.put("campaignId", UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId());
         var2.put("textKey", "buffering");
      } catch (Exception var6) {
         UnityAdsDeviceLog.error("Could not create JSON");
      }

      this.sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction.VideoStart);
      this.bringChildToFront(this.videoplayerview);
      byte var4 = 6;
      if (VERSION.SDK_INT < 9) {
         var4 = 0;
      }

      if (UnityAdsWebData.getZoneManager().getCurrentZone().useDeviceOrientationForVideo()) {
         UnityAdsProperties.getCurrentActivity().setRequestedOrientation(0);
         var4 = -1;
      }

      Activity var5 = UnityAdsProperties.getCurrentActivity();
      if (var5 != null) {
         var5.setRequestedOrientation(var4);
      }

      this.focusToView(this.videoplayerview);
      if (this.webview != null) {
         this.webview.sendNativeEventToWebApp("hideSpinner", var2);
         this.webview.setWebViewCurrentView("completed", var1);
      }

   }

   public void onVideoSkip() {
      HashMap var1 = new HashMap();
      var1.put("bufferingDuration", this.videoplayerview.getBufferingDuration());
      var1.put("eventValue", "skip");
      UnityAdsInstrumentation.gaInstrumentationVideoAbort(UnityAdsProperties.SELECTED_CAMPAIGN, var1);
      this.afterVideoPlaybackOperations();
      JSONObject var4 = new JSONObject();

      try {
         var4.put("campaignId", UnityAdsProperties.SELECTED_CAMPAIGN.getCampaignId());
      } catch (Exception var6) {
         UnityAdsDeviceLog.error("Could not create JSON");
      }

      this.webview.sendNativeEventToWebApp("videoCompleted", var4);
      this.sendActionToListener(UnityAdsMainView.UnityAdsMainViewAction.VideoSkipped);
   }

   public void onWebAppLoaded() {
      boolean var10001;
      ArrayList var2;
      JSONObject var3;
      JSONArray var4;
      JSONArray var5;
      try {
         var2 = UnityAds.webdata.getViewableVideoPlanCampaigns();
         var3 = UnityAds.webdata.getData();
         var4 = var3.getJSONObject("data").getJSONArray("campaigns");
         var5 = new JSONArray();
      } catch (Exception var14) {
         var10001 = false;
         return;
      }

      int var6 = 0;

      while(true) {
         JSONObject var8;
         String var9;
         Iterator var10;
         try {
            if (var6 >= var4.length()) {
               break;
            }

            var8 = var4.getJSONObject(var6);
            var9 = var8.getString("id");
            var10 = var2.iterator();
         } catch (Exception var12) {
            var10001 = false;
            return;
         }

         while(true) {
            try {
               if (!var10.hasNext()) {
                  break;
               }

               if (((UnityAdsCampaign)var10.next()).getCampaignId() == var9) {
                  var5.put(var8);
               }
            } catch (Exception var13) {
               var10001 = false;
               return;
            }
         }

         ++var6;
      }

      try {
         var3.getJSONObject("data").put("campaigns", var5);
         this.webview.initWebApp(var3);
      } catch (Exception var11) {
         var10001 = false;
      }
   }

   public void openAds(String var1, JSONObject var2) {
      if (UnityAdsProperties.getCurrentActivity() != null && UnityAdsProperties.getCurrentActivity() instanceof UnityAdsFullscreenActivity) {
         this.webview.setWebViewCurrentView(var1, var2);
         if (this.getParent() != null && (ViewGroup)this.getParent() != null) {
            ((ViewGroup)this.getParent()).removeView(this);
         }

         if (this.getParent() == null) {
            UnityAdsProperties.getCurrentActivity().addContentView(this, new LayoutParams(-1, -1));
         }

         this.setViewState(UnityAdsMainView.UnityAdsMainViewState.WebView);
      } else {
         UnityAdsDeviceLog.error("Cannot open, wrong activity");
      }
   }

   public void setViewState(UnityAdsMainView.UnityAdsMainViewState var1) {
      if (!this._currentState.equals(var1)) {
         this._currentState = var1;
         switch(var1) {
         case WebView:
            this.removeFromMainView(this.webview);
            this.addView(this.webview, new LayoutParams(-1, -1));
            this.focusToView(this.webview);
            return;
         case VideoPlayer:
            if (this.videoplayerview == null) {
               this.createVideoPlayerView();
               this.bringChildToFront(this.webview);
               this.focusToView(this.webview);
               return;
            }
         }
      }

   }

   public static enum UnityAdsMainViewAction {
      BackButtonPressed,
      RequestRetryVideoPlay,
      VideoEnd,
      VideoSkipped,
      VideoStart;

      static {
         UnityAdsMainView.UnityAdsMainViewAction[] var0 = new UnityAdsMainView.UnityAdsMainViewAction[]{VideoStart, VideoEnd, VideoSkipped, BackButtonPressed, RequestRetryVideoPlay};
      }
   }

   public static enum UnityAdsMainViewState {
      VideoPlayer,
      WebView;

      static {
         UnityAdsMainView.UnityAdsMainViewState[] var0 = new UnityAdsMainView.UnityAdsMainViewState[]{WebView, VideoPlayer};
      }
   }
}
