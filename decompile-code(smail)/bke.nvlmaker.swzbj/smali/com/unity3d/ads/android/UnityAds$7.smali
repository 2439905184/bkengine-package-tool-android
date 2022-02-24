.class final Lcom/unity3d/ads/android/UnityAds$7;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/UnityAds;->hideOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1074
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1078
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAds;->access$1202(Z)Z

    .line 1080
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1083
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v2, v2, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v2, :cond_1

    .line 1090
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v2, v2, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "none"

    invoke-virtual {v2, v3, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1093
    :cond_1
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v2, :cond_2

    .line 1094
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v2, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->closeAds(Lorg/json/JSONObject;)V

    .line 1095
    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 1098
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAds;->access$902(Z)Z

    .line 1100
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$400()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1101
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$400()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    .line 1103
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$1300()V

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
