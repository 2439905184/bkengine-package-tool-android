.class public Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;
.super Ljava/lang/Object;
.source "UnityAdsUnityEngineWrapper.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static _initialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->_initialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static native UnityAdsOnFetchCompleted()V
.end method

.method private static native UnityAdsOnFetchFailed()V
.end method

.method private static native UnityAdsOnHide()V
.end method

.method private static native UnityAdsOnShow()V
.end method

.method private static native UnityAdsOnVideoCompleted(Ljava/lang/String;I)V
.end method

.method private static native UnityAdsOnVideoStarted()V
.end method


# virtual methods
.method public canShowAds(Ljava/lang/String;)Z
    .locals 3
    .param p1, "zone"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 83
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    .line 84
    .local v0, "zoneManager":Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getZone(Ljava/lang/String;)Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    .line 95
    .end local v0    # "zoneManager":Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "testMode"    # Z
    .param p4, "logLevel"    # I
    .param p5, "unityVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->_initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->_initialized:Ljava/lang/Boolean;

    .line 30
    move-object v7, p0

    .line 33
    .local v7, "listener":Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;
    :try_start_0
    new-instance v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;-><init>(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;IZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v7    # "listener":Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v7    # "listener":Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;
    :catch_0
    move-exception v8

    .line 46
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "Error occured while initializing Unity Ads"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFetchCompleted()V
    .locals 0

    .prologue
    .line 136
    invoke-static {}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnFetchCompleted()V

    .line 137
    return-void
.end method

.method public onFetchFailed()V
    .locals 0

    .prologue
    .line 142
    invoke-static {}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnFetchFailed()V

    .line 143
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnHide()V

    .line 110
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnShow()V

    .line 116
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    const-string p1, "null"

    .line 130
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnVideoCompleted(Ljava/lang/String;I)V

    .line 131
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->UnityAdsOnVideoStarted()V

    .line 122
    return-void
.end method

.method public setCampaignDataURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setCampaignDataURL(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 99
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 100
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "rewardItemKey"    # Ljava/lang/String;
    .param p3, "optionsString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    const/4 v4, 0x0

    .line 55
    .local v4, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 56
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 57
    .restart local v4    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, ","

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 58
    .local v5, "rawOptionPair":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "optionPair":[Ljava/lang/String;
    aget-object v7, v3, v6

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "optionPair":[Ljava/lang/String;
    .end local v5    # "rawOptionPair":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->canShowAds(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 65
    invoke-static {p1, p2}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v6

    .line 78
    .end local v4    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return v6

    .line 67
    .restart local v4    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 68
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    goto :goto_1
.end method
