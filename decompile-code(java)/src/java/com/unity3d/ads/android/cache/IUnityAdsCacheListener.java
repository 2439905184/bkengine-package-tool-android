package com.unity3d.ads.android.cache;

import com.unity3d.ads.android.campaign.UnityAdsCampaignHandler;

public interface IUnityAdsCacheListener {
   void onAllCampaignsReady();

   void onCampaignReady(UnityAdsCampaignHandler var1);

   void onCampaignUpdateStarted();
}
