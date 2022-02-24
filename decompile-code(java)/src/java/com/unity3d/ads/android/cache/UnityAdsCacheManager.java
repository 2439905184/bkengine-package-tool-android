package com.unity3d.ads.android.cache;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.campaign.IUnityAdsCampaignHandlerListener;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.campaign.UnityAdsCampaignHandler;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class UnityAdsCacheManager implements IUnityAdsCampaignHandlerListener {
   private int _amountPrepared = 0;
   private IUnityAdsCacheListener _downloadListener = null;
   private ArrayList _downloadingHandlers = null;
   private ArrayList _handlers = null;
   private int _totalCampaigns = 0;

   public UnityAdsCacheManager() {
      if (UnityAdsUtils.canUseExternalStorage()) {
         UnityAdsDeviceLog.debug("External storagedir: " + UnityAdsUtils.getCacheDirectory() + " created with result: " + UnityAdsUtils.createCacheDir());
      } else {
         UnityAdsDeviceLog.info("Could not create cache, no external memory present");
      }
   }

   private void addToDownloadingHandlers(UnityAdsCampaignHandler var1) {
      if (this._downloadingHandlers == null) {
         this._downloadingHandlers = new ArrayList();
      }

      this._downloadingHandlers.add(var1);
   }

   private void addToUpdatingHandlers(UnityAdsCampaignHandler var1) {
      if (this._handlers == null) {
         this._handlers = new ArrayList();
      }

      this._handlers.add(var1);
   }

   private void removeFromDownloadingHandlers(UnityAdsCampaignHandler var1) {
      if (this._downloadingHandlers != null) {
         this._downloadingHandlers.remove(var1);
      }

   }

   private void removeFromUpdatingHandlers(UnityAdsCampaignHandler var1) {
      if (this._handlers != null) {
         this._handlers.remove(var1);
      }

   }

   public void cacheNextVideo(UnityAdsCampaign var1) {
      (new UnityAdsCampaignHandler(var1)).downloadCampaign();
   }

   public void clearData() {
      if (this._downloadListener != null) {
         this._downloadListener = null;
      }

      if (this._downloadingHandlers != null) {
         Iterator var3 = this._downloadingHandlers.iterator();

         while(var3.hasNext()) {
            UnityAdsCampaignHandler var4 = (UnityAdsCampaignHandler)var3.next();
            var4.setListener((IUnityAdsCampaignHandlerListener)null);
            var4.clearData();
         }

         this._downloadingHandlers.clear();
         this._downloadingHandlers = null;
      }

      if (this._handlers != null) {
         Iterator var1 = this._handlers.iterator();

         while(var1.hasNext()) {
            UnityAdsCampaignHandler var2 = (UnityAdsCampaignHandler)var1.next();
            var2.setListener((IUnityAdsCampaignHandlerListener)null);
            var2.clearData();
         }

         this._handlers.clear();
         this._handlers = null;
      }

   }

   public boolean hasDownloadingHandlers() {
      return this._downloadingHandlers != null && this._downloadingHandlers.size() > 0;
   }

   public void initCache(ArrayList var1) {
      this.updateCache(var1);
   }

   public boolean isCampaignCached(UnityAdsCampaign var1, boolean var2) {
      if (UnityAdsUtils.isFileInCache(var1.getVideoFilename())) {
         if (!var2) {
            return true;
         }

         long var3 = UnityAdsUtils.getSizeForLocalFile(var1.getVideoFilename());
         long var5 = var1.getVideoFileExpectedSize();
         if (var3 > 0L && var5 > 0L && var3 == var5) {
            return true;
         }
      }

      return false;
   }

   public void onCampaignHandled(UnityAdsCampaignHandler var1) {
      ++this._amountPrepared;
      this.removeFromDownloadingHandlers(var1);
      this.removeFromUpdatingHandlers(var1);
      this._downloadListener.onCampaignReady(var1);
      if (this._amountPrepared == this._totalCampaigns) {
         this._downloadListener.onAllCampaignsReady();
      }

   }

   public void setDownloadListener(IUnityAdsCacheListener var1) {
      this._downloadListener = var1;
   }

   public void updateCache(ArrayList var1) {
      if (this._downloadListener != null) {
         this._downloadListener.onCampaignUpdateStarted();
      }

      this._amountPrepared = 0;
      if (var1 != null) {
         UnityAdsDeviceLog.debug(var1.toString());
      }

      if (UnityAdsUtils.getCacheDirectory() != null) {
         File[] var6 = (new File(UnityAdsUtils.getCacheDirectory())).listFiles();
         if (var6 != null) {
            int var7 = var6.length;

            for(int var8 = 0; var8 < var7; ++var8) {
               File var9 = var6[var8];
               UnityAdsDeviceLog.debug("Checking file: " + var9.getName());
               if (!var9.getName().equals("pendingrequests.dat") && !var9.getName().equals("manifest.json") && !UnityAdsUtils.isFileRequiredByCampaigns(var9.getName(), var1)) {
                  UnityAdsUtils.removeFile(var9.getName());
               }
            }
         }
      }

      if (var1 != null) {
         this._totalCampaigns = var1.size();
         boolean var2 = true;
         UnityAdsDeviceLog.debug("Updating cache: Going through active campaigns: " + this._totalCampaigns);
         Iterator var3 = var1.iterator();

         while(var3.hasNext()) {
            UnityAdsCampaignHandler var4 = new UnityAdsCampaignHandler((UnityAdsCampaign)var3.next());
            this.addToUpdatingHandlers(var4);
            var4.setListener(this);
            var4.initCampaign(var2);
            boolean var5 = var4.hasDownloads();
            var2 = false;
            if (var5) {
               this.addToDownloadingHandlers(var4);
               var2 = false;
            }
         }
      }

   }
}
