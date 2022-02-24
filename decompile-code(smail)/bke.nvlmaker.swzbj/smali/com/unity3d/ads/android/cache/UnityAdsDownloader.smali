.class public Lcom/unity3d/ads/android/cache/UnityAdsDownloader;
.super Ljava/lang/Object;
.source "UnityAdsDownloader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/cache/UnityAdsDownloader$1;,
        Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;,
        Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
    }
.end annotation


# static fields
.field private static _cacheDownloads:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;",
            ">;"
        }
    .end annotation
.end field

.field private static _downloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private static _downloadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _isDownloading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    .line 26
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_isDownloading:Z

    .line 29
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->getOutputStreamFor(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->cacheNextFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->removeDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->removeFromCacheDownloads(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->sendToListeners(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;Ljava/lang/String;)V

    return-void
.end method

.method public static addDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 1
    .param p0, "downloadCampaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 32
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->isInDownloads(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    sget-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_isDownloading:Z

    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_isDownloading:Z

    .line 40
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->cacheNextFile()V

    .line 42
    :cond_2
    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;

    .prologue
    .line 45
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 46
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    return-void
.end method

.method private static addToCacheDownloads(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V
    .locals 1
    .param p0, "cd"    # Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;

    .prologue
    .line 169
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    .line 172
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method private static cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 4
    .param p0, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting download for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    new-instance v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 135
    .local v0, "cd":Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addToCacheDownloads(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V

    .line 136
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    .end local v0    # "cd":Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->removeDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto :goto_0
.end method

.method private static cacheNextFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 147
    sput-boolean v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_isDownloading:Z

    .line 148
    const-string v0, "All downloads completed."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 69
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    .line 72
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_isDownloading:Z

    .line 74
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    .line 78
    :cond_1
    return-void
.end method

.method private static getOutputStreamFor(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->createCacheDir()Ljava/io/File;

    move-result-object v4

    .line 154
    .local v4, "tdir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v3, "outf":Ljava/io/File;
    const/4 v1, 0x0

    .line 158
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 165
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problems creating FOS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isInDownloads(Ljava/lang/String;)Z
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 101
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 102
    .local v0, "download":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const/4 v2, 0x1

    .line 109
    .end local v0    # "download":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    .line 104
    .restart local v0    # "download":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 105
    :cond_2
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "download":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static removeDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 3
    .param p0, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 84
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v1, -0x1

    .line 88
    .local v1, "removeIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 89
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    move v1, v0

    .line 95
    :cond_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 96
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static removeFromCacheDownloads(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V
    .locals 1
    .param p0, "cd"    # Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;

    .prologue
    .line 176
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;

    .prologue
    .line 51
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static sendToListeners(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;Ljava/lang/String;)V
    .locals 5
    .param p0, "type"    # Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v3, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 128
    :cond_0
    return-void

    .line 116
    :cond_1
    sget-object v3, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_downloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 118
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;

    .line 119
    .local v1, "listener":Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;
    sget-object v3, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$1;->$SwitchMap$com$unity3d$ads$android$cache$UnityAdsDownloader$UnityAdsDownloadEventType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-interface {v1, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;->onFileDownloadCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-interface {v1, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;->onFileDownloadCancelled(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static stopAllDownloads()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 59
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->_cacheDownloads:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;

    .line 61
    .local v0, "cd":Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->cancel(Z)Z

    goto :goto_0

    .line 64
    .end local v0    # "cd":Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;
    :cond_0
    return-void
.end method
