package com.unity3d.ads.android.campaign;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.cache.IUnityAdsDownloadListener;
import com.unity3d.ads.android.cache.UnityAdsDownloader;
import com.unity3d.ads.android.webapp.UnityAdsInstrumentation;
import java.util.ArrayList;
import java.util.HashMap;

public class UnityAdsCampaignHandler implements IUnityAdsDownloadListener {
   private long _cacheSolvedMillis = 0L;
   private long _cacheStartMillis = 0L;
   private UnityAdsCampaign _campaign = null;
   private ArrayList _downloadList = null;
   private IUnityAdsCampaignHandlerListener _handlerListener = null;

   public UnityAdsCampaignHandler(UnityAdsCampaign var1) {
      this._campaign = var1;
   }

   private void addCampaignToDownloads() {
      if (this._campaign != null) {
         if (this._downloadList == null) {
            this._downloadList = new ArrayList();
         }

         this._downloadList.add(this._campaign.getVideoUrl());
         this._cacheStartMillis = System.currentTimeMillis();
         HashMap var2 = new HashMap();
         var2.put("eventValue", "start");
         UnityAdsInstrumentation.gaInstrumentationVideoCaching(this._campaign, var2);
         UnityAdsDownloader.addDownload(this._campaign);
      }
   }

   private void checkFileAndDownloadIfNeeded(String var1, boolean var2) {
      if ((this._campaign.shouldCacheVideo() || this._campaign.allowCacheVideo() && var2) && !UnityAdsUtils.isFileInCache(this._campaign.getVideoFilename()) && UnityAdsUtils.canUseExternalStorage()) {
         if (!this.hasDownloads()) {
            UnityAdsDownloader.addListener(this);
         }

         this.addCampaignToDownloads();
      } else if (this._campaign.shouldCacheVideo() && !this.isFileOk(var1) && UnityAdsUtils.canUseExternalStorage()) {
         UnityAdsDeviceLog.debug("The file was not okay, redownloading");
         UnityAdsUtils.removeFile(this._campaign.getVideoFilename());
         UnityAdsDownloader.addListener(this);
         this.addCampaignToDownloads();
         return;
      }

   }

   private boolean finishDownload(String var1) {
      this._cacheSolvedMillis = System.currentTimeMillis();
      this.removeDownload(var1);
      if (this._downloadList != null && this._downloadList.size() == 0 && this._handlerListener != null) {
         UnityAdsDownloader.removeListener(this);
         return true;
      } else {
         return false;
      }
   }

   private boolean isFileOk(String var1) {
      long var2 = UnityAdsUtils.getSizeForLocalFile(this._campaign.getVideoFilename());
      long var4 = this._campaign.getVideoFileExpectedSize();
      UnityAdsDeviceLog.debug("localSize=" + var2 + ", expectedSize=" + var4);
      if (var2 != -1L) {
         if (var4 == -1L) {
            return true;
         }

         if (var2 > 0L && var4 > 0L && var2 == var4) {
            return true;
         }
      }

      return false;
   }

   private void removeDownload(String var1) {
      if (this._downloadList != null) {
         int var2 = -1;

         for(int var3 = 0; var3 < this._downloadList.size(); ++var3) {
            if (((String)this._downloadList.get(var3)).equals(var1)) {
               var2 = var3;
               break;
            }
         }

         if (var2 > -1) {
            this._downloadList.remove(var2);
            return;
         }
      }

   }

   public void clearData() {
      if (this._handlerListener != null) {
         this._handlerListener = null;
      }

      if (this._downloadList != null) {
         this._downloadList.clear();
      }

      if (this._campaign != null) {
         this._campaign.clearData();
         this._campaign = null;
      }

   }

   public void downloadCampaign() {
      if (!UnityAdsUtils.isFileInCache(this._campaign.getVideoFilename()) && UnityAdsUtils.canUseExternalStorage()) {
         if (!this.hasDownloads()) {
            UnityAdsDownloader.addListener(this);
         }

         this.addCampaignToDownloads();
      } else if (!this.isFileOk(this._campaign.getVideoFilename()) && UnityAdsUtils.canUseExternalStorage()) {
         if (!this.hasDownloads()) {
            UnityAdsDownloader.addListener(this);
         }

         UnityAdsUtils.removeFile(this._campaign.getVideoFilename());
         UnityAdsDownloader.addListener(this);
         this.addCampaignToDownloads();
         return;
      }

   }

   public long getCachingDurationInMillis() {
      long var1 = 0L;
      if (this._cacheStartMillis > var1 && this._cacheSolvedMillis > var1) {
         var1 = this._cacheSolvedMillis - this._cacheStartMillis;
      }

      return var1;
   }

   public UnityAdsCampaign getCampaign() {
      return this._campaign;
   }

   public boolean hasDownloads() {
      return this._downloadList != null && this._downloadList.size() > 0;
   }

   public void initCampaign(boolean var1) {
      this.checkFileAndDownloadIfNeeded(this._campaign.getVideoUrl(), var1);
      if (this._handlerListener != null) {
         this._handlerListener.onCampaignHandled(this);
      }

   }

   public void onFileDownloadCancelled(String var1) {
      if (this.finishDownload(var1)) {
         UnityAdsDeviceLog.debug("Download cancelled: " + this._campaign.getCampaignId());
         HashMap var2 = new HashMap();
         var2.put("eventValue", "failed");
         UnityAdsInstrumentation.gaInstrumentationVideoCaching(this._campaign, var2);
      }

   }

   public void onFileDownloadCompleted(String var1) {
      if (this.finishDownload(var1)) {
         UnityAdsDeviceLog.debug("Reporting campaign download completion: " + this._campaign.getCampaignId());
         HashMap var2 = new HashMap();
         var2.put("eventValue", "completed");
         var2.put("cachingDuration", this.getCachingDurationInMillis());
         UnityAdsInstrumentation.gaInstrumentationVideoCaching(this._campaign, var2);
      }

   }

   public void setListener(IUnityAdsCampaignHandlerListener var1) {
      this._handlerListener = var1;
   }
}
