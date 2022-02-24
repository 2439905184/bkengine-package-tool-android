.class public final Lcom/nibiru/lib/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/b$a;,
        Lcom/nibiru/lib/b$b;
    }
.end annotation


# static fields
.field private static af:J

.field private static final k:Landroid/os/HandlerThread;


# instance fields
.field private ae:Lcom/nibiru/lib/BluexHandler;

.field private ag:Landroid/util/SparseArray;

.field private ah:Z

.field private final l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "combination-scheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nibiru/lib/b;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-wide/16 v0, 0x16

    sput-wide v0, Lcom/nibiru/lib/b;->af:J

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/BluexHandler;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nibiru/lib/b;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/b;->l:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/nibiru/lib/b;->ah:Z

    iput-object p1, p0, Lcom/nibiru/lib/b;->ae:Lcom/nibiru/lib/BluexHandler;

    iget-object v0, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-boolean v2, p0, Lcom/nibiru/lib/b;->ah:Z

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/nibiru/lib/b;->af:J

    return-wide v0
.end method

.method static synthetic a(Lcom/nibiru/lib/b;)Lcom/nibiru/lib/BluexHandler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b;->ae:Lcom/nibiru/lib/BluexHandler;

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/nibiru/lib/b;->af:J

    return-void
.end method

.method static synthetic b(Lcom/nibiru/lib/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/b;->ah:Z

    return v0
.end method

.method static synthetic c(Lcom/nibiru/lib/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/b;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/view/KeyEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/b$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nibiru/lib/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/nibiru/lib/b$a;-><init>(Lcom/nibiru/lib/b;B)V

    iget-object v2, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/b$a;->c(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/b$a;->e(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    iget-object v1, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/b;->ag:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
