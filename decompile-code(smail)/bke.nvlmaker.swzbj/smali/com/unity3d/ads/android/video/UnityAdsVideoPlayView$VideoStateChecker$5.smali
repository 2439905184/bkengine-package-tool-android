.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 712
    const-string v0, "Buffering taking too long.. cancelling video play"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 714
    return-void
.end method
