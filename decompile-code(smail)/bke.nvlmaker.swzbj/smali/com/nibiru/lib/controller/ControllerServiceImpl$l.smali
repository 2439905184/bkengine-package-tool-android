.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field private cM:Lcom/nibiru/lib/controller/StickEvent;

.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/controller/StickEvent;->setEventTime(J)V

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->u()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->w(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->w(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-interface {v0, v2, v3}, Lcom/nibiru/lib/controller/OnStickListener;->onControllerStickEvent(ILcom/nibiru/lib/controller/StickEvent;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->v()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->x(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnSimpleStickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->hasLeftStickChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->x(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnSimpleStickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnSimpleStickListener;->onLeftStickChanged(IFF)V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->hasRightStickChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->x(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnSimpleStickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;->cM:Lcom/nibiru/lib/controller/StickEvent;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnSimpleStickListener;->onRightStickChanged(IFF)V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
