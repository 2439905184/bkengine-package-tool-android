.class public Lcom/unity3d/ads/android/properties/UnityAdsProperties;
.super Ljava/lang/Object;
.source "UnityAdsProperties.java"


# static fields
.field public static ANALYTICS_BASE_URL:Ljava/lang/String; = null

.field public static APPFILTER_LIST:Ljava/lang/String; = null

.field public static BASE_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static CACHING_SPEED:J = 0x0L

.field public static CAMPAIGN_DATA_URL:Ljava/lang/String; = null

.field public static CAMPAIGN_QUERY_STRING:Ljava/lang/String; = null

.field public static CAMPAIGN_REFRESH_SECONDS:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_COUNT:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_MAX:I = 0x0

.field public static CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static INSTALLED_APPS_URL:Ljava/lang/String; = null

.field public static final MAX_BUFFERING_WAIT_SECONDS:I = 0x14

.field public static final MAX_NUMBER_OF_ANALYTICS_RETRIES:I = 0x5

.field public static RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

.field public static SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

.field public static SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

.field public static SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

.field public static TESTMODE_ENABLED:Ljava/lang/Boolean;

.field public static TEST_DATA:Ljava/lang/String;

.field public static TEST_DEVELOPER_ID:Ljava/lang/String;

.field private static TEST_EXTRA_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEST_JAVASCRIPT:Ljava/lang/String;

.field public static TEST_OPTIONS_ID:Ljava/lang/String;

.field public static TEST_URL:Ljava/lang/String;

.field public static UNITY_ADS_BASE_URL:Ljava/lang/String;

.field public static UNITY_ADS_GAMER_ID:Ljava/lang/String;

.field public static UNITY_ADS_GAME_ID:Ljava/lang/String;

.field public static UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

.field public static UNITY_VERSION:Ljava/lang/String;

.field public static WEBVIEW_BASE_URL:Ljava/lang/String;

.field private static _campaignQueryString:Ljava/lang/String;

.field private static _seenIsDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 16
    const-string v0, "https://impact.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 17
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 18
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 19
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 20
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_QUERY_STRING:Ljava/lang/String;

    .line 21
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 23
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    .line 24
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    .line 27
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 28
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 29
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 31
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 32
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 33
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    .line 35
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    .line 37
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_URL:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 43
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 44
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 47
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_EXTRA_PARAMS:Ljava/util/Map;

    .line 52
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    .line 190
    sput-boolean v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_seenIsDestroyed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCampaignQueryString()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    const-string v3, "?"

    .line 59
    .local v3, "queryString":Ljava/lang/String;
    :try_start_0
    const-string v4, "%s%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "platform"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "android"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "deviceId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "advertisingId":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 65
    const-string v7, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v8, v4

    const/4 v4, 0x1

    const-string v9, "trackingEnabled"

    aput-object v9, v8, v4

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "advertisingIdMd5":Ljava/lang/String;
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "advertisingTrackingId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "rawAdvertisingTrackingId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .end local v1    # "advertisingIdMd5":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "gameId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "sdkVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "1401"

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 83
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "softwareVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "hardwareVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "deviceType"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "connectionType"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 89
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "unityVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    const-string v4, "%s&%s=%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "androidNetworkType"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "UTF-8"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_2
    sget-wide v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    .line 97
    const-string v4, "%s&%s=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "cachingSpeed"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-wide v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_3
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "screenSize"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "screenDensity"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 104
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "appFilterList"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    const/4 v4, 0x0

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "advertisingId":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    const-string v4, "%s&%s=%s"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const-string v8, "test"

    aput-object v8, v7, v6

    const-string v8, "true"

    aput-object v8, v7, v12

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 116
    const-string v4, "%s&%s=%s"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const-string v8, "optionsId"

    aput-object v8, v7, v6

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_5
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 120
    const-string v4, "%s&%s=%s"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const-string v8, "developerId"

    aput-object v8, v7, v6

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 129
    :cond_6
    :goto_3
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    const-string v4, "%s&%s=%s"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const-string v8, "sendInternalDetails"

    aput-object v8, v7, v6

    const-string v6, "true"

    aput-object v6, v7, v12

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    .line 134
    :cond_7
    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    .line 135
    return-void

    .restart local v0    # "advertisingId":Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 65
    goto/16 :goto_0

    .line 71
    :cond_9
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 72
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "androidId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "rawAndroidId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    :cond_a
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "macAddress"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 108
    .end local v0    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems creating campaigns query: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 125
    const-string v7, "%s&%s=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v4, "encrypted"

    aput-object v4, v8, v6

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "false"

    :goto_4
    aput-object v4, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_c
    const-string v4, "true"

    goto :goto_4
.end method

.method public static getBaseActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCampaignQueryArguments()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 149
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCampaignQueryUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->createCampaignQueryString()V

    .line 139
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 141
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_URL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_URL:Ljava/lang/String;

    .line 144
    :cond_0
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static isActivityDestroyed(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "isDestroyed":Z
    const/4 v2, 0x0

    .line 196
    .local v2, "isDestroyedMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/app/Activity;

    const-string v4, "isDestroyed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 206
    if-eqz p0, :cond_1

    .line 208
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 216
    :cond_1
    :goto_1
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_seenIsDestroyed:Z

    if-nez v3, :cond_0

    .line 200
    const/4 v3, 0x1

    sput-boolean v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_seenIsDestroyed:Z

    .line 201
    const-string v3, "Couldn\'t get isDestroyed -method"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Error running isDestroyed -method"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setExtraParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "testData"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "testData"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    .line 181
    :cond_0
    const-string v0, "testUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "testUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_URL:Ljava/lang/String;

    .line 185
    :cond_1
    const-string v0, "testJavaScript"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "testJavaScript"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 188
    :cond_2
    return-void
.end method
