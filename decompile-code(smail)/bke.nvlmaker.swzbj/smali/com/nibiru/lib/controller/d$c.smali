.class final Lcom/nibiru/lib/controller/d$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic bi:Lcom/nibiru/lib/controller/d;

.field private bj:J


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/d;)V
    .locals 2

    iput-object p1, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/d$c;->bj:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-static {v0}, Lcom/nibiru/lib/controller/d;->a(Lcom/nibiru/lib/controller/d;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOOPER IS CLOSE"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    iget-object v0, v0, Lcom/nibiru/lib/controller/d;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/d;->isServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/d;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/d;->j()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-static {v0}, Lcom/nibiru/lib/controller/d;->b(Lcom/nibiru/lib/controller/d;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-static {v0}, Lcom/nibiru/lib/controller/d;->b(Lcom/nibiru/lib/controller/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v0, 0x1e

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/d$a;

    iget-object v1, v0, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getPlayerOrder()I

    move-result v4

    iget-object v1, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-virtual {v1, v4}, Lcom/nibiru/lib/controller/d;->getKeyStateMap(I)[I

    move-result-object v5

    sget-object v6, Lcom/nibiru/lib/controller/ControllerKeyEvent;->GameKeys:[I

    array-length v7, v6

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v7, :cond_8

    iput-object v5, v0, Lcom/nibiru/lib/controller/d$a;->bf:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-virtual {v1, v4}, Lcom/nibiru/lib/controller/d;->getStickState(I)Lcom/nibiru/lib/controller/StickEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, v0, Lcom/nibiru/lib/controller/d$a;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/nibiru/lib/controller/d$a;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    invoke-virtual {v1, v4}, Lcom/nibiru/lib/controller/StickEvent;->isEquals(Lcom/nibiru/lib/controller/StickEvent;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-static {v4}, Lcom/nibiru/lib/controller/d;->c(Lcom/nibiru/lib/controller/d;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/nibiru/lib/controller/d$d;

    iget-object v6, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-direct {v5, v6, v1}, Lcom/nibiru/lib/controller/d$d;-><init>(Lcom/nibiru/lib/controller/d;Lcom/nibiru/lib/controller/StickEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iput-object v1, v0, Lcom/nibiru/lib/controller/d$a;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8
    :try_start_5
    aget v8, v6, v1

    iget-object v9, v0, Lcom/nibiru/lib/controller/d$a;->bf:[I

    aget v9, v9, v8

    aget v10, v5, v8

    if-eq v9, v10, :cond_9

    new-instance v9, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    aget v10, v5, v8

    invoke-direct {v9, v10, v8, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    iget-object v8, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-static {v8}, Lcom/nibiru/lib/controller/d;->c(Lcom/nibiru/lib/controller/d;)Landroid/os/Handler;

    move-result-object v8

    new-instance v10, Lcom/nibiru/lib/controller/d$b;

    iget-object v11, p0, Lcom/nibiru/lib/controller/d$c;->bi:Lcom/nibiru/lib/controller/d;

    invoke-direct {v10, v11, v9}, Lcom/nibiru/lib/controller/d$b;-><init>(Lcom/nibiru/lib/controller/d;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
