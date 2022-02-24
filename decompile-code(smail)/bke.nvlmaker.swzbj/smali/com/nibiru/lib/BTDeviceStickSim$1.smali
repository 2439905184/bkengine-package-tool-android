.class final Lcom/nibiru/lib/BTDeviceStickSim$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/BTDeviceStickSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic m:Lcom/nibiru/lib/BTDeviceStickSim;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/BTDeviceStickSim;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->a(Lcom/nibiru/lib/BTDeviceStickSim;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->b(Lcom/nibiru/lib/BTDeviceStickSim;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->c(Lcom/nibiru/lib/BTDeviceStickSim;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/BTDeviceStickSim$a;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iput-object v1, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x400

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v3}, Lcom/nibiru/lib/BTDeviceStickSim;->d(Lcom/nibiru/lib/BTDeviceStickSim;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v1}, Lcom/nibiru/lib/BTDeviceStickSim;->e(Lcom/nibiru/lib/BTDeviceStickSim;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    new-instance v3, Landroid/view/KeyEvent;

    iget-object v4, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    invoke-direct {v3, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->n:I

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v3}, Lcom/nibiru/lib/BTDeviceStickSim;->f(Lcom/nibiru/lib/BTDeviceStickSim;)Landroid/os/Handler;

    move-result-object v3

    iget v0, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->n:I

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->f(Lcom/nibiru/lib/BTDeviceStickSim;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/nibiru/lib/BTDeviceStickSim$1;->m:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-static {v3}, Lcom/nibiru/lib/BTDeviceStickSim;->g(Lcom/nibiru/lib/BTDeviceStickSim;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
