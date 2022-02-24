.class Lcom/nibiru/lib/controller/ControllerServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/IControllerInternalService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/ControllerServiceImpl$a;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$b;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$c;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$d;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$e;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$f;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$g;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$h;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$i;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$j;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$k;,
        Lcom/nibiru/lib/controller/ControllerServiceImpl$l;
    }
.end annotation


# static fields
.field private static final bX:Ljava/lang/Object;

.field private static final bY:Ljava/lang/Object;

.field private static final bZ:Ljava/lang/Object;

.field private static final ca:Ljava/lang/Object;

.field private static final cb:Ljava/lang/Object;

.field private static final cc:Ljava/lang/Object;

.field private static final cd:Ljava/lang/Object;

.field private static final ce:Ljava/lang/Object;

.field private static ch:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field K:Z

.field private L:Z

.field private O:Landroid/content/ServiceConnection;

.field bA:Z

.field bB:Z

.field bC:Z

.field bD:Z

.field bE:Lcom/nibiru/lib/controller/h;

.field private bF:[I

.field private bG:I

.field private bH:Z

.field private bI:Ljava/util/List;

.field private bJ:Lcom/nibiru/lib/controller/OnKeyListener;

.field private bK:Lcom/nibiru/lib/controller/OnStickListener;

.field private bL:Lcom/nibiru/lib/controller/OnSimpleStickListener;

.field private bM:Lcom/nibiru/lib/controller/OnAccListener;

.field private bN:Lcom/nibiru/lib/controller/OnGyroListener;

.field private bO:Lcom/nibiru/lib/controller/OnStateListener;

.field private bP:Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

.field private bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

.field private bR:Lcom/nibiru/lib/controller/OnReportListener;

.field private bS:Lcom/nibiru/lib/controller/OnInputResultListener;

.field private bT:Lcom/nibiru/lib/controller/OnVirutalServiceListener;

.field private bU:Lcom/nibiru/lib/controller/OnMotionSenseListener;

.field private bV:Landroid/content/BroadcastReceiver;

.field private bW:I

.field protected bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

.field private bm:Lcom/nibiru/lib/controller/a;

.field private bn:Lcom/nibiru/lib/controller/l;

.field private bo:Lcom/nibiru/lib/controller/c;

.field protected bp:Lcom/nibiru/lib/controller/e;

.field private bq:Lcom/nibiru/lib/controller/f;

.field private br:Lcom/nibiru/lib/controller/i;

.field bs:Z

.field bt:Z

.field bu:Z

.field private bv:Z

.field bw:Z

.field private bx:Z

.field by:Z

.field bz:Z

.field private cf:Z

.field private cg:Lcom/nibiru/lib/controller/m;

.field private ci:Landroid/os/Handler;

.field private cj:Landroid/os/HandlerThread;

.field private ck:Lcom/nibiru/lib/controller/j;

.field cl:Lcom/nibiru/lib/controller/k;

.field private cm:Z

.field private cn:Z

.field private co:Z

.field cp:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected q:Lcom/nibiru/lib/controller/IBluexService;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bX:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bZ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ca:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cb:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cd:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ce:Ljava/lang/Object;

    const/4 v0, -0x1

    sput v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ch:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->O:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    new-instance v0, Lcom/nibiru/lib/controller/a;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/a;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    new-instance v0, Lcom/nibiru/lib/controller/l;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/l;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    new-instance v0, Lcom/nibiru/lib/controller/c;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/c;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bs:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bu:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bv:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bw:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bx:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->by:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bz:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bA:Z

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bB:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bC:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bD:Z

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    const/16 v0, 0x61

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bG:I

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bH:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bW:I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ci:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cn:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->co:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cp:Z

    new-instance v0, Lcom/nibiru/lib/controller/a;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/a;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    new-instance v0, Lcom/nibiru/lib/controller/l;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/l;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    new-instance v0, Lcom/nibiru/lib/controller/i;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/i;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    new-instance v0, Lcom/nibiru/lib/controller/k;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/k;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bs:Z

    sput-boolean v0, Lcom/nibiru/lib/controller/GlobalLog;->DEBUG:Z

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    return-object v0
.end method

.method private a(Lcom/nibiru/lib/controller/AccEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$a;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$a;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/AccEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl;I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bW:I

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/j;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl;[Lcom/nibiru/lib/controller/AccEvent;)V
    .locals 6

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bZ:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    aget-object v3, p1, v0

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/AccEvent;->getPlayerOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/AccEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl;[Lcom/nibiru/lib/controller/GyroEvent;)V
    .locals 6

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bZ:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    aget-object v3, p1, v0

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/GyroEvent;->getPlayerOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/GyroEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/nibiru/lib/controller/GyroEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/GyroEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$l;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/StickEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/m;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cg:Lcom/nibiru/lib/controller/m;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ch:I

    return-void
.end method

.method private static b(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "controller-work-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ci:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.nibiru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bP:Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

    return-object v0
.end method

.method static synthetic g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ci:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/a;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    return-object v0
.end method

.method static synthetic i(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnInputResultListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bS:Lcom/nibiru/lib/controller/OnInputResultListener;

    return-object v0
.end method

.method static synthetic j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bT:Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    return-object v0
.end method

.method static synthetic k(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cn:Z

    return v0
.end method

.method static synthetic l(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bG:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    sget v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ch:I

    return v0
.end method

.method static synthetic n(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStateListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bO:Lcom/nibiru/lib/controller/OnStateListener;

    return-object v0
.end method

.method static synthetic o(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnReportListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bR:Lcom/nibiru/lib/controller/OnReportListener;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic p(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bJ:Lcom/nibiru/lib/controller/OnKeyListener;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bY:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bW:I

    return v0
.end method

.method static synthetic q()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ca:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic r(Lcom/nibiru/lib/controller/ControllerServiceImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    return-object v0
.end method

.method static synthetic s(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/j;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cb:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic t(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnAccListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bM:Lcom/nibiru/lib/controller/OnAccListener;

    return-object v0
.end method

.method static synthetic t()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ce:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic u(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnGyroListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bN:Lcom/nibiru/lib/controller/OnGyroListener;

    return-object v0
.end method

.method static synthetic u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bX:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic v(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnMotionSenseListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bU:Lcom/nibiru/lib/controller/OnMotionSenseListener;

    return-object v0
.end method

.method static synthetic v()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cc:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic w(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStickListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bK:Lcom/nibiru/lib/controller/OnStickListener;

    return-object v0
.end method

.method static synthetic x(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnSimpleStickListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bL:Lcom/nibiru/lib/controller/OnSimpleStickListener;

    return-object v0
.end method

.method static synthetic y(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/l;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    return-object v0
.end method

.method static synthetic z(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/c;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    return-object v0
.end method


# virtual methods
.method final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/k;->getKeyState2(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Lcom/nibiru/lib/controller/AccEvent;->getDefaultAccEvent(I)Lcom/nibiru/lib/controller/AccEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/AccEvent;)V

    invoke-static {p1}, Lcom/nibiru/lib/controller/GyroEvent;->getDefaultGyroEvent(I)Lcom/nibiru/lib/controller/GyroEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/GyroEvent;)V

    invoke-static {p1}, Lcom/nibiru/lib/controller/StickEvent;->getDefaultStickEvent(I)Lcom/nibiru/lib/controller/StickEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/StickEvent;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    sget-object v3, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Lcom/nibiru/lib/controller/k;->en:[I

    aget v3, v4, v3

    and-int/2addr v3, v1

    if-lez v3, :cond_2

    new-instance v3, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-virtual {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v2, v3}, Lcom/nibiru/lib/controller/k;->e(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(IILcom/nibiru/lib/BTDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ci:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ci:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;IILcom/nibiru/lib/BTDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_1

    const-string v0, "ControllerService"

    const-string v1, "Context is null when invoking showDeviceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    :cond_2
    const-string v0, "pkg"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p2}, Lcom/nibiru/lib/controller/IBluexService;->openDeviceManagerUI(Landroid/os/Bundle;)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    const-string v0, "SERVICE START DEVICE MANAGER UI"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    if-nez v1, :cond_0

    const-string v0, "NOT SUPPORT REMOTE START UI, USE LOCAL UI"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nibiru.view.devicelist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/app/Activity;

    const v1, 0xffff

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "player"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "raw"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "eventTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v4, Lcom/nibiru/lib/controller/MotionSenseEvent;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/nibiru/lib/controller/MotionSenseEvent;-><init>(IJ[B)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;

    invoke-direct {v1, p0, v4}, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/MotionSenseEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, v5}, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerKeyEvent;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a([Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 8

    const-wide v6, 0x3fc3333333333333L    # 0.15

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/nibiru/lib/controller/k;->a(ILcom/nibiru/lib/controller/StickEvent;)V

    iget-boolean v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->isAutoCursorMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->hasRightStickChanged()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v6

    if-gez v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/e;->z()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3, v2}, Lcom/nibiru/lib/controller/e;->b(Lcom/nibiru/lib/controller/StickEvent;)V

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->x()Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    invoke-virtual {v4, v3}, Lcom/nibiru/lib/controller/i;->c(Landroid/view/InputEvent;)V

    :cond_6
    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->getEventMode()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/e;->isAutoCursorMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->hasRightStickChanged()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_7
    iget-boolean v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bv:Z

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/StickEvent;->isHatValue()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_8
    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/l;->isStart()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-virtual {v3, v2}, Lcom/nibiru/lib/controller/l;->handleStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V

    :cond_9
    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-static {}, Lcom/nibiru/lib/controller/l;->isHideStickEvent()Z

    invoke-direct {p0, v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/StickEvent;)V

    goto :goto_1
.end method

.method public a(Landroid/view/InputEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bw:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    new-instance v2, Lcom/nibiru/lib/controller/NibiruInputEvent;

    invoke-direct {v2, p1}, Lcom/nibiru/lib/controller/NibiruInputEvent;-><init>(Landroid/view/InputEvent;)V

    invoke-interface {v1, v2}, Lcom/nibiru/lib/controller/IBluexService;->sendInputEvent(Lcom/nibiru/lib/controller/NibiruInputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final b(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->E()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->D()V

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/k;->e(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bC:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_7

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->setKeyCode(I)V

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_5
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bH:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isSystemKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent()Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/i;->c(Landroid/view/InputEvent;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_4

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->setKeyCode(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isArrow()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->getMouseStick()I

    move-result v0

    if-eq v0, v3, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/e;->c(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Landroid/view/InputEvent;

    move-result-object v1

    if-eqz v1, :cond_f

    instance-of v0, v1, Landroid/view/MotionEvent;

    if-nez v0, :cond_a

    instance-of v0, v1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-lez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/i;->c(Landroid/view/InputEvent;)V

    :cond_b
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->getEventMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_c
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/f;->isDpadMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/f;->d(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/controller/i;->c(Landroid/view/InputEvent;)V

    :cond_d
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/f;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/c;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->getEventMode()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/a;->handleCombKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto/16 :goto_0
.end method

.method protected final b([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 4

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bZ:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public checkNibiruInstall(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "why give a null context?"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-direct {v1, p1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->isNibiruInstall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->checkInstallNibiru()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configureService(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->configure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connectVirtualService(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->connectVirutalService(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public debug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bs:Z

    return-void
.end method

.method public deleteDevice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->deleteDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disconnectVirtualService(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->disconnectVirtualService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableGlobalControl(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/nibiru/lib/controller/IBluexService;->enableGlobalControll(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    return-object v0
.end method

.method public getCursorService()Lcom/nibiru/lib/controller/CursorService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/e;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/e;-><init>(Lcom/nibiru/lib/controller/ControllerService;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    return-object v0
.end method

.method public getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "no register controller service"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1}, Lcom/nibiru/lib/controller/IBluexService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/BTDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerDevice;-><init>(Lcom/nibiru/lib/BTDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "no register controller service"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getDeviceList()[Lcom/nibiru/lib/BTDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    :cond_3
    if-eqz v2, :cond_4

    array-length v1, v2

    if-nez v1, :cond_5

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    new-instance v5, Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-direct {v5, v4}, Lcom/nibiru/lib/controller/ControllerDevice;-><init>(Lcom/nibiru/lib/BTDevice;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDpadService()Lcom/nibiru/lib/controller/DpadService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/f;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/f;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    return-object v0
.end method

.method public getDriverVersion()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->getServiceVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getKeyState(II)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->getKeyState(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getKeyState2(I)I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/k;->getKeyState2(I)I

    move-result v0

    return v0
.end method

.method public getKeyStateMap(I)[I
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x100

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    new-array v0, v2, [I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->getKeyStateMap(I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eq v1, v2, :cond_0

    :cond_2
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-array v0, v2, [I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public getMouseSpeed()I
    .locals 2

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getMouseSpeed()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v0

    goto :goto_1
.end method

.method public getSensorStateService()Lcom/nibiru/lib/controller/SensorStateService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    return-object v0
.end method

.method public getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStickSimService()Lcom/nibiru/lib/controller/StickSimService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    return-object v0
.end method

.method public getStickState(II)F
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->getStickState(II)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStickState(I)Lcom/nibiru/lib/controller/StickEvent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1}, Lcom/nibiru/lib/controller/IBluexService;->getStickState2(I)Lcom/nibiru/lib/controller/StickEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public handleExternalInput(Landroid/view/InputEvent;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->co:Z

    if-eqz v1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    :goto_1
    :try_start_0
    instance-of v1, v2, Landroid/view/KeyEvent;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Landroid/view/KeyEvent;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0xff

    if-ne v1, v5, :cond_3

    invoke-static {v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_b

    new-instance v2, Landroid/view/KeyEvent;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    goto :goto_1

    :cond_3
    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/view/KeyEvent;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isSystemExKeyCode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->isInputViewShow()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Landroid/view/KeyEvent;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->hideInputView()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->onInputViewResult(Ljava/lang/String;I)V

    :cond_4
    invoke-static {v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Landroid/view/InputEvent;)V

    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    if-ltz v1, :cond_6

    sget v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ch:I

    const/16 v5, 0x4e

    if-ge v1, v5, :cond_7

    :cond_6
    invoke-static {v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Landroid/view/InputEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v3

    :goto_2
    invoke-static {v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Landroid/view/InputEvent;)V

    move v3, v1

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    new-instance v7, Lcom/nibiru/lib/controller/NibiruInputEvent;

    invoke-direct {v7, v2}, Lcom/nibiru/lib/controller/NibiruInputEvent;-><init>(Landroid/view/InputEvent;)V

    iget-object v8, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-nez v1, :cond_8

    const/4 v1, -0x1

    move v5, v1

    :goto_3
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/f;->isDpadMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    :goto_5
    or-int/2addr v1, v4

    invoke-interface {v6, v7, v8, v5, v1}, Lcom/nibiru/lib/controller/IBluexService;->handleExternalInput(Lcom/nibiru/lib/controller/NibiruInputEvent;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/e;->getEventMode()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    move v5, v1

    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public hasDeviceConnected()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getDeviceList()[Lcom/nibiru/lib/BTDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-eqz v1, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/nibiru/lib/BTDevice;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideInputView()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->hideInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    return v0
.end method

.method public isHostControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    return v0
.end method

.method public isInputViewShow()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->isInputViewShow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isServiceEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportEnable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerServiceState;->isNibiruSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSupportInput()Z
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v3, 0xff

    invoke-static {v2, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_4

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v3, 0x3

    const v4, 0xffff

    invoke-static {v1, v1, v3, v4}, Lcom/nibiru/lib/controller/StickEvent;->translateTouch2(IIII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public l()Z
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_3

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v3, 0x3

    const v4, 0xffff

    invoke-static {v1, v1, v3, v4}, Lcom/nibiru/lib/controller/StickEvent;->translateTouch2(IIII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cm:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bw:Z

    return v0
.end method

.method public notifyCursorShow(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cn:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->token:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->setCursorState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "CONTEXT IS NULL!"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nibiru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "REGISTER CONTEXT MUST BE AN ACTIVITY"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v5, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->co:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->co:Z

    const-string v0, "NO PASS INPUT HANDLER CHECK, Please override dispatchKeyEvent and dispatchGenericMotionEvent methods in your activity and add following codes in these methods\' first position:\nif( mControllerService != null && mControllerService.handleExternalInput(event) ){\nreturn true;\n}"

    const-string v1, "ControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->co:Z

    iput-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cn:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    :cond_3
    new-instance v0, Lcom/nibiru/lib/controller/m;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cg:Lcom/nibiru/lib/controller/m;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->O:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->unregister()V

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const-string v0, "Why mContext is null?"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    invoke-interface {v0, v4}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    :cond_5
    :goto_0
    return v5

    :cond_6
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->token:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->token:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nibiru.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    invoke-interface {v0, v4}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    goto :goto_0

    :cond_8
    iput-boolean v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cp:Z

    goto :goto_0
.end method

.method public requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->connectController(Lcom/nibiru/lib/BTDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "DEVICE OR SERVICE IS NULL!"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->disconnectController(Lcom/nibiru/lib/BTDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestInfoReport(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->requestErrorReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetCurrentApp()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->resetCurrentApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$g;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public sendVirutalData([B)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1}, Lcom/nibiru/lib/controller/IBluexService;->sendVirtualData([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccListener(Lcom/nibiru/lib/controller/OnAccListener;)V
    .locals 3

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ca:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bM:Lcom/nibiru/lib/controller/OnAccListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SET ACC LISTENER: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAutoGameGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bD:Z

    return-void
.end method

.method public setAutoKeyUpKeys([I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    if-nez v1, :cond_2

    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    :cond_2
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAutoKeyUpMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bz:Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nibiru/lib/controller/j;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/j;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->close()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bA:Z

    goto :goto_0
.end method

.method public setAutoKeyUpParam(JZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bz:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/nibiru/lib/controller/j;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/j;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->start()V

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/controller/j;->setIntervalTime(J)V

    iput-boolean p3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bA:Z

    goto :goto_0
.end method

.method public setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bQ:Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    return-void
.end method

.method public setDirectPressMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bu:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bx:Z

    :cond_0
    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->y()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/a;->setEnable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/c;->resume()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-static {}, Lcom/nibiru/lib/controller/l;->resume()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$1;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/c;->pause()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-static {}, Lcom/nibiru/lib/controller/l;->pause()V

    goto :goto_2
.end method

.method public setEnableLR2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bC:Z

    return-void
.end method

.method public setEnableSystemKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bH:Z

    return-void
.end method

.method public setEnterKeyCode(I)V
    .locals 2

    if-gez p1, :cond_0

    const-string v0, "ControllerService"

    const-string v1, "Can\'t support keycode less than zero!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bG:I

    goto :goto_0
.end method

.method public setGyroListener(Lcom/nibiru/lib/controller/OnGyroListener;)V
    .locals 3

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bN:Lcom/nibiru/lib/controller/OnGyroListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SET GYRO LISTENER: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public setHostController(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->L:Z

    return-void
.end method

.method public setIME(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->by:Z

    return-void
.end method

.method public setInternalStateListener(Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bP:Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

    return-void
.end method

.method public setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V
    .locals 2

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bY:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bJ:Lcom/nibiru/lib/controller/OnKeyListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMotionSenseListener(Lcom/nibiru/lib/controller/OnMotionSenseListener;)V
    .locals 2

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ce:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bU:Lcom/nibiru/lib/controller/OnMotionSenseListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNibiruIMEShow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->setNibiruIMEShow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNibiruPlayer(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->setNibiruPlayer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOneDirectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bu:Z

    return-void
.end method

.method public setPlayerOrder(II)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bs:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set player order: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->setPlayerOrder(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setReportListener(Lcom/nibiru/lib/controller/OnReportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bR:Lcom/nibiru/lib/controller/OnReportListener;

    return-void
.end method

.method public setRevExternalMotion(Z)V
    .locals 0

    return-void
.end method

.method public setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V
    .locals 2

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bL:Lcom/nibiru/lib/controller/OnSimpleStickListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V
    .locals 2

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bO:Lcom/nibiru/lib/controller/OnStateListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V
    .locals 2

    sget-object v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bK:Lcom/nibiru/lib/controller/OnStickListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSupportStickHatMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bv:Z

    return-void
.end method

.method public setSysCursorMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->setSystemCursorMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVirtualServiceListener(Lcom/nibiru/lib/controller/OnVirutalServiceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bT:Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    return-void
.end method

.method public showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-direct {v0, p1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->isNibiruInstall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->checkInstallNibiru()V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;B)V

    iput-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    :try_start_0
    const-string v1, "isShowTip"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0, p2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->showDeviceTip(Lcom/nibiru/lib/controller/ControllerServiceImpl;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "NO FOUND SERVICE SETTINGS UI"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public showGameGuide(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/h;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/nibiru/lib/controller/h;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->C()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cp:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->D()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    goto :goto_0
.end method

.method public startInputView(Ljava/lang/String;Ljava/lang/String;IILcom/nibiru/lib/controller/OnInputResultListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->isSupportInput()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p5, :cond_3

    const-string v1, ""

    const/4 v2, -0x1

    invoke-interface {p5, v1, v2}, Lcom/nibiru/lib/controller/OnInputResultListener;->onInputResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iput-object p5, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bS:Lcom/nibiru/lib/controller/OnInputResultListener;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/nibiru/lib/controller/IBluexService;->startInputView(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startMotor(IIJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nibiru/lib/controller/IBluexService;->controllMotor2(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method

.method public startVirtualService(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->startVirtualService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMotor(II)V
    .locals 6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/nibiru/lib/controller/IBluexService;->controllMotor2(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopVirtualService(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->stopVietualService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cn:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->hideInputView()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->showGameGuide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bm:Lcom/nibiru/lib/controller/a;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/a;->exit()V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bn:Lcom/nibiru/lib/controller/l;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/l;->exit()V

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bo:Lcom/nibiru/lib/controller/c;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/c;->exit()V

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->exit()V

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bq:Lcom/nibiru/lib/controller/f;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/f;->stopDpadMode()V

    :cond_5
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->ck:Lcom/nibiru/lib/controller/j;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/j;->close()V

    :cond_6
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cj:Landroid/os/HandlerThread;

    :cond_7
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->br:Lcom/nibiru/lib/controller/i;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/i;->G()V

    :cond_8
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/k;->clear()V

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bF:[I

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/IBluexService;->unregisterListener(Lcom/nibiru/lib/controller/IBluexListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->O:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    :cond_a
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    :cond_b
    :goto_2
    invoke-virtual {p0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAutoKeyUpMode(Z)V

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    return-void

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bV:Landroid/content/BroadcastReceiver;

    goto :goto_2
.end method

.method public updateDeviceInfo(Lcom/nibiru/lib/BTDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cf:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->updateDeviceInfo(Lcom/nibiru/lib/BTDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
