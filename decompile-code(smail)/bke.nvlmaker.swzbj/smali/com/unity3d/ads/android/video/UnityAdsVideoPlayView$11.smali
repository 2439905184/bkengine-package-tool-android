.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setBufferingTextVisibility(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

.field final synthetic val$canSkip:Z

.field final synthetic val$hasSkip:Z

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iput p2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$visibility:I

    iput-boolean p3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$hasSkip:Z

    iput-boolean p4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$canSkip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    :cond_0
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$visibility:I

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 540
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$hasSkip:Z

    if-eqz v0, :cond_4

    .line 531
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->val$canSkip:Z

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0
.end method
