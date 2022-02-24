package com.applifier.impact.android;

public interface IApplifierImpactListener {
   void onCampaignsAvailable();

   void onCampaignsFetchFailed();

   void onImpactClose();

   void onImpactOpen();

   void onVideoCompleted(String var1, boolean var2);

   void onVideoStarted();
}
