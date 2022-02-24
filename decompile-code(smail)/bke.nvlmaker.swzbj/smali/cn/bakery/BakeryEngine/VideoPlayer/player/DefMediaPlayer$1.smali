.class Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;
.super Ljava/util/TimerTask;
.source "DefMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;


# direct methods
.method constructor <init>(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 29
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$100(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 33
    .local v1, "time":I
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 34
    .local v0, "length":I
    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;->access$100(Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/player/DefMediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer$OnProgressUpdateListener;->onProgressUpdate(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;II)V

    goto :goto_0
.end method
