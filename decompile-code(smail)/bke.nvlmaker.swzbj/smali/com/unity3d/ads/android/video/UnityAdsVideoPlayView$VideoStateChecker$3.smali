.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;
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
    .line 665
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 668
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->access$2900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can skip this video in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v2, v2, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->access$2600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    :cond_0
    return-void
.end method
