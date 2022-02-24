.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 278
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$602(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 280
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 282
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$902(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z

    .line 286
    return-void
.end method
