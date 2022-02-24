.class final Lcom/nibiru/lib/controller/j;
.super Ljava/lang/Thread;


# instance fields
.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private ay:Ljava/util/concurrent/BlockingQueue;

.field private dL:Ljava/util/List;

.field private dM:J

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/j;->p:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/nibiru/lib/controller/j;->dM:J

    iput-object p1, p0, Lcom/nibiru/lib/controller/j;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 2

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/j;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(II)V
    .locals 3

    iget-object v1, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/j;->p:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-direct {v1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/j;->p:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/j;->p:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/j;->dM:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/j;->ay:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    iget-object v2, p0, Lcom/nibiru/lib/controller/j;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    iget-object v3, p0, Lcom/nibiru/lib/controller/j;->dL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v2, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setIntervalTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/j;->dM:J

    return-void
.end method
