.class Lcom/unity3d/ads/android/UnityAds$3$1;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/UnityAds$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/UnityAds$3;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/UnityAds$3;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAds$3$1;->this$0:Lcom/unity3d/ads/android/UnityAds$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 791
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v1, :cond_2

    .line 792
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v2, p0, Lcom/unity3d/ads/android/UnityAds$3$1;->this$0:Lcom/unity3d/ads/android/UnityAds$3;

    iget-object v2, v2, Lcom/unity3d/ads/android/UnityAds$3;->val$view:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/android/UnityAds$3$1;->this$0:Lcom/unity3d/ads/android/UnityAds$3;

    iget-object v3, v3, Lcom/unity3d/ads/android/UnityAds$3;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->openAds(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 794
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 795
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$300()V

    .line 799
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$400()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 800
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$400()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onShow()V

    .line 805
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    :goto_0
    return-void

    .line 802
    :cond_2
    const-string v1, "mainview null after open, closing"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 803
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->access$500()V

    goto :goto_0
.end method
