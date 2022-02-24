.class final Lcom/unity3d/ads/android/UnityAds$4;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/UnityAds;->sendReadyEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 832
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    const-string v0, "Unity Ads ready."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$400()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchCompleted()V

    .line 835
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->access$602(Z)Z

    .line 837
    :cond_0
    return-void
.end method
