.class final Lcom/nibiru/lib/StatisticManager$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/StatisticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private ay:Ljava/util/concurrent/BlockingQueue;

.field private synthetic az:Lcom/nibiru/lib/StatisticManager;


# direct methods
.method private constructor <init>(Lcom/nibiru/lib/StatisticManager;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/StatisticManager$a;->az:Lcom/nibiru/lib/StatisticManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/StatisticManager$a;->ay:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nibiru/lib/StatisticManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nibiru/lib/StatisticManager$a;-><init>(Lcom/nibiru/lib/StatisticManager;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/nibiru/lib/StatBaseInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/StatisticManager$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager$a;->az:Lcom/nibiru/lib/StatisticManager;

    invoke-static {v0}, Lcom/nibiru/lib/StatisticManager;->a(Lcom/nibiru/lib/StatisticManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager$a;->ay:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager$a;->az:Lcom/nibiru/lib/StatisticManager;

    invoke-static {v0}, Lcom/nibiru/lib/StatisticManager;->a(Lcom/nibiru/lib/StatisticManager;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/StatisticManager$a;->ay:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/StatBaseInfo;

    iget-object v1, p0, Lcom/nibiru/lib/StatisticManager$a;->az:Lcom/nibiru/lib/StatisticManager;

    invoke-static {v1}, Lcom/nibiru/lib/StatisticManager;->a(Lcom/nibiru/lib/StatisticManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nibiru/lib/StatBaseInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/nibiru/lib/StatBaseInfo;->getOrder()I

    move-result v2

    if-nez v1, :cond_4

    invoke-static {}, Lcom/nibiru/lib/StatisticManager;->f()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nibiru/lib/e;

    if-nez v1, :cond_3

    new-instance v1, Lcom/nibiru/lib/e;

    invoke-direct {v1}, Lcom/nibiru/lib/e;-><init>()V

    :cond_3
    invoke-virtual {v1, v0}, Lcom/nibiru/lib/e;->a(Lcom/nibiru/lib/StatBaseInfo;)V

    invoke-static {}, Lcom/nibiru/lib/StatisticManager;->f()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/nibiru/lib/e;->getCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Statistic on KeyEvent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/nibiru/lib/StatisticManager;->g()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nibiru/lib/e;

    if-nez v1, :cond_5

    new-instance v1, Lcom/nibiru/lib/e;

    invoke-direct {v1}, Lcom/nibiru/lib/e;-><init>()V

    :cond_5
    invoke-virtual {v1, v0}, Lcom/nibiru/lib/e;->a(Lcom/nibiru/lib/StatBaseInfo;)V

    invoke-static {}, Lcom/nibiru/lib/StatisticManager;->g()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/nibiru/lib/e;->getCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Statistic on StickEvent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
