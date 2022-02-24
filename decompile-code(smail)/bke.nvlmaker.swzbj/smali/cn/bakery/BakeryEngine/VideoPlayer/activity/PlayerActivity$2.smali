.class Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$400(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 235
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v2}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$1200(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->createMediaPlayer(ZLandroid/view/SurfaceHolder;)V

    .line 229
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 239
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$2;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->destroyMediaPlayer(Z)V

    .line 240
    return-void
.end method
