package com.unity3d.ads.android.video;

import android.media.MediaPlayer.OnCompletionListener;
import com.unity3d.ads.android.view.IUnityAdsViewListener;
import com.unity3d.ads.android.webapp.UnityAdsWebData;

public interface IUnityAdsVideoPlayerListener extends OnCompletionListener, IUnityAdsViewListener {
   void onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition var1);

   void onVideoHidden();

   void onVideoPlaybackError();

   void onVideoPlaybackStarted();

   void onVideoSkip();
}
