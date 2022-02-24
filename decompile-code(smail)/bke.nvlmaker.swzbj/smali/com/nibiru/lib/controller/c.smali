.class final Lcom/nibiru/lib/controller/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/ContinuesKeyService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/c$a;,
        Lcom/nibiru/lib/controller/c$b;
    }
.end annotation


# instance fields
.field private K:Z

.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private aS:Z

.field private aT:Landroid/util/SparseIntArray;

.field private aU:Landroid/util/SparseArray;

.field private final aV:Landroid/os/HandlerThread;

.field private aW:Lcom/nibiru/lib/controller/c$a;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/c;->aS:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "continues-key"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/c;->aV:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/nibiru/lib/controller/c;->time:J

    iput-object p1, p0, Lcom/nibiru/lib/controller/c;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/c;->K:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/c;->aS:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    return v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/c;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/c;)Lcom/nibiru/lib/controller/ControllerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/c;->time:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/c$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/c$b;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/c$b;-><init>(Lcom/nibiru/lib/controller/c;)V

    iput-boolean v5, v0, Lcom/nibiru/lib/controller/c$b;->p:Z

    iget-object v4, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2
    iget-object v4, v0, Lcom/nibiru/lib/controller/c$b;->lock:Ljava/lang/Object;

    monitor-enter v4

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v2

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/nibiru/lib/controller/c$b;->p:Z

    if-nez v3, :cond_4

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/c$b;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/c$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/c$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/c;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/c$a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    monitor-exit v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    invoke-virtual {v2, v1}, Lcom/nibiru/lib/controller/c$a;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nibiru/lib/controller/c$b;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final exit()V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/c;->unregisterContinuesKeyAll()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final pause()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/c;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/c;->aS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    return-void
.end method

.method public final registerContinuesDirectionKey()V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c;->registerContinuesKey(I)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c;->registerContinuesKey(I)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c;->registerContinuesKey(I)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/c;->registerContinuesKey(I)V

    return-void
.end method

.method public final registerContinuesKey(I)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/c$a;

    iget-object v1, p0, Lcom/nibiru/lib/controller/c;->aV:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/controller/c$a;-><init>(Lcom/nibiru/lib/controller/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public final registerContinuesKeyAll()V
    .locals 4

    sget-object v1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->GameKeys:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/nibiru/lib/controller/c;->registerContinuesKey(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final resume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPreEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/c;->aS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/c;->aS:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/c;->K:Z

    return-void
.end method

.method public final setIntervalTime(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide p1, p0, Lcom/nibiru/lib/controller/c;->time:J

    goto :goto_0
.end method

.method public final stop(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aU:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final unregisterContinuesKey(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/c;->unregisterContinuesKeyAll()V

    :cond_0
    return-void
.end method

.method public final unregisterContinuesKeyAll()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/c;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/c;->aW:Lcom/nibiru/lib/controller/c$a;

    return-void
.end method
