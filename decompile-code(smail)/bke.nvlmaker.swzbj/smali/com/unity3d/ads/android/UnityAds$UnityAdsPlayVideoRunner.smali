.class Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnityAdsPlayVideoRunner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/UnityAds$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/UnityAds$1;

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1112
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 1113
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_1

    .line 1114
    const-string v3, "Selected campaign found"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1118
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v3, v3, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v4, "showSpinner"

    invoke-virtual {v3, v4, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1127
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$1400()V

    .line 1130
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3, v4, v5}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoStreamUrl()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "playUrl":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 1138
    :goto_0
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start videoplayback with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1140
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v3, v3, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v3, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->playVideo(Ljava/lang/String;)V

    .line 1144
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "playUrl":Ljava/lang/String;
    :goto_1
    return-void

    .line 1120
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t create data JSON"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1134
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1135
    .restart local v2    # "playUrl":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    goto :goto_0

    .line 1143
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "playUrl":Ljava/lang/String;
    :cond_1
    const-string v3, "Campaign is null"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method
