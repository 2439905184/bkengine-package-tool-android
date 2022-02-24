.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;
.super Ljava/util/TimerTask;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateChecker"
.end annotation


# instance fields
.field private _curPos:Ljava/lang/Float;

.field private _duration:I

.field private _oldPos:Ljava/lang/Float;

.field private _playHeadHasMoved:Z

.field private _skipTimeLeft:Ljava/lang/Float;

.field private _videoHasStalled:Z

.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 582
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 583
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    .line 584
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 585
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 586
    const/4 v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    .line 587
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 588
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p2, "x1"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)I
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    .prologue
    .line 582
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    return v0
.end method

.method static synthetic access$2600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 592
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_2

    .line 593
    :cond_0
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 598
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_3

    .line 599
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->pauseVideo()V

    .line 602
    :cond_3
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 605
    :try_start_0
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 616
    .local v5, "position":Ljava/lang/Float;
    const/4 v1, 0x1

    .line 617
    .local v1, "duration":I
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 620
    .local v2, "durationSuccess":Ljava/lang/Boolean;
    :try_start_1
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 627
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 628
    iput v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    .line 630
    :cond_4
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 632
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 633
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 634
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 635
    iget-object v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v8, 0x4

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v9

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v10, 0x0

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_c

    const/4 v6, 0x1

    :goto_3
    invoke-static {v7, v8, v9, v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    .line 641
    :goto_4
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 650
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    iget v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    iget-object v8, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v8}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_f

    .line 651
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    long-to-float v6, v6

    iget-object v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 653
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 654
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 656
    :cond_5
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    .line 657
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$2;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$2;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    :cond_6
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 686
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 687
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 690
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 691
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    cmpl-double v6, v6, v8

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 694
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v6, v7}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 695
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_9
    const/4 v0, 0x0

    .line 700
    .local v0, "bufferPercentage":I
    :try_start_2
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getBufferPercentage()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 706
    :goto_6
    iget-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v8}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 708
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->cancel()Z

    .line 709
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 718
    :cond_a
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_1

    .line 719
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 607
    .end local v0    # "bufferPercentage":I
    .end local v1    # "duration":I
    .end local v2    # "durationSuccess":Ljava/lang/Boolean;
    .end local v5    # "position":Ljava/lang/Float;
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView currentPosition"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 609
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 610
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_1

    .line 612
    :cond_b
    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_1

    .line 622
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "duration":I
    .restart local v2    # "durationSuccess":Ljava/lang/Boolean;
    .restart local v5    # "position":Ljava/lang/Float;
    :catch_1
    move-exception v3

    .line 623
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView duration"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 624
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    .line 635
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 637
    :cond_d
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 638
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    goto/16 :goto_4

    .line 665
    :cond_e
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 676
    :cond_f
    iget-boolean v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    iget-object v8, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v8}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_6

    .line 677
    new-instance v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$4;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$4;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 702
    .restart local v0    # "bufferPercentage":I
    :catch_2
    move-exception v3

    .line 703
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView buffering percentage"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_6
.end method
