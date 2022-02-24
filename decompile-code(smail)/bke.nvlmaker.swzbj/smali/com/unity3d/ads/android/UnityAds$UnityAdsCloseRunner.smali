.class Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;
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
    name = "UnityAdsCloseRunner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/UnityAds$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/UnityAds$1;

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/unity3d/ads/android/UnityAds$UnityAdsCloseRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1043
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v2, :cond_0

    .line 1044
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1045
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1046
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1047
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1048
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 1049
    .local v1, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1050
    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1056
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .end local v1    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$1100()V

    .line 1057
    return-void
.end method
