.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    }
.end annotation


# static fields
.field private static _zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

.field private static installedAppsSent:Z

.field private static whitelistRequested:Z


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private _currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

.field private _failedUrlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;",
            ">;"
        }
    .end annotation
.end field

.field private _initInProgress:Z

.field private _isLoading:Z

.field private _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

.field private _totalLoadersCreated:I

.field private _totalLoadersHaveRun:I

.field private _totalUrlsSent:I

.field private _urlLoaderLock:Ljava/lang/Object;

.field private _urlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 68
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 69
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 56
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 57
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 58
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 59
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    .line 61
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 62
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    .line 63
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    .line 65
    iput-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 66
    iput-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
    .param p1, "x1"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$308(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$400(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$408(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$500(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
    .param p1, "x1"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
    .param p1, "x1"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method private addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private campaignDataFailed()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataFailed()V

    .line 680
    :cond_0
    return-void
.end method

.method private campaignDataReceived(Ljava/lang/String;)V
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 556
    .local v10, "validData":Ljava/lang/Boolean;
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 559
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 560
    const/4 v3, 0x0

    .line 562
    .local v3, "data":Lorg/json/JSONObject;
    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v13, "data"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-eqz v12, :cond_11

    .line 564
    :try_start_1
    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v13, "data"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 570
    :goto_0
    :try_start_2
    const-string v12, "webViewUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 571
    :cond_0
    const-string v12, "analyticsUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 572
    :cond_1
    const-string v12, "impactUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 573
    :cond_2
    const-string v12, "gamerId"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 574
    :cond_3
    const-string v12, "campaigns"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 575
    :cond_4
    const-string v12, "zones"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 578
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 579
    const/4 v9, 0x0

    .line 581
    .local v9, "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const-string v12, "campaigns"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 582
    .local v2, "campaigns":Lorg/json/JSONArray;
    if-eqz v2, :cond_6

    .line 583
    invoke-direct {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    .line 586
    :cond_6
    const-string v12, "appFiltering"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 587
    const-string v12, "appFiltering"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "appFiltering":Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v12, "simple"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "advanced"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 590
    :cond_7
    const-string v12, "advanced"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 591
    const-string v12, "installedAppsUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "appWhitelist"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 592
    const-string v12, "installedAppsUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 593
    const-string v12, "appWhitelist"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 595
    .local v11, "whitelistUrl":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->requestAppWhitelist(Ljava/lang/String;)V

    .line 599
    .end local v11    # "whitelistUrl":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_a

    .line 600
    invoke-direct {p0, v9}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 602
    .local v6, "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_9

    .line 603
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 673
    .end local v0    # "appFiltering":Ljava/lang/String;
    .end local v2    # "campaigns":Lorg/json/JSONArray;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v6    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .end local v9    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :goto_1
    return-void

    .line 566
    .restart local v3    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 567
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "Malformed data JSON"

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 652
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 653
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Malformed JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 656
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/StackTraceElement;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_12

    aget-object v5, v1, v7

    .line 657
    .local v5, "element":Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Malformed JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 656
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 607
    .end local v1    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .restart local v0    # "appFiltering":Ljava/lang/String;
    .restart local v2    # "campaigns":Lorg/json/JSONArray;
    .restart local v3    # "data":Lorg/json/JSONObject;
    .restart local v6    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .restart local v9    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_9
    move-object v9, v6

    .line 612
    .end local v0    # "appFiltering":Ljava/lang/String;
    .end local v6    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_a
    :try_start_3
    iput-object v9, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 616
    .end local v2    # "campaigns":Lorg/json/JSONArray;
    .end local v9    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_b
    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-nez v12, :cond_c

    .line 617
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 619
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsed total of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " campaigns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 622
    const-string v12, "webViewUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 623
    const-string v12, "analyticsUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 624
    const-string v12, "impactUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 625
    const-string v12, "gamerId"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 628
    const-string v12, "refreshCampaignsAfterViewed"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 629
    const/4 v12, 0x0

    sput v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 630
    const-string v12, "refreshCampaignsAfterViewed"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 634
    :cond_d
    const-string v12, "refreshCampaignsAfterSeconds"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 635
    const-string v12, "refreshCampaignsAfterSeconds"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 639
    :cond_e
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 640
    sget-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v12, :cond_f

    .line 641
    sget-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v12}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 642
    const/4 v12, 0x0

    sput-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 644
    :cond_f
    new-instance v12, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    const-string v13, "zones"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;-><init>(Lorg/json/JSONArray;)V

    sput-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 665
    :cond_10
    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v12, :cond_14

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_14

    .line 666
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WebDataCompleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 667
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unity Ads initialized with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " campaigns and "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v12, :cond_13

    sget-object v12, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v12}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->zoneCount()I

    move-result v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " zones"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 668
    iget-object v12, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v12}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataCompleted()V

    goto/16 :goto_1

    .line 648
    :cond_11
    :try_start_4
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 661
    .end local v3    # "data":Lorg/json/JSONObject;
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_12
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_1

    .line 667
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":Lorg/json/JSONObject;
    :cond_13
    const/4 v12, 0x0

    goto :goto_3

    .line 672
    :cond_14
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_1
.end method

.method private checkFailedUrls()V
    .locals 15

    .prologue
    .line 477
    new-instance v11, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v11, "pendingRequestFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "contents":Ljava/lang/String;
    const/4 v13, 0x0

    .line 482
    .local v13, "pendingRequestsJson":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 486
    .local v12, "pendingRequestsArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    .local v14, "pendingRequestsJson":Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 489
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 490
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 491
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 493
    .local v9, "failedUrl":Lorg/json/JSONObject;
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v1, "url"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "methodType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "requestType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->getValueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v5

    const-string v1, "retries"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 500
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v9    # "failedUrl":Lorg/json/JSONObject;
    .end local v10    # "i":I
    :cond_0
    move-object v13, v14

    .line 508
    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 511
    .end local v7    # "contents":Ljava/lang/String;
    .end local v12    # "pendingRequestsArray":Lorg/json/JSONArray;
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 512
    return-void

    .line 504
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v12    # "pendingRequestsArray":Lorg/json/JSONArray;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 505
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "Problems while sending some of the failed urls."

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 504
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v13, v14

    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method private deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "campaignsArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v5, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 689
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 690
    .local v4, "jsonCampaign":Lorg/json/JSONObject;
    new-instance v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-direct {v1, v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .local v1, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    :try_start_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->hasValidData()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 693
    const-string v6, "Adding campaign to cache"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v0, v1

    .line 687
    .end local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v4    # "jsonCampaign":Lorg/json/JSONObject;
    .restart local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "Problem with the campaign, skipping."

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 705
    .end local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_1
    const/4 v5, 0x0

    :cond_2
    return-object v5

    .line 697
    .restart local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .restart local v3    # "i":I
    .restart local v4    # "jsonCampaign":Lorg/json/JSONObject;
    .restart local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .restart local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    goto :goto_2
.end method

.method private filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/16 v13, 0x26

    const/4 v12, 0x0

    .line 709
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 710
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 712
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 756
    .end local v0    # "activity":Landroid/app/Activity;
    .end local p1    # "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :goto_0
    return-object p1

    .line 714
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local p1    # "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 716
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v4, "newCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v5, 0x0

    .line 719
    .local v5, "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 720
    .local v1, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getStoreId()Ljava/lang/String;

    move-result-object v7

    .line 723
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 724
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 727
    :cond_1
    if-eqz v7, :cond_4

    .line 729
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 731
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 732
    if-nez v5, :cond_2

    .line 733
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .end local v5    # "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v6

    .line 736
    .end local v6    # "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filtered game id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from ad plan"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 741
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 739
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 745
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 749
    .end local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 750
    const-string v10, ","

    invoke-static {v10, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    :cond_6
    move-object p1, v4

    .line 753
    goto/16 :goto_0

    .line 756
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .end local v5    # "oldCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    const/4 p1, 0x0

    goto/16 :goto_0
.end method

.method public static getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    return-object v0
.end method

.method private requestAppWhitelist(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 760
    sget-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    if-eqz v1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 762
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 764
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const/4 v3, 0x0

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->AppWhitelist:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 765
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p2, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    if-eqz v1, :cond_0

    .line 809
    :goto_0
    return-void

    .line 798
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    .line 800
    invoke-static {p2}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "appsJson":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 803
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryArguments()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->InstalledApps:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 804
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-virtual {v0, v7}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->setPostBody(Ljava/lang/String;)V

    .line 805
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 807
    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    :cond_1
    const-string v1, "Nothing to send for installed applications"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startNextLoader()V
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    if-nez v0, :cond_0

    .line 409
    const-string v0, "Starting next URL loader"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 411
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 413
    :cond_0
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 440
    :goto_1
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total urls sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 445
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 446
    return-void

    .line 420
    :pswitch_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :pswitch_2
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 472
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 473
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 474
    return-void

    .line 454
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    goto :goto_0

    .line 457
    :pswitch_2
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private whitelistReceived(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v6, "Received whitelist"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 772
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 773
    .local v1, "appWhitelist":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 775
    .local v4, "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "whitelist"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 777
    .local v5, "whitelistArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ge v3, v6, :cond_1

    .line 779
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 781
    .local v0, "appEntry":Lorg/json/JSONObject;
    const-string v6, "game"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 782
    const-string v6, "game"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 777
    .end local v0    # "appEntry":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    :cond_1
    :try_start_2
    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 793
    .end local v1    # "appWhitelist":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "whitelistArray":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse app whitelist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 784
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "appWhitelist":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v4    # "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "whitelistArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 11
    .param p1, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 515
    iget-object v9, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v9

    .line 516
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v9

    .line 551
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 518
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 520
    :cond_1
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 521
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 525
    .local v5, "failedUrlsJson":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    .local v4, "failedUrlsArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 529
    .local v2, "failedUrl":Lorg/json/JSONObject;
    :try_start_1
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    move-object v3, v2

    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .local v3, "failedUrl":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 530
    .local v1, "failedLoader":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    :try_start_3
    const-string v8, "url"

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getBaseUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v8, "requestType"

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v8, "methodType"

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getHTTPMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v8, "body"

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getQueryParams()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v8, "retries"

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRetries()I

    move-result v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 537
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v2

    .line 538
    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .restart local v3    # "failedUrl":Lorg/json/JSONObject;
    goto :goto_1

    .line 540
    .end local v1    # "failedLoader":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;
    :cond_3
    :try_start_4
    const-string v8, "data"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 546
    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    :try_start_5
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 547
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "pendingrequests.dat"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v7, "pendingRequestFile":Ljava/io/File;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unity3d/ads/android/UnityAdsUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 550
    .end local v7    # "pendingRequestFile":Ljava/io/File;
    :cond_4
    monitor-exit v9

    goto/16 :goto_0

    .end local v4    # "failedUrlsArray":Lorg/json/JSONArray;
    .end local v5    # "failedUrlsJson":Lorg/json/JSONObject;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 542
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    .restart local v4    # "failedUrlsArray":Lorg/json/JSONArray;
    .restart local v5    # "failedUrlsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "Error collecting failed urls"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .restart local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    goto :goto_3
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 353
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 355
    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 358
    :cond_1
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 359
    return-void
.end method

.method public getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 135
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 142
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 136
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getVideoPlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v0, 0x0

    .line 149
    .local v0, "currentCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 153
    .restart local v0    # "currentCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method public initCampaigns()Z
    .locals 15

    .prologue
    .line 163
    iget-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 241
    :goto_0
    return v1

    .line 167
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 175
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v10

    .line 176
    .local v10, "currentActivity":Landroid/app/Activity;
    if-nez v10, :cond_2

    .line 177
    const-string v1, "initCampaigns failed due to currentActivity null"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :cond_2
    const/4 v12, 0x0

    .line 188
    .local v12, "isConnected":Z
    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 190
    .local v9, "cm":Landroid/net/ConnectivityManager;
    if-eqz v9, :cond_3

    .line 191
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 192
    .local v7, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x1

    .line 195
    .end local v7    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_3
    :goto_1
    if-nez v12, :cond_5

    .line 196
    const-string v1, "Device offline, can\'t init campaigns"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 192
    .restart local v7    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 206
    .end local v7    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_5
    const-string v1, "impact.applifier.com"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 208
    .local v8, "adServer":Ljava/net/InetAddress;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad server resolves to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    const-string v1, "initCampaigns failed, ad server resolves to loopback address (due to ad blocker?)"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 219
    .end local v8    # "adServer":Ljava/net/InetAddress;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "currentActivity":Landroid/app/Activity;
    .end local v12    # "isConnected":Z
    :catch_0
    move-exception v11

    .line 220
    .local v11, "e":Ljava/net/UnknownHostException;
    const-string v1, "initCampaigns failed due to DNS error, unable to resolve ad server address"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v11    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v11

    .line 229
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception during DNS test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 232
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting Unity Ads ad plan from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 234
    const-string v1, "\\?"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "parts":[Ljava/lang/String;
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const/4 v1, 0x0

    aget-object v2, v13, v1

    const/4 v1, 0x1

    aget-object v3, v13, v1

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoPlan:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 237
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->checkFailedUrls()V

    .line 241
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 12
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 324
    if-eqz p2, :cond_2

    .line 325
    const-string v1, "%s"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "viewUrl":Ljava/lang/String;
    const-string v1, "%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "gameId"

    aput-object v5, v4, v6

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "analyticsUrl":Ljava/lang/String;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "type"

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "trackingId"

    aput-object v5, v4, v9

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 329
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "providerId"

    aput-object v5, v4, v9

    invoke-virtual {p2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v7

    .line 332
    .local v7, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "zone"

    aput-object v5, v4, v9

    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v7

    .line 335
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v8

    .line 336
    .local v8, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "rewardItem"

    aput-object v5, v4, v9

    invoke-virtual {v8}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .end local v8    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "sid"

    aput-object v5, v4, v9

    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    :cond_1
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->Analytics:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 343
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v2    # "viewUrl":Ljava/lang/String;
    .end local v3    # "analyticsUrl":Ljava/lang/String;
    .end local v7    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_2
    return-void
.end method

.method public sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z
    .locals 16
    .param p1, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .param p2, "position"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    .prologue
    .line 245
    const/4 v12, 0x0

    .line 246
    .local v12, "progressSent":Z
    if-nez p1, :cond_0

    move v13, v12

    .line 320
    .end local v12    # "progressSent":Z
    .local v13, "progressSent":I
    :goto_0
    return v13

    .line 248
    .end local v13    # "progressSent":I
    .restart local v12    # "progressSent":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads video position: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", gamer id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 250
    if-eqz p2, :cond_6

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 251
    const-string v1, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "gamers/"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "viewUrl":Ljava/lang/String;
    const-string v1, "%s%s/video/%s/%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v1, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v9

    .line 256
    .local v9, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    const-string v1, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zone"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v9}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "queryParams":Ljava/lang/String;
    :try_start_0
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "platform"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "advertisingId":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 263
    const-string v4, "%s&%s=%d"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v6, "trackingEnabled"

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "advertisingIdMd5":Ljava/lang/String;
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "advertisingTrackingId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "UTF-8"

    invoke-static {v8, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rawAdvertisingTrackingId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "UTF-8"

    invoke-static {v7, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .end local v8    # "advertisingIdMd5":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "gameId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "sdkVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "1401"

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "softwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 284
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "hardwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 285
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "deviceType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 286
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "connectionType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    const-string v1, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "androidNetworkType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 292
    :cond_2
    sget-wide v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-lez v1, :cond_3

    .line 293
    const-string v1, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "cachingSpeed"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-wide v14, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    :cond_3
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenSize"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenDensity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 299
    const-string v4, "%s&%s=%s"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v6, "cachedPlayback"

    aput-object v6, v5, v1

    const/4 v6, 0x2

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "true"

    :goto_3
    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 305
    .end local v7    # "advertisingId":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v9

    .line 306
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v11

    .line 307
    .local v11, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rewardItem"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v11}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .end local v11    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_4
    invoke-virtual {v9}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 311
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "sid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    :cond_5
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v4, "POST"

    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoViewed:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 315
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    const/4 v12, 0x1

    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v2    # "viewUrl":Ljava/lang/String;
    .end local v3    # "queryParams":Ljava/lang/String;
    .end local v9    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_6
    move v13, v12

    .line 320
    .restart local v13    # "progressSent":I
    goto/16 :goto_0

    .line 263
    .end local v13    # "progressSent":I
    .restart local v2    # "viewUrl":Ljava/lang/String;
    .restart local v3    # "queryParams":Ljava/lang/String;
    .restart local v7    # "advertisingId":Ljava/lang/String;
    .restart local v9    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 269
    :cond_8
    :try_start_1
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "deviceId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 271
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 272
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "androidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rawAndroidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 276
    :cond_9
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "macAddress"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 299
    :cond_a
    const-string v1, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 301
    .end local v7    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 302
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problems creating campaigns query: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 128
    return-void
.end method

.method public stopAllRequests()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancel(Z)Z

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_currentLoader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 377
    :cond_2
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
