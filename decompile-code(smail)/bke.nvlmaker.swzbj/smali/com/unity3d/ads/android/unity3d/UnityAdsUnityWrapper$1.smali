.class Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;
.super Ljava/lang/Object;
.source "UnityAdsUnityWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->init(Ljava/lang/String;Landroid/app/Activity;ZILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

.field final synthetic val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

.field final synthetic val$logLevel:I

.field final synthetic val$unityVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;ILjava/lang/String;Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    iput p2, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$logLevel:I

    iput-object p3, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$unityVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$logLevel:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 70
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    invoke-static {v0}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->access$000(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setTestMode(Z)V

    .line 71
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$unityVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$unityVersion:Ljava/lang/String;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    invoke-static {v0}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->access$100(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->this$0:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    invoke-static {v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->access$200(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;->val$listener:Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 75
    return-void
.end method
