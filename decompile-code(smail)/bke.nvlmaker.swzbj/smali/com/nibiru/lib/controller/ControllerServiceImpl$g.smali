.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field private cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

.field private cH:Z

.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cH:Z

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerKeyEvent;Z)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cH:Z

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cH:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->p()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->p(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->setEventTime(J)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bu:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-gt v0, v2, :cond_2

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I

    move-result v0

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    if-eq v0, v3, :cond_1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit v2

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bz:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    aget v0, v0, v2

    if-lez v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    new-instance v2, Lcom/nibiru/lib/controller/j;

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v2, v3}, Lcom/nibiru/lib/controller/j;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/j;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->start()V

    :cond_5
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/controller/j;->b(II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->p(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnKeyListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnKeyListener;->onControllerKeyDown(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/controller/j;->a(II)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I

    move-result v0

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->p(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnKeyListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnKeyListener;->onControllerKeyDown(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :cond_9
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    aget v0, v0, v2

    if-lez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bA:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cH:Z

    if-nez v0, :cond_c

    monitor-exit v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->p(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnKeyListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnKeyListener;->onControllerKeyUp(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method
