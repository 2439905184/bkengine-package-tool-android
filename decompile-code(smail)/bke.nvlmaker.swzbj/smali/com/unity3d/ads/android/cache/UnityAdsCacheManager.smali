.class public Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;
.super Ljava/lang/Object;
.source "UnityAdsCacheManager.java"

# interfaces
.implements Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;


# instance fields
.field private _amountPrepared:I

.field private _downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

.field private _downloadingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _totalCampaigns:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 18
    iput v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_amountPrepared:I

    .line 19
    iput v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_totalCampaigns:I

    .line 23
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External storagedir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " created with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->createCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "Could not create cache, no external memory present"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addToDownloadingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private addToUpdatingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private removeFromDownloadingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    return-void
.end method

.method private removeFromUpdatingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 1
    .param p1, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 134
    new-instance v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 135
    .local v0, "campaignHandler":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->downloadCampaign()V

    .line 136
    return-void
.end method

.method public clearData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    if-eqz v2, :cond_0

    .line 91
    iput-object v3, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .line 95
    .local v0, "ch":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    invoke-virtual {v0, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 96
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->clearData()V

    goto :goto_0

    .line 100
    .end local v0    # "ch":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    :cond_1
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    iput-object v3, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    .line 104
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .line 106
    .restart local v0    # "ch":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    invoke-virtual {v0, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 107
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->clearData()V

    goto :goto_1

    .line 111
    .end local v0    # "ch":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    :cond_3
    iget-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 112
    iput-object v3, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_handlers:Ljava/util/ArrayList;

    .line 114
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public hasDownloadingHandlers()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCache(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 41
    return-void
.end method

.method public isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z
    .locals 8
    .param p1, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .param p2, "requireCompleteVideo"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 117
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsUtils;->getSizeForLocalFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 123
    .local v2, "localSize":J
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v0

    .line 125
    .local v0, "expectedSize":J
    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    cmp-long v5, v2, v0

    if-eqz v5, :cond_0

    .line 130
    .end local v0    # "expectedSize":J
    .end local v2    # "localSize":J
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCampaignHandled(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 2
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 142
    iget v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_amountPrepared:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_amountPrepared:I

    .line 143
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->removeFromDownloadingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->removeFromUpdatingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 145
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onCampaignReady(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 147
    iget v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_amountPrepared:I

    iget v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_totalCampaigns:I

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onAllCampaignsReady()V

    .line 149
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 33
    return-void
.end method

.method public updateCache(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    iget-object v9, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    if-eqz v9, :cond_0

    .line 45
    iget-object v9, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_downloadListener:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v9}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onCampaignUpdateStarted()V

    .line 47
    :cond_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_amountPrepared:I

    .line 49
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 54
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 57
    .local v5, "fileList":[Ljava/io/File;
    if-eqz v5, :cond_3

    .line 58
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v3, v0, v7

    .line 59
    .local v3, "currentFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pendingrequests.dat"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "manifest.json"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileRequiredByCampaigns(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "currentFile":Ljava/io/File;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "fileList":[Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_3
    if-eqz p1, :cond_5

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_totalCampaigns:I

    .line 72
    const/4 v6, 0x1

    .line 74
    .local v6, "firstInAdPlan":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating cache: Going through active campaigns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->_totalCampaigns:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 76
    .local v1, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    new-instance v2, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 77
    .local v2, "campaignHandler":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    invoke-direct {p0, v2}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->addToUpdatingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 78
    invoke-virtual {v2, p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 79
    invoke-virtual {v2, v6}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->initCampaign(Z)V

    .line 80
    const/4 v6, 0x0

    .line 82
    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->hasDownloads()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 83
    invoke-direct {p0, v2}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->addToDownloadingHandlers(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    goto :goto_1

    .line 87
    .end local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v2    # "campaignHandler":Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
    .end local v6    # "firstInAdPlan":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
