package com.unity3d.ads.android.zone;

import com.unity3d.ads.android.item.UnityAdsRewardItem;
import com.unity3d.ads.android.item.UnityAdsRewardItemManager;
import org.json.JSONException;
import org.json.JSONObject;

public class UnityAdsIncentivizedZone extends UnityAdsZone {
   private UnityAdsRewardItemManager _rewardItems = null;

   public UnityAdsIncentivizedZone(JSONObject var1) throws JSONException {
      super(var1);
      UnityAdsRewardItem var2 = new UnityAdsRewardItem(var1.getJSONObject("defaultRewardItem"));
      this._rewardItems = new UnityAdsRewardItemManager(var1.getJSONArray("rewardItems"), var2.getKey());
   }

   public boolean isIncentivized() {
      return true;
   }

   public UnityAdsRewardItemManager itemManager() {
      return this._rewardItems;
   }
}
