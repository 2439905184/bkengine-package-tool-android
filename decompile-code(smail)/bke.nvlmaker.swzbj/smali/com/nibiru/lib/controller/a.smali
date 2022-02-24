.class final Lcom/nibiru/lib/controller/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/CombKeyService;
.implements Lcom/nibiru/lib/controller/ICombKeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/a$a;,
        Lcom/nibiru/lib/controller/a$b;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private aE:Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

.field private aF:Ljava/util/Map;

.field private aG:Landroid/util/SparseArray;

.field private aH:Landroid/util/SparseArray;

.field private aI:Ljava/util/concurrent/ScheduledExecutorService;

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/a;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/a;->time:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "combkey-scheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->k:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/nibiru/lib/controller/a$b;

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/controller/a$b;-><init>(Lcom/nibiru/lib/controller/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/a;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/a;)Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aE:Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method


# virtual methods
.method public final a(I[I)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    invoke-direct {v0, p1, p0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;-><init>(ILcom/nibiru/lib/controller/ICombKeyManager;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->handleKeyState([I)V

    return-void
.end method

.method public final cancelSingleKey(II)V
    .locals 2

    mul-int/lit16 v0, p1, 0x3e8

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final clearCombKey()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/nibiru/lib/controller/a;->h()V

    return-void
.end method

.method public final exit()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/nibiru/lib/controller/a;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-void
.end method

.method public final getCombKeyList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getCombKeyList(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public final handleCombKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    invoke-direct {v0, v1, p0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;-><init>(ILcom/nibiru/lib/controller/ICombKeyManager;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->handleCombKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aE:Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final registerCombKey(Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    iget-object v1, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->getCombKeys()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aI:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/nibiru/lib/controller/a$1;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/a$1;-><init>(Lcom/nibiru/lib/controller/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void

    :cond_1
    aget v4, v2, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final registerCombKeys([Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/nibiru/lib/controller/a;->registerCombKey(Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final removeCombKey(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/nibiru/lib/controller/a;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    if-nez v0, :cond_1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->getCombKeys()[I

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/nibiru/lib/controller/a;->h()V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :cond_3
    aget v6, v4, v2

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->aG:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final sendCombKey(IILcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 7

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/nibiru/lib/controller/a$a;

    iget-object v3, p3, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    move-object v1, p0

    move v2, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nibiru/lib/controller/a$a;-><init>(Lcom/nibiru/lib/controller/a;ILjava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendDelayedSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 4

    iget-wide v0, p0, Lcom/nibiru/lib/controller/a;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nibiru/lib/controller/a;->sendSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nibiru/lib/controller/a;->l:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/a;->time:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    return-void
.end method

.method public final setCombKeyListener(Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/a;->aE:Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->enable()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->disable()V

    goto :goto_1
.end method

.method public final setIntervalTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/a;->time:J

    return-void
.end method

.method public final stop(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a;->aH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
