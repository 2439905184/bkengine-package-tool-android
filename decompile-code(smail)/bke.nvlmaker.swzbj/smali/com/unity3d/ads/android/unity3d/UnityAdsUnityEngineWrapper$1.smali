.class Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;
.super Ljava/lang/Object;
.source "UnityAdsUnityEngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;->init(Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;

.field final synthetic val$logLevel:I

.field final synthetic val$testMode:Z

.field final synthetic val$unityVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;IZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;

    iput p2, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$logLevel:I

    iput-boolean p3, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$testMode:Z

    iput-object p4, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$unityVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$gameId:Ljava/lang/String;

    iput-object p7, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$logLevel:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 37
    iget-boolean v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$testMode:Z

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setTestMode(Z)V

    .line 38
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$unityVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$unityVersion:Ljava/lang/String;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper$1;->val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityEngineWrapper;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 42
    return-void
.end method
