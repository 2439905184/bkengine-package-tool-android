.class final Lcom/unity3d/ads/android/UnityAds$3;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/UnityAds;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lorg/json/JSONObject;

.field final synthetic val$view:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAds$3;->val$view:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/android/UnityAds$3;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoadComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->waitForWebAppLoadComplete()V

    .line 789
    :cond_0
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$3$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/UnityAds$3$1;-><init>(Lcom/unity3d/ads/android/UnityAds$3;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 808
    return-void
.end method
