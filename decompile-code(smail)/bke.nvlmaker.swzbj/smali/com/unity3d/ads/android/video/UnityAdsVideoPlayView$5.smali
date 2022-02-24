.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 267
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$402(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z

    .line 271
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 272
    return-void
.end method
