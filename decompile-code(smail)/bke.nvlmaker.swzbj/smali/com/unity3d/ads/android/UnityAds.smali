.class public Lcom/unity3d/ads/android/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;
.implements Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/UnityAds$8;,
        Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;,
        Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;
    }
.end annotation


# static fields
.field public static final UNITY_ADS_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final UNITY_ADS_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final UNITY_ADS_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final UNITY_ADS_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final UNITY_ADS_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final UNITY_ADS_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final UNITY_ADS_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field private static _adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

.field private static _adsReadySent:Z

.field private static _alertDialog:Landroid/app/AlertDialog;

.field private static _campaignRefreshTimer:Ljava/util/Timer;

.field private static _campaignRefreshTimerDeadline:J

.field private static _campaignRefreshTimerTask:Ljava/util/TimerTask;

.field private static _fixMainview:Z

.field private static _hidingHandled:Z

.field private static _initialized:Z

.field private static _instance:Lcom/unity3d/ads/android/UnityAds;

.field private static _openRequestFromDeveloper:Z

.field private static _pauseScreenTimer:Ljava/util/TimerTask;

.field private static _pauseTimer:Ljava/util/Timer;

.field private static _preventVideoDoubleStart:Z

.field private static _refreshAfterShowAds:Z

.field private static _showingAds:Z

.field private static _singleTaskApplication:Z

.field public static cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

.field public static mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

.field public static webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 74
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    .line 75
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .line 76
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 79
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    .line 80
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    .line 81
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_adsReadySent:Z

    .line 82
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_openRequestFromDeveloper:Z

    .line 83
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_refreshAfterShowAds:Z

    .line 84
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_fixMainview:Z

    .line 85
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    .line 86
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_singleTaskApplication:Z

    .line 87
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_hidingHandled:Z

    .line 88
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    .line 90
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 91
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    .line 92
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    .line 93
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 94
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerDeadline:J

    .line 96
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    .line 99
    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_refreshAfterShowAds:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    return p0
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hideOperations()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_hidingHandled:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_hidingHandled:Z

    return p0
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->refreshCampaignsOrCacheNextVideo()V

    return-void
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->createPauseScreenTimer()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->playVideo()V

    return-void
.end method

.method static synthetic access$400()Lcom/unity3d/ads/android/IUnityAdsListener;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->close()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_adsReadySent:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_adsReadySent:Z

    return p0
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->cancelPauseScreenTimer()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    return p0
.end method

.method public static canShow()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    sget-boolean v8, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-nez v8, :cond_0

    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-nez v8, :cond_1

    .line 305
    .local v2, "currentActivity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return v6

    .line 280
    .end local v2    # "currentActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 281
    .restart local v2    # "currentActivity":Landroid/app/Activity;
    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 284
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 286
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v7

    .line 288
    .local v3, "isConnected":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 292
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isConnected":Z
    :cond_2
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v8}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v5

    .line 294
    .local v5, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz v5, :cond_0

    .line 296
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 298
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 299
    .local v4, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowStreamingVideo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 300
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v8, v4, v7}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_3
    move v6, v7

    .line 305
    goto :goto_0

    .end local v4    # "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v5    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_4
    move v3, v6

    .line 286
    goto :goto_1
.end method

.method public static canShowAds()Z
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method private static cancelPauseScreenTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 913
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 914
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 917
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 918
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 919
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 922
    :cond_1
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 923
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    .line 924
    return-void
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    if-nez p0, :cond_1

    .line 155
    const-string v1, "changeActivity: null, ignoring"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 161
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 165
    if-eqz p0, :cond_4

    instance-of v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v1, :cond_4

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "view":Ljava/lang/String;
    sget-boolean v1, Lcom/unity3d/ads/android/UnityAds;->_openRequestFromDeveloper:Z

    if-eqz v1, :cond_2

    .line 169
    const-string v0, "start"

    .line 170
    const-string v1, "This open request is from the developer, setting start view"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 173
    :cond_2
    if-eqz v0, :cond_3

    .line 174
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setupViews()V

    .line 175
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->open(Ljava/lang/String;)V

    .line 178
    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->_openRequestFromDeveloper:Z

    goto :goto_0

    .line 181
    .end local v0    # "view":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static checkMainview()V
    .locals 1

    .prologue
    .line 893
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_fixMainview:Z

    if-eqz v0, :cond_0

    .line 894
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_fixMainview:Z

    .line 895
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->fixActivityAttachment()V

    .line 899
    :cond_0
    return-void
.end method

.method private static close()V
    .locals 4

    .prologue
    .line 747
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->cancelPauseScreenTimer()V

    .line 748
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v2, :cond_0

    .line 749
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;-><init>(Lcom/unity3d/ads/android/UnityAds$1;)V

    .line 750
    .local v0, "closeRunner":Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 751
    .local v1, "handler":Landroid/os/Handler;
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 756
    .end local v0    # "closeRunner":Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 754
    :cond_0
    const-string v2, "Did not close"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static createPauseScreenTimer()V
    .locals 6

    .prologue
    .line 927
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$5;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds$5;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 945
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    .line 946
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_pauseTimer:Ljava/util/Timer;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->_pauseScreenTimer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 947
    return-void
.end method

.method public static enableUnityDeveloperInternalTestMode()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "https://impact.staging.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 145
    return-void
.end method

.method public static getCurrentRewardItemKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 345
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 347
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 349
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDefaultRewardItemKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 336
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 338
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 340
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "rewardItemKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 375
    .local v2, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    check-cast v2, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v2    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 377
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v1

    .line 378
    .local v1, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v3

    .line 385
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :goto_0
    return-object v3

    .line 382
    .restart local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .restart local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not fetch reward item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 385
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getRewardItemKeys()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v5

    .line 321
    .local v5, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    check-cast v5, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v5    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v1

    .line 323
    .local v1, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->allItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 324
    .local v4, "rewardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/item/UnityAdsRewardItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, "rewardItemKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 326
    .local v2, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v2    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .end local v3    # "rewardItemKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "rewardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/item/UnityAdsRewardItem;>;"
    .restart local v5    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v3, 0x0

    .end local v5    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    return-object v3
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "1401"

    return-object v0
.end method

.method public static handleFullscreenDestroy()V
    .locals 1

    .prologue
    .line 902
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_singleTaskApplication:Z

    if-eqz v0, :cond_1

    .line 903
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hideOperations()V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_fixMainview:Z

    goto :goto_0
.end method

.method public static hasMultipleRewardItems()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 311
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 312
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 314
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->itemCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 316
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 314
    goto :goto_0

    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    move v2, v3

    .line 316
    goto :goto_0
.end method

.method private static hasViewableAds()Z
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

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

.method public static hide()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->close()V

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hideOperations()V
    .locals 6

    .prologue
    .line 1061
    sget-boolean v2, Lcom/unity3d/ads/android/UnityAds;->_hidingHandled:Z

    if-eqz v2, :cond_0

    .line 1106
    .local v0, "delay":I
    .local v1, "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 1065
    .end local v0    # "delay":I
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    const/16 v0, 0x1e

    .line 1066
    .restart local v0    # "delay":I
    sget-boolean v2, Lcom/unity3d/ads/android/UnityAds;->_singleTaskApplication:Z

    if-eqz v2, :cond_1

    .line 1067
    const/16 v0, 0xfa

    .line 1070
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1071
    .restart local v1    # "handler":Landroid/os/Handler;
    new-instance v2, Lcom/unity3d/ads/android/UnityAds$7;

    invoke-direct {v2}, Lcom/unity3d/ads/android/UnityAds$7;-><init>()V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/android/IUnityAdsListener;

    .prologue
    const/4 v12, 0x2

    .line 666
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    if-eqz v8, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 669
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "gameId is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 672
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 673
    .local v1, "gameIdInteger":I
    if-gtz v1, :cond_4

    .line 674
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "gameId is invalid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1    # "gameIdInteger":I
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "gameId does not parse as an integer"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 681
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "gameIdInteger":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initializing Unity Ads with gameId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 684
    :try_start_1
    const-string v8, "com.unity3d.ads.android.webapp.UnityAdsWebBridge"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 686
    .local v7, "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "handleWebEvent"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 687
    .local v2, "handleWebEvent":Ljava/lang/reflect/Method;
    const-string v8, "UnityAds ProGuard check OK"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 698
    .end local v2    # "handleWebEvent":Ljava/lang/reflect/Method;
    .end local v7    # "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 701
    .local v6, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 703
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 705
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 706
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v8, v12, :cond_5

    .line 707
    const/4 v8, 0x1

    sput-boolean v8, Lcom/unity3d/ads/android/UnityAds;->_singleTaskApplication:Z

    .line 708
    const-string v8, "Running in singleTask application mode"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 705
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 688
    .end local v3    # "i":I
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v8, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.UnityAdsWebBridge class not found, check ProGuard settings"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent method not found, check ProGuard settings"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnityAds ProGuard check: Unknown exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v0

    .line 712
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "Error while checking singleTask activities"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    if-nez v8, :cond_7

    .line 717
    new-instance v8, Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v8}, Lcom/unity3d/ads/android/UnityAds;-><init>()V

    sput-object v8, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    .line 720
    :cond_7
    invoke-static {p2}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 722
    sput-object p1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 723
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 724
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 725
    invoke-static {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->initScreenMetrics(Landroid/app/Activity;)V

    .line 727
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is debuggable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 729
    new-instance v8, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-direct {v8}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;-><init>()V

    sput-object v8, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    .line 730
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v8, v9}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->setDownloadListener(Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;)V

    .line 731
    new-instance v8, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {v8}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;-><init>()V

    sput-object v8, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .line 732
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v8, v9}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V

    .line 736
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/unity3d/ads/android/UnityAds$2;

    invoke-direct {v9, p0}, Lcom/unity3d/ads/android/UnityAds$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private static initCache()V
    .locals 2

    .prologue
    .line 820
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 821
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    if-eqz v0, :cond_0

    .line 823
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 825
    :cond_0
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static open(Ljava/lang/String;)V
    .locals 7
    .param p0, "view"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 760
    .local v1, "dataOk":Ljava/lang/Boolean;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 763
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v4

    .line 765
    .local v4, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    const-string v5, "action"

    const-string v6, "open"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v5, "zone"

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 769
    check-cast v4, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v4    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v3

    .line 770
    .local v3, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    const-string v5, "itemKey"

    invoke-virtual {v3}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v3    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataOk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p0, :cond_1

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening with view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 782
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v5, :cond_1

    .line 783
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/unity3d/ads/android/UnityAds$3;

    invoke-direct {v6, p0, v0}, Lcom/unity3d/ads/android/UnityAds$3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 812
    :cond_1
    return-void

    .line 773
    :catch_0
    move-exception v2

    .line 774
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private static openPlayStoreAsIntent(Ljava/lang/String;)V
    .locals 6
    .param p0, "playStoreId"    # Ljava/lang/String;

    .prologue
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening playstore activity with storeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t start PlayStore intent!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static openPlayStoreInBrowser(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening playStore in browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 657
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t start browser intent!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static playVideo()V
    .locals 2

    .prologue
    .line 855
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAds;->playVideo(J)V

    .line 856
    return-void
.end method

.method private static playVideo(J)V
    .locals 2
    .param p0, "delay"    # J

    .prologue
    .line 859
    sget-boolean v1, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    if-eqz v1, :cond_0

    .line 860
    const-string v1, "Prevent double start of video playback"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 868
    :goto_0
    return-void

    .line 863
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    .line 865
    const-string v1, "Running threaded"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 866
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;-><init>(Lcom/unity3d/ads/android/UnityAds$1;)V

    .line 867
    .local v0, "playVideoRunner":Lcom/unity3d/ads/android/UnityAds$UnityAdsPlayVideoRunner;
    invoke-static {v0, p0, p1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static refreshCampaignsOrCacheNextVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 952
    sget-boolean v2, Lcom/unity3d/ads/android/UnityAds;->_refreshAfterShowAds:Z

    if-eqz v2, :cond_1

    .line 953
    sput-boolean v6, Lcom/unity3d/ads/android/UnityAds;->_refreshAfterShowAds:Z

    .line 954
    const-string v2, "Starting delayed ad plan refresh"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 955
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_0

    .line 956
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 1003
    .local v1, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_0
    :goto_0
    return-void

    .line 961
    .end local v1    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_1
    sget-wide v2, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerDeadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerDeadline:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 962
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->removeCampaignRefreshTimer()V

    .line 963
    const-string v2, "Refreshing ad plan from server due to timer deadline"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 964
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_0

    .line 965
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    goto :goto_0

    .line 970
    :cond_2
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lez v2, :cond_3

    .line 971
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    sget v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lt v2, v3, :cond_3

    .line 972
    const-string v2, "Refreshing ad plan from server due to endscreen limit"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 973
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_0

    .line 974
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    goto :goto_0

    .line 980
    :cond_3
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 981
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 982
    const-string v2, "All available videos watched, refreshing ad plan from server"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 983
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_0

    .line 984
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    goto :goto_0

    .line 989
    :cond_4
    const-string v2, "Unable to read video data to determine if ad plans should be refreshed"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 993
    :cond_5
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_0

    .line 995
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    .line 996
    .restart local v1    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 997
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 999
    .local v0, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v2, v0, v6}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v2, v0}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto/16 :goto_0
.end method

.method private static removeCampaignRefreshTimer()V
    .locals 2

    .prologue
    .line 1029
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerDeadline:J

    .line 1031
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1032
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1034
    :cond_0
    return-void
.end method

.method private static sendReadyEvent()V
    .locals 1

    .prologue
    .line 828
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_adsReadySent:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$4;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds$4;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 840
    :cond_0
    return-void
.end method

.method public static setCampaignDataURL(Ljava/lang/String;)V
    .locals 0
    .param p0, "campaignDataURL"    # Ljava/lang/String;

    .prologue
    .line 139
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debugModeEnabled"    # Z

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 116
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setDefaultRewardItemAsRewardItem()V
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 366
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 368
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    .line 371
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/android/IUnityAdsListener;

    .prologue
    .line 150
    sput-object p0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 151
    return-void
.end method

.method public static setRewardItemKey(Ljava/lang/String;)Z
    .locals 3
    .param p0, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 355
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 357
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 360
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0
    .param p0, "testDeveloperId"    # Ljava/lang/String;

    .prologue
    .line 127
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1
    .param p0, "testModeEnabled"    # Z

    .prologue
    .line 123
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 124
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0
    .param p0, "testOptionsId"    # Ljava/lang/String;

    .prologue
    .line 131
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static setZone(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-nez v0, :cond_1

    .line 197
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set zone before campaigns are available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->setCurrentZone(Ljava/lang/String;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-boolean v2, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 209
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v1

    .line 211
    .local v1, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v1, p1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 214
    .end local v1    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setup()V
    .locals 0

    .prologue
    .line 815
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->initCache()V

    .line 817
    return-void
.end method

.method private static setupCampaignRefreshTimer()V
    .locals 4

    .prologue
    .line 1006
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->removeCampaignRefreshTimer()V

    .line 1008
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    if-lez v0, :cond_0

    .line 1009
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$6;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds$6;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerDeadline:J

    .line 1023
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 1024
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimer:Ljava/util/Timer;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1026
    :cond_0
    return-void
.end method

.method private static setupViews()V
    .locals 4

    .prologue
    .line 843
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_0

    .line 844
    const-string v0, "View was not destroyed, trying to destroy it"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->destroy()V

    .line 846
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 849
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-nez v0, :cond_1

    .line 850
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/ads/android/view/UnityAdsMainView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 852
    :cond_1
    return-void
.end method

.method public static show()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static show(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 218
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 221
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v0, :cond_1

    .line 222
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->stopAllDownloads()V

    .line 224
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->mergeOptions(Ljava/util/Map;)V

    .line 226
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    .line 229
    .local v3, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 230
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 231
    .local v2, "selectedCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 234
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 236
    .local v1, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v5, v2, v7}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v5, v1, v7}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v5, v1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 243
    .end local v1    # "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v2    # "selectedCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v3    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching ad from \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", options: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 245
    sput-boolean v7, Lcom/unity3d/ads/android/UnityAds;->_openRequestFromDeveloper:Z

    .line 246
    sput-boolean v7, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    .line 247
    sput-boolean v4, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    .line 248
    sput-boolean v4, Lcom/unity3d/ads/android/UnityAds;->_hidingHandled:Z

    .line 249
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 250
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->startFullscreenActivity()V

    .line 251
    sget-boolean v4, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    .line 259
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_0
    return v4

    .line 253
    .restart local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    const-string v5, "Unity Ads current zone is null"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_2
    const-string v5, "Unity Ads not ready to show ads"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startFullscreenActivity()V
    .locals 6

    .prologue
    .line 871
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 872
    .local v3, "newIntent":Landroid/content/Intent;
    const/high16 v2, 0x10010000

    .line 874
    .local v2, "flags":I
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 875
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    const/high16 v2, 0x10000000

    .line 879
    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 882
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 890
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find UnityAdsFullScreenActivity (failed Android manifest merging?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weird error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onAllCampaignsReady()V
    .locals 0

    .prologue
    .line 446
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 447
    return-void
.end method

.method public onCampaignReady(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1
    .param p1, "campaignHandler"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->getCampaign()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->getCampaign()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hasViewableAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->sendReadyEvent()V

    goto :goto_0
.end method

.method public onCampaignUpdateStarted()V
    .locals 1

    .prologue
    .line 431
    const-string v0, "Campaign updates started."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onCloseAdsView(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 554
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hide()Z

    .line 555
    return-void
.end method

.method public onMainViewAction(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V
    .locals 3
    .param p1, "action"    # Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    .prologue
    const/4 v2, 0x0

    .line 393
    sget-object v0, Lcom/unity3d/ads/android/UnityAds$8;->$SwitchMap$com$unity3d$ads$android$view$UnityAdsMainView$UnityAdsMainViewAction:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_showingAds:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->close()V

    goto :goto_0

    .line 400
    :pswitch_1
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    .line 402
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->cancelPauseScreenTimer()V

    goto :goto_0

    .line 405
    :pswitch_2
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 406
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "Unity Ads video completed"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 409
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 413
    :pswitch_3
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 414
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const-string v0, "Unity Ads video skipped"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 417
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 421
    :pswitch_4
    const-string v0, "Retrying video play, because something went wrong."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 422
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    .line 423
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAds;->playVideo(J)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 590
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 592
    if-eqz p1, :cond_3

    .line 594
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 596
    const/4 v3, 0x0

    .line 597
    .local v3, "playStoreId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 598
    .local v1, "clickUrl":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    .local v0, "bypassAppSheet":Ljava/lang/Boolean;
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    :try_start_0
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 609
    :cond_0
    :goto_0
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    :try_start_1
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 618
    :cond_1
    :goto_1
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    :try_start_2
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 627
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 628
    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAds;->openPlayStoreAsIntent(Ljava/lang/String;)V

    .line 634
    .end local v0    # "bypassAppSheet":Ljava/lang/Boolean;
    .end local v1    # "clickUrl":Ljava/lang/String;
    .end local v3    # "playStoreId":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 604
    .restart local v0    # "bypassAppSheet":Ljava/lang/Boolean;
    .restart local v1    # "clickUrl":Ljava/lang/String;
    .restart local v3    # "playStoreId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 605
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch playStoreId"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 614
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch clickUrl"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 622
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 623
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch bypassAppSheet"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_3

    .line 631
    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->openPlayStoreInBrowser(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onOrientationRequest(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 586
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "orientation"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 587
    return-void
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 550
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 507
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 508
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 509
    const/4 v0, 0x0

    .line 512
    .local v0, "campaignId":Ljava/lang/String;
    :try_start_0
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    :goto_0
    if-eqz v0, :cond_3

    .line 519
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v3, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 520
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v3, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 523
    :cond_0
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 530
    .local v2, "rewatch":Ljava/lang/Boolean;
    :try_start_1
    const-string v3, "rewatch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 535
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected campaign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 536
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 537
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    sput-boolean v5, Lcom/unity3d/ads/android/UnityAds;->_preventVideoDoubleStart:Z

    .line 541
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->playVideo()V

    .line 546
    .end local v0    # "campaignId":Ljava/lang/String;
    .end local v2    # "rewatch":Ljava/lang/Boolean;
    :cond_3
    return-void

    .line 514
    .restart local v0    # "campaignId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Could not get campaignId"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "rewatch":Ljava/lang/Boolean;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 565
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 566
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 568
    .local v0, "dataOk":Ljava/lang/Boolean;
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hasViewableAds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 572
    .local v2, "setViewData":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "initComplete"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v3, v3, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v4, "start"

    invoke-virtual {v3, v4, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 580
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->sendReadyEvent()V

    .line 583
    .end local v2    # "setViewData":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 574
    .restart local v2    # "setViewData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onWebAppLoadComplete(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 559
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 560
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebAppLoadComplete()V

    .line 561
    return-void
.end method

.method public onWebDataCompleted()V
    .locals 7

    .prologue
    .line 453
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "jsonData":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 456
    .local v0, "dataFetchFailed":Z
    const/4 v3, 0x1

    .line 458
    .local v3, "sdkIsCurrent":Z
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    :try_start_0
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 466
    :goto_0
    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setupCampaignRefreshTimer()V

    .line 469
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    :try_start_1
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 480
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    .line 482
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "Unity Ads"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "You are not running the latest version of Unity Ads android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 484
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "OK"

    new-instance v6, Lcom/unity3d/ads/android/UnityAds$1;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/UnityAds$1;-><init>(Lcom/unity3d/ads/android/UnityAds;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 491
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 494
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setup()V

    .line 495
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 474
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_adsReadySent:Z

    if-nez v0, :cond_0

    .line 500
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    .line 501
    :cond_0
    return-void
.end method
