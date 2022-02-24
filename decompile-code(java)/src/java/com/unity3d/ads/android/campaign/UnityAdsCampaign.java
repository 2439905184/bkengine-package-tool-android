package com.unity3d.ads.android.campaign;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.io.File;
import org.json.JSONObject;

public class UnityAdsCampaign {
   private JSONObject _campaignJson = null;
   private UnityAdsCampaign.UnityAdsCampaignStatus _campaignStatus;
   private String[] _requiredKeys = new String[]{"endScreen", "clickUrl", "picture", "trailerDownloadable", "trailerStreaming", "gameId", "gameName", "id", "tagLine"};

   public UnityAdsCampaign() {
      this._campaignStatus = UnityAdsCampaign.UnityAdsCampaignStatus.READY;
   }

   public UnityAdsCampaign(JSONObject var1) {
      this._campaignStatus = UnityAdsCampaign.UnityAdsCampaignStatus.READY;
      this._campaignJson = var1;
   }

   private boolean checkDataIntegrity() {
      if (this._campaignJson != null) {
         String[] var1 = this._requiredKeys;
         int var2 = var1.length;
         int var3 = 0;

         while(true) {
            if (var3 >= var2) {
               return true;
            }

            String var4 = var1[var3];
            if (!this._campaignJson.has(var4)) {
               break;
            }

            ++var3;
         }
      }

      return false;
   }

   public Boolean allowCacheVideo() {
      if (this.checkDataIntegrity()) {
         try {
            Boolean var2 = this._campaignJson.getBoolean("allowCache");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.warning("Key not found for campaign: " + this.getCampaignId());
         }
      }

      return false;
   }

   public Boolean allowStreamingVideo() {
      if (this.checkDataIntegrity()) {
         try {
            Boolean var2 = this._campaignJson.getBoolean("allowStreaming");
            return var2;
         } catch (Exception var3) {
         }
      }

      return true;
   }

   public void clearData() {
      this._campaignJson = null;
   }

   public String getCampaignId() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("id");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public UnityAdsCampaign.UnityAdsCampaignStatus getCampaignStatus() {
      return this._campaignStatus;
   }

   public String getClickUrl() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("clickUrl");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getEndScreenUrl() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("endScreen");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getGameId() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("gameId");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getGameName() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("gameName");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getPicture() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("picture");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getStoreId() {
      if (this._campaignJson.has("storeId")) {
         try {
            String var4 = this._campaignJson.getString("storeId");
            return var4;
         } catch (Exception var6) {
            UnityAdsDeviceLog.error("Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_STOREID_KEY but " + var6.getMessage() + " occured");
         }
      }

      if (this._campaignJson.has("iTunesId")) {
         try {
            String var2 = this._campaignJson.getString("iTunesId");
            return var2;
         } catch (Exception var5) {
            UnityAdsDeviceLog.error("Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_ITUNESID_KEY but " + var5.getMessage() + " occured");
         }
      }

      return null;
   }

   public String getTagLine() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("tagLine");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public long getVideoFileExpectedSize() {
      if (this.checkDataIntegrity()) {
         label27: {
            boolean var10001;
            String var2;
            try {
               var2 = this._campaignJson.getString("trailerSize");
            } catch (Exception var8) {
               var10001 = false;
               break label27;
            }

            try {
               long var4 = Long.parseLong(var2);
               return var4;
            } catch (Exception var7) {
               Exception var3 = var7;

               try {
                  UnityAdsDeviceLog.error("Could not parse size: " + var3.getMessage());
                  return -1L;
               } catch (Exception var6) {
                  var10001 = false;
               }
            }
         }

         UnityAdsDeviceLog.error("Not found, returning -1");
         return -1L;
      } else {
         return -1L;
      }
   }

   public String getVideoFilename() {
      if (this.checkDataIntegrity()) {
         try {
            File var1 = new File(this._campaignJson.getString("trailerDownloadable"));
            String var3 = this.getCampaignId() + "-" + var1.getName();
            return var3;
         } catch (Exception var4) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getVideoStreamUrl() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("trailerStreaming");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public String getVideoUrl() {
      if (this.checkDataIntegrity()) {
         try {
            String var2 = this._campaignJson.getString("trailerDownloadable");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("This should not happen!");
         }
      }

      return null;
   }

   public boolean hasValidData() {
      return this.checkDataIntegrity();
   }

   public Boolean isViewed() {
      return this._campaignStatus == UnityAdsCampaign.UnityAdsCampaignStatus.VIEWED ? true : false;
   }

   public void setCampaignStatus(UnityAdsCampaign.UnityAdsCampaignStatus var1) {
      this._campaignStatus = var1;
   }

   public Boolean shouldBypassAppSheet() {
      if (this.checkDataIntegrity()) {
         try {
            Boolean var2 = this._campaignJson.getBoolean("bypassAppSheet");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.warning("Key not found for campaign: " + this.getCampaignId());
         }
      }

      return false;
   }

   public Boolean shouldCacheVideo() {
      if (this.checkDataIntegrity()) {
         try {
            Boolean var2 = this._campaignJson.getBoolean("cacheVideo");
            return var2;
         } catch (Exception var3) {
            UnityAdsDeviceLog.warning("Key not found for campaign: " + this.getCampaignId());
         }
      }

      return false;
   }

   public JSONObject toJson() {
      JSONObject var1 = this._campaignJson;

      try {
         var1.put("status", this.getCampaignStatus().toString());
         return var1;
      } catch (Exception var3) {
         UnityAdsDeviceLog.error("Error creating campaign JSON");
         return null;
      }
   }

   public String toString() {
      return "<ID: " + this.getCampaignId() + ", STATUS: " + this.getCampaignStatus().toString() + ", URL: " + this.getVideoUrl() + ">";
   }

   public static enum UnityAdsCampaignStatus {
      PANIC,
      READY,
      VIEWED;

      static {
         UnityAdsCampaign.UnityAdsCampaignStatus[] var0 = new UnityAdsCampaign.UnityAdsCampaignStatus[]{READY, VIEWED, PANIC};
      }

      public static UnityAdsCampaign.UnityAdsCampaignStatus getValueOf(String var0) {
         if (READY.toString().equals(var0.toLowerCase())) {
            return READY;
         } else {
            return VIEWED.toString().equals(var0.toLowerCase()) ? VIEWED : PANIC;
         }
      }

      public String toString() {
         return this.name().toString().toLowerCase();
      }
   }
}
