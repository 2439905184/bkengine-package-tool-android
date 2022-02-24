.class final Lcom/nibiru/lib/controller/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic aX:Lcom/nibiru/lib/controller/c;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/c$a;->aX:Lcom/nibiru/lib/controller/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/c$a;->aX:Lcom/nibiru/lib/controller/c;

    invoke-static {v0}, Lcom/nibiru/lib/controller/c;->a(Lcom/nibiru/lib/controller/c;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    div-int/lit16 v1, v0, 0x3e8

    iget v0, p1, Landroid/os/Message;->what:I

    rem-int/lit16 v2, v0, 0x3e8

    iget-object v0, p0, Lcom/nibiru/lib/controller/c$a;->aX:Lcom/nibiru/lib/controller/c;

    invoke-static {v0}, Lcom/nibiru/lib/controller/c;->b(Lcom/nibiru/lib/controller/c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/c$b;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/nibiru/lib/controller/c$b;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v0, Lcom/nibiru/lib/controller/c$b;->p:Z

    if-nez v0, :cond_2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/c$a;->aX:Lcom/nibiru/lib/controller/c;

    invoke-static {v1}, Lcom/nibiru/lib/controller/c;->c(Lcom/nibiru/lib/controller/c;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c$a;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/c$a;->aX:Lcom/nibiru/lib/controller/c;

    invoke-static {v1}, Lcom/nibiru/lib/controller/c;->d(Lcom/nibiru/lib/controller/c;)J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/nibiru/lib/controller/c$a;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
