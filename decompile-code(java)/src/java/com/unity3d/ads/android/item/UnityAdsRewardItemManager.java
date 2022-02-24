package com.unity3d.ads.android.item;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

public class UnityAdsRewardItemManager {
   private UnityAdsRewardItem _currentItem = null;
   private UnityAdsRewardItem _defaultItem = null;
   private Map _rewardItems = null;

   public UnityAdsRewardItemManager(JSONArray var1, String var2) {
      this._rewardItems = new HashMap();

      for(int var3 = 0; var3 < var1.length(); ++var3) {
         try {
            UnityAdsRewardItem var4 = new UnityAdsRewardItem(var1.getJSONObject(var3));
            if (var4.hasValidData()) {
               if (var4.getKey().equals(var2)) {
                  this._currentItem = var4;
                  this._defaultItem = var4;
               }

               this._rewardItems.put(var4.getKey(), var4);
            }
         } catch (JSONException var6) {
            UnityAdsDeviceLog.error("Failed to parse reward item");
         }
      }

   }

   public ArrayList allItems() {
      ArrayList var1 = new ArrayList();
      Iterator var2 = this._rewardItems.values().iterator();

      while(var2.hasNext()) {
         var1.add((UnityAdsRewardItem)var2.next());
      }

      return var1;
   }

   public UnityAdsRewardItem getCurrentItem() {
      return this._currentItem;
   }

   public UnityAdsRewardItem getDefaultItem() {
      return this._defaultItem;
   }

   public UnityAdsRewardItem getItem(String var1) {
      return this._rewardItems.containsKey(var1) ? (UnityAdsRewardItem)this._rewardItems.get(var1) : null;
   }

   public int itemCount() {
      return this._rewardItems.size();
   }

   public boolean setCurrentItem(String var1) {
      if (this._rewardItems.containsKey(var1)) {
         this._currentItem = (UnityAdsRewardItem)this._rewardItems.get(var1);
         return true;
      } else {
         return false;
      }
   }
}
