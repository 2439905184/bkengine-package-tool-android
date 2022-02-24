.class public Lcom/nibiru/lib/StatisticManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/StatisticManager$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StatisticManager"

.field private static au:Lcom/nibiru/lib/StatisticManager;

.field private static av:Landroid/util/SparseArray;

.field private static aw:Landroid/util/SparseArray;


# instance fields
.field private ax:Lcom/nibiru/lib/StatisticManager$a;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nibiru/lib/StatisticManager;->av:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nibiru/lib/StatisticManager;->aw:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/StatisticManager;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/StatisticManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/StatisticManager;->p:Z

    return v0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v0}, Lcom/nibiru/lib/StatisticManager$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/StatisticManager;->p:Z

    new-instance v0, Lcom/nibiru/lib/StatisticManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/StatisticManager$a;-><init>(Lcom/nibiru/lib/StatisticManager;B)V

    iput-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v0}, Lcom/nibiru/lib/StatisticManager$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/StatisticManager;->av:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic g()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/nibiru/lib/StatisticManager;->aw:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/nibiru/lib/StatisticManager;
    .locals 2

    const-class v1, Lcom/nibiru/lib/StatisticManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nibiru/lib/StatisticManager;->au:Lcom/nibiru/lib/StatisticManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/StatisticManager;

    invoke-direct {v0}, Lcom/nibiru/lib/StatisticManager;-><init>()V

    sput-object v0, Lcom/nibiru/lib/StatisticManager;->au:Lcom/nibiru/lib/StatisticManager;

    :cond_0
    sget-object v0, Lcom/nibiru/lib/StatisticManager;->au:Lcom/nibiru/lib/StatisticManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeStatThread()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/StatisticManager;->p:Z

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    new-instance v1, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v1}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    :cond_0
    return-void
.end method

.method public doStatistic(JJII)V
    .locals 3

    invoke-direct {p0}, Lcom/nibiru/lib/StatisticManager;->e()V

    new-instance v0, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v0}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {v0, p5}, Lcom/nibiru/lib/StatBaseInfo;->setOrder(I)V

    invoke-virtual {v0, p3, p4}, Lcom/nibiru/lib/StatBaseInfo;->setReachTime(J)V

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/StatBaseInfo;->setStartTime(J)V

    invoke-virtual {v0, p6}, Lcom/nibiru/lib/StatBaseInfo;->setType(I)V

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    return-void
.end method

.method public doStatistic(JLandroid/view/KeyEvent;)V
    .locals 5

    invoke-direct {p0}, Lcom/nibiru/lib/StatisticManager;->e()V

    new-instance v0, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v0}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setOrder(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/StatBaseInfo;->setReachTime(J)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setStartTime(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setType(I)V

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    return-void
.end method

.method public doStatistic(JLandroid/view/MotionEvent;)V
    .locals 5

    invoke-direct {p0}, Lcom/nibiru/lib/StatisticManager;->e()V

    new-instance v0, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v0}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setOrder(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/StatBaseInfo;->setReachTime(J)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setStartTime(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setType(I)V

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    return-void
.end method

.method public doStatistic(Landroid/view/KeyEvent;)V
    .locals 4

    invoke-direct {p0}, Lcom/nibiru/lib/StatisticManager;->e()V

    new-instance v0, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v0}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setOrder(I)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setReachTime(J)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setStartTime(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setType(I)V

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    return-void
.end method

.method public doStatistic(Lcom/nibiru/lib/CombKeyEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/nibiru/lib/StatisticManager;->e()V

    new-instance v0, Lcom/nibiru/lib/StatBaseInfo;

    invoke-direct {v0}, Lcom/nibiru/lib/StatBaseInfo;-><init>()V

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/StatBaseInfo;->setOrder(I)V

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setReachTime(J)V

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getEvents()[Landroid/view/KeyEvent;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nibiru/lib/StatBaseInfo;->setStartTime(J)V

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/StatBaseInfo;->setType(I)V

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager;->ax:Lcom/nibiru/lib/StatisticManager$a;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/StatisticManager$a;->b(Lcom/nibiru/lib/StatBaseInfo;)V

    return-void
.end method

.method public declared-synchronized getStatResult()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "============== StatisticResult ================\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "KeyEvent:\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :goto_0
    sget-object v3, Lcom/nibiru/lib/StatisticManager;->av:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    const-string v1, "StickEvent:\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    sget-object v1, Lcom/nibiru/lib/StatisticManager;->aw:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string v0, "\n\n=============================================="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v3, Lcom/nibiru/lib/StatisticManager;->av:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nibiru/lib/StatisticManager;->av:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/nibiru/lib/StatisticManager;->aw:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nibiru/lib/StatisticManager;->aw:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
