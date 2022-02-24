.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 373
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 376
    if-nez p2, :cond_0

    .line 377
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->pauseVideo()V

    .line 379
    :cond_0
    return-void
.end method
