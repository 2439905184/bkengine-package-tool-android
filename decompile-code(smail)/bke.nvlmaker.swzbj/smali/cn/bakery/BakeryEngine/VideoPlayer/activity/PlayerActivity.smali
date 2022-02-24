.class public Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
.super Landroid/app/Activity;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;
.implements Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "DANMAKU-PlayerActivity"

.field private static final MEDIA_PLAYER_BUFFERING_UPDATE:I = 0x4001

.field private static final MEDIA_PLAYER_COMPLETION:I = 0x4002

.field private static final MEDIA_PLAYER_ERROR:I = 0x4003

.field private static final MEDIA_PLAYER_INFO:I = 0x4004

.field private static final MEDIA_PLAYER_PREPARED:I = 0x4005

.field private static final MEDIA_PLAYER_PROGRESS_UPDATE:I = 0x4006

.field private static final MEDIA_PLAYER_VIDEO_SIZE_CHANGED:I = 0x4007

.field private static final SURFACE_16_10:I = 0x5

.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x3

.field private static final SURFACE_FILL:I = 0x1

.field private static final SURFACE_MAX:I = 0x6

.field private static final SURFACE_NONE:I = 0x0

.field private static final SURFACE_ORIG:I = 0x2

.field public static Vmode:Ljava/lang/Boolean;


# instance fields
.field private mAspectRatio:I

.field private mCanSeek:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mImageButtonNext:Landroid/widget/ImageButton;

.field private mImageButtonPrevious:Landroid/widget/ImageButton;

.field private mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

.field private mImageButtonSwitchAudio:Landroid/widget/ImageButton;

.field private mImageButtonSwitchSubtitle:Landroid/widget/ImageButton;

.field private mImageButtonToggleMessage:Landroid/widget/ImageButton;

.field private mImageButtonTogglePlay:Landroid/widget/ImageButton;

.field private mInputStream:Ljava/io/FileInputStream;

.field private mLength:I

.field private mLinearLayoutControlBar:Landroid/widget/LinearLayout;

.field private mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

.field private mMediaPlayerLoaded:Z

.field private mMediaPlayerStarted:Z

.field private mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

.field private mProgressBarPreparing:Landroid/widget/ProgressBar;

.field private mSeekBarProgress:Landroid/widget/SeekBar;

.field private mSurfaceHolderDef:Landroid/view/SurfaceHolder;

.field private mSurfaceViewDef:Landroid/view/SurfaceView;

.field private mTextViewLength:Landroid/widget/TextView;

.field private mTextViewTime:Landroid/widget/TextView;

.field private mTime:I

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->Vmode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .line 92
    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    .line 120
    iput-boolean v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    .line 121
    iput-boolean v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerStarted:Z

    .line 123
    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    .line 126
    iput v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTime:I

    .line 127
    iput v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLength:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mCanSeek:Z

    .line 129
    iput v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    return-void
.end method

.method static synthetic access$000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mProgressBarPreparing:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    return v0
.end method

.method static synthetic access$1200(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceHolderDef:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$202(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mCanSeek:Z

    return p1
.end method

.method static synthetic access$300(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLength:I

    return v0
.end method

.method static synthetic access$502(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLength:I

    return p1
.end method

.method static synthetic access$600(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTextViewLength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSeekBarProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTime:I

    return v0
.end method

.method static synthetic access$802(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTime:I

    return p1
.end method

.method static synthetic access$900(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTextViewTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private static isDefMediaPlayer(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected changeSurfaceSize(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;Landroid/view/SurfaceView;I)V
    .locals 18
    .param p1, "player"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "surface"    # Landroid/view/SurfaceView;
    .param p3, "ar"    # I

    .prologue
    .line 423
    invoke-virtual/range {p1 .. p1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->getVideoWidth()I

    move-result v13

    .line 424
    .local v13, "videoWidth":I
    invoke-virtual/range {p1 .. p1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->getVideoHeight()I

    move-result v12

    .line 425
    .local v12, "videoHeight":I
    if-lez v13, :cond_0

    if-gtz v12, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    .line 429
    .local v8, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v8, v13, v12}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 431
    .local v7, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 432
    .local v6, "displayHeight":I
    const/4 v11, -0x1

    .line 433
    .local v11, "targetWidth":I
    const/4 v10, -0x1

    .line 434
    .local v10, "targetHeight":I
    packed-switch p3, :pswitch_data_0

    .line 466
    :goto_1
    :pswitch_0
    if-lez v11, :cond_2

    if-lez v10, :cond_2

    .line 467
    int-to-double v14, v7

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 468
    .local v2, "ard":D
    int-to-double v14, v11

    int-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 469
    .local v4, "art":D
    cmpl-double v14, v2, v4

    if-lez v14, :cond_3

    .line 470
    mul-int v14, v6, v11

    div-int v7, v14, v10

    .line 475
    .end local v2    # "ard":D
    .end local v4    # "art":D
    :cond_2
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 476
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_0

    .line 436
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    move v11, v13

    .line 437
    move v10, v12

    .line 438
    goto :goto_1

    .line 444
    :pswitch_2
    move v7, v13

    .line 445
    move v6, v12

    .line 446
    goto :goto_1

    .line 449
    :pswitch_3
    const/4 v11, 0x4

    .line 450
    const/4 v10, 0x3

    .line 451
    goto :goto_1

    .line 454
    :pswitch_4
    const/16 v11, 0x10

    .line 455
    const/16 v10, 0x9

    .line 456
    goto :goto_1

    .line 459
    :pswitch_5
    const/16 v11, 0x10

    .line 460
    const/16 v10, 0xa

    .line 461
    goto :goto_1

    .line 472
    .restart local v2    # "ard":D
    .restart local v4    # "art":D
    :cond_3
    mul-int v14, v7, v10

    div-int v6, v14, v11

    goto :goto_2

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected createMediaPlayer(ZLandroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "useDefault"    # Z
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 344
    const-string v0, "DANMAKU-PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaPlayer() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    invoke-virtual {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->resetMediaPlayer()V

    .line 348
    invoke-static {p1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->getMediaPlayer(Z)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .line 349
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnBufferingUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;)V

    .line 350
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnCompletionListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;)V

    .line 351
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnErrorListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;)V

    .line 352
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnInfoListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;)V

    .line 353
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnPreparedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;)V

    .line 354
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnProgressUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;)V

    .line 355
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setOnVideoSizeChangedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;)V

    .line 356
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->reset()V

    .line 357
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0, p2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 358
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget v0, v0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_0
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->prepareAsync()V

    .line 399
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget-object v1, v1, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget-object v1, v1, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 366
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 368
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "DANMAKU-PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaPlayer() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 377
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget-object v1, v1, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    .line 378
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget v2, v2, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget v4, v4, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mLength:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v7

    .line 380
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "DANMAKU-PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaPlayer() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget-object v1, v1, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 388
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget v4, v4, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mOffset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    iget v4, v4, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mLength:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 389
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v7

    .line 390
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "DANMAKU-PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaPlayer() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected destroyMediaPlayer(Z)V
    .locals 3
    .param p1, "isDefault"    # Z

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-static {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    .local v0, "testDefault":Z
    if-ne p1, v0, :cond_0

    .line 404
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v1, v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 405
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->release()V

    .line 406
    iput-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .line 408
    :cond_0
    return-void
.end method

.method protected initializeControls()V
    .locals 2

    .prologue
    .line 220
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    .line 221
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceHolderDef:Landroid/view/SurfaceHolder;

    .line 223
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceHolderDef:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 224
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceHolderDef:Landroid/view/SurfaceHolder;

    new-instance v1, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;

    invoke-direct {v1, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;-><init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 244
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTextViewTime:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSeekBarProgress:Landroid/widget/SeekBar;

    .line 246
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSeekBarProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 247
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTextViewLength:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonToggleMessage:Landroid/widget/ImageButton;

    .line 249
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonToggleMessage:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAudio:Landroid/widget/ImageButton;

    .line 251
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAudio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchSubtitle:Landroid/widget/ImageButton;

    .line 253
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonPrevious:Landroid/widget/ImageButton;

    .line 255
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonTogglePlay:Landroid/widget/ImageButton;

    .line 257
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonNext:Landroid/widget/ImageButton;

    .line 259
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

    .line 261
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLinearLayoutControlBar:Landroid/widget/LinearLayout;

    .line 265
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mProgressBarPreparing:Landroid/widget/ProgressBar;

    .line 266
    return-void
.end method

.method protected initializeEvents()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;-><init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method public onBufferingUpdate(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 639
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 640
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 641
    const/16 v1, 0x4001

    iput v1, v0, Landroid/os/Message;->what:I

    .line 642
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 643
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 557
    iget-boolean v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    if-nez v7, :cond_0

    .line 604
    :goto_0
    :pswitch_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 560
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 574
    :pswitch_2
    const/4 v2, 0x0

    .line 575
    .local v2, "playing":Z
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v7, :cond_1

    .line 576
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v7}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->isPlaying()Z

    move-result v2

    .line 577
    :cond_1
    if-eqz v2, :cond_3

    .line 578
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v7, :cond_2

    .line 579
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v7}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->pause()V

    .line 584
    :cond_2
    :goto_1
    const-string v7, "btn_play_%d"

    new-array v8, v5, [Ljava/lang/Object;

    if-nez v2, :cond_4

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    .line 586
    .local v3, "resouce":I
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 581
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "resouce":I
    :cond_3
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v7, :cond_2

    .line 582
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v7}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->start()V

    goto :goto_1

    :cond_4
    move v5, v6

    .line 584
    goto :goto_2

    .line 591
    .end local v2    # "playing":Z
    :pswitch_3
    iget v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v7, v7, 0x6

    iput v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    .line 592
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v7, :cond_5

    .line 593
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    iget-object v8, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    iget v9, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    invoke-virtual {p0, v7, v8, v9}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->changeSurfaceSize(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;Landroid/view/SurfaceView;I)V

    .line 596
    :cond_5
    const-string v7, "btn_aspect_ratio_%d"

    new-array v5, v5, [Ljava/lang/Object;

    iget v8, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .restart local v1    # "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    .line 598
    .local v4, "resource":I
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x7f050005
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCompletion(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .prologue
    .line 648
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 649
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    const/16 v1, 0x4002

    iput v1, v0, Landroid/os/Message;->what:I

    .line 651
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->stop()V

    .line 653
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->release()V

    .line 654
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->finish()V

    .line 655
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 484
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 485
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 486
    .local v7, "in":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 487
    .local v6, "bundle":Landroid/os/Bundle;
    new-instance v0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    const-string v1, "file"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "type"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "offset"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "length"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;-><init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Ljava/lang/String;III)V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    .line 488
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 489
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->initializeEvents()V

    .line 490
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->setContentView(I)V

    .line 491
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->initializeControls()V

    .line 492
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mProgressBarPreparing:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    invoke-virtual {v0, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 494
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->Vmode:Ljava/lang/Boolean;

    .line 495
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 512
    return-void
.end method

.method public onError(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 659
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 660
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 661
    const/16 v1, 0x4003

    iput v1, v0, Landroid/os/Message;->what:I

    .line 662
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 663
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 664
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    const/4 v1, 0x1

    return v1
.end method

.method public onInfo(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 670
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 671
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 672
    const/16 v1, 0x4004

    iput v1, v0, Landroid/os/Message;->what:I

    .line 673
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 674
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 675
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 502
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 503
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->pause()V

    .line 504
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->stop()V

    .line 506
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 522
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->pause()V

    .line 524
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->stop()V

    .line 526
    :cond_0
    return-void
.end method

.method public onPrepared(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .prologue
    .line 681
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 682
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    const/16 v1, 0x4005

    iput v1, v0, Landroid/os/Message;->what:I

    .line 684
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 610
    return-void
.end method

.method public onProgressUpdate(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "time"    # I
    .param p3, "length"    # I

    .prologue
    .line 689
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 690
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    const/16 v1, 0x4006

    iput v1, v0, Landroid/os/Message;->what:I

    .line 692
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 693
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 694
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 695
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 517
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 615
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 531
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->pause()V

    .line 533
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->stop()V

    .line 535
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 620
    iget-boolean v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    if-nez v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 623
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_0
    iget-boolean v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mCanSeek:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLength:I

    if-lez v2, :cond_0

    .line 626
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 627
    .local v1, "position":I
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v2, v1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x7f050002
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    iget-boolean v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    if-nez v4, :cond_0

    .line 552
    :goto_0
    return v2

    .line 542
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 543
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 544
    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLinearLayoutControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    .line 545
    .local v1, "visibility":I
    if-eqz v1, :cond_1

    .line 546
    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLinearLayoutControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v3, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLinearLayoutControlBar:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "visibility":I
    :cond_2
    move v2, v3

    .line 552
    goto :goto_0
.end method

.method public onVideoSizeChangedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 700
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 701
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    const/16 v1, 0x4007

    iput v1, v0, Landroid/os/Message;->what:I

    .line 703
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 704
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 705
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method protected resetMediaPlayer()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 288
    const/4 v0, -0x1

    .line 290
    .local v0, "resource":I
    iput-boolean v3, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    .line 291
    iput v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mTime:I

    .line 292
    iput v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLength:I

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mCanSeek:Z

    .line 294
    iput v3, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mAspectRatio:I

    .line 297
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonToggleMessage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAudio:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonPrevious:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 310
    const-string v1, "btn_play_0"

    invoke-static {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 312
    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonNext:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mPlayInfo:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    const-string v1, "btn_aspect_ratio_0"

    invoke-static {v1}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mImageButtonSwitchAspectRatio:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 318
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mLinearLayoutControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    return-void

    :cond_1
    move v1, v3

    .line 306
    goto :goto_1

    :cond_2
    move v1, v3

    .line 312
    goto :goto_2

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected selectMediaPlayer(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "forceVlc"    # Z

    .prologue
    .line 323
    const/4 v2, 0x1

    .line 324
    .local v2, "useDefault":Z
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 325
    .local v1, "indexOfDot":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "extension":Ljava/lang/String;
    const-string v3, ".flv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".hlv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".m3u8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mkv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".rm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".rmvb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 333
    :cond_0
    const/4 v2, 0x0

    .line 336
    .end local v0    # "extension":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 337
    const/4 v2, 0x0

    .line 339
    :cond_2
    iget-object v4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mSurfaceViewDef:Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 340
    return-void

    .line 339
    :cond_3
    const/16 v3, 0x8

    goto :goto_0
.end method

.method protected startMediaPlayer()V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerLoaded:Z

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayer:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    invoke-virtual {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->start()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->mMediaPlayerStarted:Z

    goto :goto_0
.end method
