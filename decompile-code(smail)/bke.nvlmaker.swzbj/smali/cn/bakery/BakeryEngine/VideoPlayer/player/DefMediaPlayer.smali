.class public Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;
.super Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
.source "DefMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DANMAKU-DefMediaPlayer"

.field protected static sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBufferingUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

.field private mOnProgressUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

.field private mOnVideoSizeChangedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;-><init>()V

    .line 23
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    .line 26
    new-instance v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;

    invoke-direct {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;-><init>(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimerTask:Ljava/util/TimerTask;

    .line 40
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

    .line 41
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnCompletionListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

    .line 42
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnErrorListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

    .line 43
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnInfoListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

    .line 44
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnPreparedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

    .line 45
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnProgressUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    .line 46
    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnVideoSizeChangedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 56
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 57
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 60
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 61
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 62
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnProgressUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    return-object v0
.end method

.method public static getInstance()Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-direct {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;-><init>()V

    sput-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    .line 51
    :cond_0
    sget-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getAudioTrack()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, -0x1

    return v0
.end method

.method public getAudioTrackCount()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 69
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DANMAKU-DefMediaPlayer"

    const-string v3, "getCurrentPosition()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 78
    const/4 v1, -0x1

    .line 80
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DANMAKU-DefMediaPlayer"

    const-string v3, "getDuration()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubtitleTrack()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, -0x1

    return v0
.end method

.method public getSubtitleTrackCount()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoHeight()I
    .locals 4

    .prologue
    .line 89
    const/4 v1, -0x1

    .line 91
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DANMAKU-DefMediaPlayer"

    const-string v3, "getVideoHeight()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 4

    .prologue
    .line 100
    const/4 v1, -0x1

    .line 102
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DANMAKU-DefMediaPlayer"

    const-string v3, "getVideoWidth()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isLooping()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "isLooping()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "isPlaying()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 340
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnCompletionListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnCompletionListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;->onCompletion(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnErrorListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnErrorListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;->onError(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)Z

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnInfoListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnInfoListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;->onInfo(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 363
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnPreparedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnPreparedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;->onPrepared(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;)V

    .line 366
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 371
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnVideoSizeChangedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnVideoSizeChangedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p0, p2, p3}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChangedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)V

    .line 379
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 3

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "prepareAsync()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->sInstance:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "release()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->stop()V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "reset()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "seekTo()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioTrack(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 312
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 203
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v6

    .line 205
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DANMAKU-DefMediaPlayer"

    const-string v1, "setDataSource()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "setDataSource()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "setDisplay()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 3
    .param p1, "looping"    # Z

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "setLooping()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;

    .line 231
    return-void
.end method

.method public setOnCompletionListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

    .prologue
    .line 236
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnCompletionListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;

    .line 237
    return-void
.end method

.method public setOnErrorListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnErrorListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;

    .line 242
    return-void
.end method

.method public setOnInfoListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnInfoListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;

    .line 247
    return-void
.end method

.method public setOnPreparedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

    .prologue
    .line 251
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnPreparedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;

    .line 252
    return-void
.end method

.method public setOnProgressUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnProgressUpdateListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    .line 258
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 263
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mOnVideoSizeChangedListener:Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;

    .line 264
    return-void
.end method

.method public setSubtitleTrack(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 329
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 270
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 275
    :goto_0
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 279
    :goto_1
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v6

    .line 277
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DANMAKU-DefMediaPlayer"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 286
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mTimer:Ljava/util/Timer;

    .line 288
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 289
    iget-object v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DANMAKU-DefMediaPlayer"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
