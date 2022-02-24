.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;
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
    .line 641
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-static {v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->access$2500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    return-void
.end method
