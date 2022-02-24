.class final Lcom/nibiru/lib/controller/StickSimServiceHandler$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/StickSimServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->b(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c(Lcom/nibiru/lib/controller/StickSimServiceHandler;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->e(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    move-result-object v3

    iget v4, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v3, v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->f(Lcom/nibiru/lib/controller/StickSimServiceHandler;)I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    new-instance v4, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v5, 0x0

    iget v6, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {v4, v5, v6, v7}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-virtual {v3, v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MSG UNIT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iget v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->e(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    move-result-object v0

    iget-object v4, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->f(Lcom/nibiru/lib/controller/StickSimServiceHandler;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
