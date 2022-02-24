.class public abstract Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
.super Ljava/lang/Object;
.source "AbsMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;,
        Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DANMAKU-AbsMediaPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method protected static getDefMediaPlayer()Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .locals 2

    .prologue
    .line 114
    const-string v0, "DANMAKU-AbsMediaPlayer"

    const-string v1, "using DefMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->getInstance()Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaPlayer(Z)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    .locals 1
    .param p0, "useDefault"    # Z

    .prologue
    .line 119
    invoke-static {}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->getDefMediaPlayer()Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAudioTrack()I
.end method

.method public abstract getAudioTrackCount()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getSubtitleTrack()I
.end method

.method public abstract getSubtitleTrackCount()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAudioTrack(I)V
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;JJ)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnProgressUpdateListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setSubtitleTrack(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
