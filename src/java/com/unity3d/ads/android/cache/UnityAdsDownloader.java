package com.unity3d.ads.android.cache;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;

@TargetApi(9)
public class UnityAdsDownloader {
   private static Vector _cacheDownloads = null;
   private static ArrayList _downloadList = null;
   private static ArrayList _downloadListeners = null;
   private static boolean _isDownloading = false;

   public static void addDownload(UnityAdsCampaign var0) {
      if (_downloadList == null) {
         _downloadList = new ArrayList();
      }

      if (!isInDownloads(var0.getVideoUrl())) {
         _downloadList.add(var0);
      }

      if (!_isDownloading) {
         _isDownloading = true;
         cacheNextFile();
      }

   }

   public static void addListener(IUnityAdsDownloadListener var0) {
      if (_downloadListeners == null) {
         _downloadListeners = new ArrayList();
      }

      if (!_downloadListeners.contains(var0)) {
         _downloadListeners.add(var0);
      }

   }

   private static void addToCacheDownloads(UnityAdsDownloader.CacheDownload var0) {
      if (_cacheDownloads == null) {
         _cacheDownloads = new Vector();
      }

      _cacheDownloads.add(var0);
   }

   private static void cacheCampaign(UnityAdsCampaign var0) {
      UnityAdsDeviceLog.debug("Starting download for: " + var0.getVideoFilename());
      if (var0 != null && var0.getVideoUrl() != null && var0.getVideoUrl().length() > 0) {
         UnityAdsDownloader.CacheDownload var1 = new UnityAdsDownloader.CacheDownload(var0);
         addToCacheDownloads(var1);
         String[] var2 = new String[]{var0.getVideoUrl()};
         var1.execute(var2);
      } else {
         removeDownload(var0);
      }
   }

   private static void cacheNextFile() {
      if (_downloadList != null && _downloadList.size() > 0) {
         cacheCampaign((UnityAdsCampaign)_downloadList.get(0));
      } else if (_downloadList != null) {
         _isDownloading = false;
         UnityAdsDeviceLog.debug("All downloads completed.");
         return;
      }

   }

   public static void clearData() {
      if (_cacheDownloads != null) {
         _cacheDownloads.clear();
         _cacheDownloads = null;
      }

      _isDownloading = false;
      if (_downloadListeners != null) {
         _downloadListeners.clear();
         _downloadListeners = null;
      }

   }

   private static FileOutputStream getOutputStreamFor(String var0) {
      File var1 = new File(UnityAdsUtils.createCacheDir(), var0);

      try {
         FileOutputStream var2 = new FileOutputStream(var1);
         return var2;
      } catch (Exception var4) {
         UnityAdsDeviceLog.error("Problems creating FOS: " + var0);
         return null;
      }
   }

   private static boolean isInDownloads(String var0) {
      if (_downloadList != null) {
         Iterator var1 = _downloadList.iterator();

         while(true) {
            UnityAdsCampaign var2;
            do {
               if (!var1.hasNext()) {
                  return false;
               }

               var2 = (UnityAdsCampaign)var1.next();
               if (var2 != null && var2.getVideoUrl() != null && var2.getVideoUrl().equals(var0)) {
                  return true;
               }
            } while(var2 != null && var2.getVideoUrl() != null);

            _downloadList.remove(var2);
         }
      } else {
         return false;
      }
   }

   private static void removeDownload(UnityAdsCampaign var0) {
      if (_downloadList != null) {
         int var1 = -1;

         for(int var2 = 0; var2 < _downloadList.size(); ++var2) {
            if (((UnityAdsCampaign)_downloadList.get(var2)).equals(var0)) {
               var1 = var2;
               break;
            }
         }

         if (var1 > -1) {
            _downloadList.remove(var1);
            return;
         }
      }

   }

   private static void removeFromCacheDownloads(UnityAdsDownloader.CacheDownload var0) {
      if (_cacheDownloads != null) {
         _cacheDownloads.remove(var0);
      }

   }

   public static void removeListener(IUnityAdsDownloadListener var0) {
      if (_downloadListeners != null && _downloadListeners.contains(var0)) {
         _downloadListeners.remove(var0);
      }
   }

   private static void sendToListeners(UnityAdsDownloader.UnityAdsDownloadEventType var0, String var1) {
      if (_downloadListeners != null) {
         Iterator var2 = ((ArrayList)_downloadListeners.clone()).iterator();

         while(var2.hasNext()) {
            IUnityAdsDownloadListener var3 = (IUnityAdsDownloadListener)var2.next();
            switch(var0) {
            case DownloadCompleted:
               var3.onFileDownloadCompleted(var1);
               break;
            case DownloadCancelled:
               var3.onFileDownloadCancelled(var1);
            }
         }
      }

   }

   public static void stopAllDownloads() {
      UnityAdsDeviceLog.entered();
      if (_cacheDownloads != null) {
         Iterator var0 = _cacheDownloads.iterator();

         while(var0.hasNext()) {
            ((UnityAdsDownloader.CacheDownload)var0.next()).cancel(true);
         }
      }

   }

   private static class CacheDownload extends AsyncTask {
      private UnityAdsCampaign _campaign = null;
      private boolean _cancelled = false;
      private int _downloadLength = 0;
      private URL _downloadUrl = null;
      private InputStream _input = null;
      private OutputStream _output = null;
      private URLConnection _urlConnection = null;

      public CacheDownload(UnityAdsCampaign var1) {
         this._campaign = var1;
      }

      private void cancelDownload() {
         String var1 = "ERROR";
         if (this._downloadUrl != null) {
            var1 = this._downloadUrl.toString();
         }

         UnityAdsDeviceLog.debug("Download cancelled for: " + var1);
         this.closeAndFlushConnection();
         UnityAdsUtils.removeFile(this._campaign.getVideoFilename());
         UnityAdsDownloader.removeDownload(this._campaign);
         UnityAdsDownloader.removeFromCacheDownloads(this);
         UnityAdsDownloader.sendToListeners(UnityAdsDownloader.UnityAdsDownloadEventType.DownloadCancelled, var1);
      }

      private void closeAndFlushConnection() {
         try {
            this._output.flush();
            this._output.close();
            this._input.close();
         } catch (Exception var2) {
            UnityAdsDeviceLog.error("Problems closing connection: " + var2.getMessage());
         }
      }

      protected String doInBackground(String... var1) {
         long var2 = SystemClock.elapsedRealtime();

         try {
            this._downloadUrl = new URL(var1[0]);
         } catch (Exception var18) {
            UnityAdsDeviceLog.error("Problems with url: " + var18.getMessage());
            this.onCancelled();
            return null;
         }

         try {
            this._urlConnection = this._downloadUrl.openConnection();
            this._urlConnection.setConnectTimeout(10000);
            this._urlConnection.setReadTimeout(10000);
            this._urlConnection.connect();
         } catch (Exception var17) {
            UnityAdsDeviceLog.error("Problems opening connection: " + var17.getMessage());
         }

         if (this._urlConnection != null) {
            this._downloadLength = this._urlConnection.getContentLength();

            try {
               this._input = new BufferedInputStream(this._urlConnection.getInputStream());
            } catch (Exception var16) {
               UnityAdsDeviceLog.error("Problems opening stream: " + var16.getMessage());
            }

            this._output = UnityAdsDownloader.getOutputStreamFor(this._campaign.getVideoFilename());
            if (this._output == null) {
               this.onCancelled();
            }

            byte[] var7 = new byte[1024];
            long var8 = 0L;

            while(true) {
               boolean var15;
               label60: {
                  Exception var10000;
                  label69: {
                     int var11;
                     boolean var10001;
                     try {
                        var11 = this._input.read(var7);
                     } catch (Exception var20) {
                        var10000 = var20;
                        var10001 = false;
                        break label69;
                     }

                     if (var11 == -1) {
                        this.closeAndFlushConnection();
                        long var12 = SystemClock.elapsedRealtime() - var2;
                        UnityAdsDeviceLog.debug("File: " + this._campaign.getVideoFilename() + " of size: " + var8 + " downloaded in: " + var12 + "ms");
                        if (var12 > 0L && var8 > 0L) {
                           UnityAdsProperties.CACHING_SPEED = var8 / var12;
                        }
                        break;
                     }

                     var8 += (long)var11;

                     try {
                        Integer[] var14 = new Integer[]{(int)(100L * var8 / (long)this._downloadLength)};
                        this.publishProgress(var14);
                        this._output.write(var7, 0, var11);
                        var15 = this._cancelled;
                        break label60;
                     } catch (Exception var19) {
                        var10000 = var19;
                        var10001 = false;
                     }
                  }

                  Exception var10 = var10000;
                  UnityAdsDeviceLog.error("Problems downloading file: " + var10.getMessage());
                  this.cancelDownload();
                  UnityAdsDownloader.cacheNextFile();
                  return null;
               }

               if (var15) {
                  return null;
               }
            }
         }

         return null;
      }

      protected void onCancelled() {
         UnityAdsDeviceLog.entered();
         this._cancelled = true;
         this.cancelDownload();
      }

      protected void onPostExecute(String var1) {
         if (!this._cancelled) {
            UnityAdsDownloader.removeDownload(this._campaign);
            UnityAdsDownloader.removeFromCacheDownloads(this);
            UnityAdsDownloader.cacheNextFile();
            String var2 = "ERROR";
            if (this._downloadUrl != null) {
               var2 = this._downloadUrl.toString();
            }

            UnityAdsDownloader.sendToListeners(UnityAdsDownloader.UnityAdsDownloadEventType.DownloadCompleted, var2);
            super.onPostExecute(var1);
         }

      }

      protected void onPreExecute() {
         super.onPreExecute();
      }

      protected void onProgressUpdate(Integer... var1) {
         super.onProgressUpdate(var1);
         if (var1[0] == 100) {
         }

      }
   }

   private static enum UnityAdsDownloadEventType {
      DownloadCancelled,
      DownloadCompleted;

      static {
         UnityAdsDownloader.UnityAdsDownloadEventType[] var0 = new UnityAdsDownloader.UnityAdsDownloadEventType[]{DownloadCompleted, DownloadCancelled};
      }
   }
}
