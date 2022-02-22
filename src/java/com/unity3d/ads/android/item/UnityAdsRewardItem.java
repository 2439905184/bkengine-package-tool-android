package com.unity3d.ads.android.item;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class UnityAdsRewardItem {
   private String _key = null;
   private String _name = null;
   private String _pictureURL = null;
   private String[] _requiredKeys = new String[]{"key", "name", "picture"};
   private JSONObject _rewardItemJSON = null;

   public UnityAdsRewardItem(JSONObject var1) {
      this._rewardItemJSON = var1;
      this.parseValues();
   }

   private boolean checkDataIntegrity() {
      if (this._rewardItemJSON != null) {
         String[] var1 = this._requiredKeys;
         int var2 = var1.length;
         int var3 = 0;

         while(true) {
            if (var3 >= var2) {
               return true;
            }

            String var4 = var1[var3];
            if (!this._rewardItemJSON.has(var4)) {
               break;
            }

            ++var3;
         }
      }

      return false;
   }

   private void parseValues() {
      try {
         this._key = this._rewardItemJSON.getString("key");
         this._name = this._rewardItemJSON.getString("name");
         this._pictureURL = this._rewardItemJSON.getString("picture");
      } catch (Exception var2) {
         UnityAdsDeviceLog.error("Problem parsing campaign values");
      }
   }

   public void clearData() {
      this._key = null;
      this._name = null;
      this._pictureURL = null;
      this._rewardItemJSON = null;
      this._requiredKeys = null;
   }

   public Map getDetails() {
      HashMap var1 = new HashMap();
      var1.put("name", this.getName());
      var1.put("picture", this.getPictureUrl());
      return var1;
   }

   public String getKey() {
      return this._key;
   }

   public String getName() {
      return this._name;
   }

   public String getPictureUrl() {
      return this._pictureURL;
   }

   public boolean hasValidData() {
      return this.checkDataIntegrity();
   }
}
