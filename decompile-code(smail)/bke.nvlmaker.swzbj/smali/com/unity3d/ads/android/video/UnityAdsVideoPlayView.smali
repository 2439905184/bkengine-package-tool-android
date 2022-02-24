.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;
    }
.end annotation


# static fields
.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _bufferingCompledtedMillis:J

.field private _bufferingStartedMillis:J

.field private _bufferingText:Landroid/widget/RelativeLayout;

.field private _countDownText:Landroid/widget/RelativeLayout;

.field private _listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

.field private _muted:Z

.field private _pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

.field private _sentPositionEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _skipText:Landroid/widget/RelativeLayout;

.field private _skipTextView:Landroid/widget/TextView;

.field private _skipTimeInSeconds:J

.field private _stagingLayout:Landroid/widget/RelativeLayout;

.field private _stagingText:Landroid/widget/TextView;

.field private _timeLeftInSecondsText:Landroid/widget/TextView;

.field private _videoCompleted:Z

.field private _videoFileName:Ljava/lang/String;

.field private _videoPausedTimer:Ljava/util/Timer;

.field private _videoPlaybackErrors:Z

.field private _videoPlaybackStartedSent:Z

.field private _videoPlayheadPrepared:Z

.field private _videoStartedPlayingMillis:J

.field private _videoView:Landroid/widget/VideoView;

.field private _volumeBeforeMute:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackErrors:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    .line 77
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createView()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackErrors:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    .line 83
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createView()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackErrors:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    .line 71
    iput-object p2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 72
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->videoErrorOperations()V

    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideVideoPausedView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->startVideo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackStartedSent:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackStartedSent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)F
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    return v0
.end method

.method static synthetic access$1500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createAndAddSkipText()V

    return-void
.end method

.method static synthetic access$1800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->enableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$1900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->disableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createAndAddPausedView()V

    return-void
.end method

.method static synthetic access$2000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideSkipText()V

    return-void
.end method

.method static synthetic access$2100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->purgeVideoPausedTimer()V

    return-void
.end method

.method static synthetic access$2300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hasSkipDuration()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setBufferingTextVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    return-wide p1
.end method

.method static synthetic access$3302(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->storeVolume()V

    return-void
.end method

.method static synthetic access$900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    return v0
.end method

.method static synthetic access$902(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    return p1
.end method

.method private createAndAddMuteButton()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 387
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 388
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 389
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    new-instance v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 392
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-boolean v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    new-instance v2, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$9;

    invoke-direct {v2, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$9;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muteButton:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 418
    return-void
.end method

.method private createAndAddPausedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 421
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-nez v1, :cond_0

    .line 422
    new-instance v1, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 425
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v0, "pausedViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v0    # "pausedViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createAndAddSkipText()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, -0x2

    .line 446
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 447
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 448
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v0, "skipTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 451
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 452
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 453
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$10;

    invoke-direct {v2, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$10;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 463
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You can skip this video in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 467
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method private createView()V
    .locals 12

    .prologue
    .line 241
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v3

    .line 242
    .local v3, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->muteVideoSounds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_muted:Z

    .line 246
    :cond_0
    const-string v10, "Creating custom view"

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 248
    const/high16 v10, -0x1000000

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setBackgroundColor(I)V

    .line 250
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoCompleted:Z

    .line 251
    new-instance v10, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$4;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$4;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 261
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    const/16 v11, 0xbb9

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setId(I)V

    .line 262
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v9, "videoLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 264
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v10, v9}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v10, v9}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 267
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v11, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;

    invoke-direct {v11, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 274
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v11, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;

    invoke-direct {v11, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$6;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 289
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 290
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    const/16 v11, 0xc1c

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 291
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v0, "bufferingTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    const/4 v10, 0x3

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 295
    const/4 v10, 0x3

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 296
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 299
    .local v1, "bufferingTextView":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    const-string v10, "Buffering..."

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/16 v10, 0xc1f

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setId(I)V

    .line 303
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 306
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 307
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    const/16 v11, 0xbba

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 308
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v2, "countDownParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    const/4 v10, 0x3

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 312
    const/4 v10, 0x3

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 313
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    const-string v10, "This video ends in "

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const/16 v10, 0x2711

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setId(I)V

    .line 320
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 321
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const-string v11, "00"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const/16 v11, 0x2712

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setId(I)V

    .line 324
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v6, "tv2params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    const/16 v11, 0x2711

    invoke-virtual {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 326
    const/4 v10, 0x1

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 327
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v7, "tv3":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    const-string v10, "seconds."

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v8, "tv3params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    const/16 v11, 0x2712

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 334
    const/4 v10, 0x4

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 335
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 343
    sget-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 344
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    .line 345
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v4, "stagingParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xe

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    const/16 v10, 0xf

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 348
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    .line 351
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    const/high16 v11, -0x10000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 353
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    const-string v11, "INTERNAL UNITY TEST BUILD\nDO NOT USE IN PRODUCTION"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 359
    .end local v4    # "stagingParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hasSkipDuration()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSkipDuration()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTimeInSeconds:J

    .line 361
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createAndAddSkipText()V

    .line 364
    :cond_2
    new-instance v10, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;

    invoke-direct {v10, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v10, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;

    invoke-direct {v10, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v10}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 383
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createAndAddMuteButton()V

    .line 384
    return-void
.end method

.method private disableSkippingFromSkipText()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 496
    :cond_0
    return-void
.end method

.method private enableSkippingFromSkipText()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 473
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 476
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const v4, 0x1ffffff

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 477
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 478
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const-string v4, "Skip video"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 483
    .local v0, "skipHitArea":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 484
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 485
    .local v2, "textHeight":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 486
    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 487
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 488
    .local v1, "td":Landroid/view/TouchDelegate;
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 490
    .end local v0    # "skipHitArea":Landroid/graphics/Rect;
    .end local v1    # "td":Landroid/view/TouchDelegate;
    .end local v2    # "textHeight":I
    :cond_0
    return-void
.end method

.method private getSkipDuration()J
    .locals 4

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hasSkipDuration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 439
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    .line 442
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private hasSkipDuration()Z
    .locals 6

    .prologue
    .line 432
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 433
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideSkipText()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->disableSkippingFromSkipText()V

    .line 513
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    :cond_0
    return-void
.end method

.method private hideTimeRemainingLabel()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 501
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 503
    :cond_0
    return-void
.end method

.method private hideVideoPausedView()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_pausedView:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 508
    :cond_0
    return-void
.end method

.method private purgeVideoPausedTimer()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 235
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 238
    :cond_0
    return-void
.end method

.method private setBufferingTextVisibility(IZZ)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "hasSkip"    # Z
    .param p3, "canSkip"    # Z

    .prologue
    .line 518
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$11;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 218
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 228
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 230
    :cond_0
    return-void
.end method

.method private storeVolume()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 194
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 195
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 196
    .local v1, "curVol":I
    const/4 v2, 0x0

    .line 198
    .local v2, "maxVol":I
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 200
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 201
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v2

    div-float v3, v4, v5

    .line 202
    .local v3, "parts":F
    int-to-float v4, v1

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_volumeBeforeMute:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 205
    .end local v3    # "parts":F
    :cond_0
    return-void
.end method

.method private videoErrorOperations()V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackErrors:Z

    .line 209
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->purgeVideoPausedTimer()V

    .line 210
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackError()V

    .line 213
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoError(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 214
    return-void
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideSkipText()V

    .line 144
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideTimeRemainingLabel()V

    .line 145
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideVideoPausedView()V

    .line 146
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->purgeVideoPausedTimer()V

    .line 148
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 149
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 150
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 151
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeAllViews()V

    .line 155
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 158
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 160
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 161
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 163
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingText:Landroid/widget/TextView;

    .line 164
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_stagingLayout:Landroid/widget/RelativeLayout;

    .line 165
    return-void
.end method

.method public getBufferingDuration()J
    .locals 4

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    .line 172
    :cond_0
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingCompledtedMillis:J

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "timeUntilBackButton":I
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 179
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 181
    if-gez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    :cond_0
    move v2, v1

    .line 188
    :goto_0
    return v2

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hideVideo()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->purgeVideoPausedTimer()V

    .line 135
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 576
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 577
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideVideoPausedView()V

    .line 578
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v8, 0x0

    .line 546
    const-wide/16 v2, 0x0

    .line 547
    .local v2, "bufferingDuration":J
    const/4 v5, 0x0

    .line 549
    .local v5, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 571
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 551
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 553
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v4

    .line 554
    .local v4, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    .line 555
    .local v0, "allowBackButtonSkip":J
    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    cmp-long v6, v0, v8

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v6

    if-nez v6, :cond_1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 558
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getBufferingDuration()J

    move-result-wide v2

    .line 559
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 560
    .restart local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "bufferingDuration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v6, "eventValue"

    const-string v7, "back"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v6, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoAbort(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 565
    :cond_1
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v6, :cond_2

    .line 566
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v6, p0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 568
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->purgeVideoPausedTimer()V

    .line 121
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$2;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$2;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlayheadPrepared:Z

    .line 90
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing video from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;

    invoke-direct {v2, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-boolean v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoPlaybackErrors:Z

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->_bufferingStartedMillis:J

    .line 114
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->startVideo()V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->videoErrorOperations()V

    goto :goto_0
.end method
