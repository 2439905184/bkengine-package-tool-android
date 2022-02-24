.class final Lcom/nibiru/lib/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private ai:Ljava/util/Queue;

.field private aj:Ljava/util/List;

.field private ak:Z

.field private synthetic al:Lcom/nibiru/lib/b;


# direct methods
.method private constructor <init>(Lcom/nibiru/lib/b;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/b$a;->ak:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nibiru/lib/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nibiru/lib/b$a;-><init>(Lcom/nibiru/lib/b;)V

    return-void
.end method

.method private declared-synchronized d(Landroid/view/KeyEvent;)[Landroid/view/KeyEvent;
    .locals 15

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/KeyEvent;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/nibiru/lib/b$a;->ak:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()[Landroid/view/KeyEvent;
    .locals 4

    iget-object v1, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/KeyEvent;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/KeyEvent;

    monitor-exit v1

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/b$b;

    invoke-virtual {v0}, Lcom/nibiru/lib/b$b;->getKeyEvent()Landroid/view/KeyEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    return-object v0
.end method

.method public final declared-synchronized c(Landroid/view/KeyEvent;)V
    .locals 7

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/nibiru/lib/b$a;->ak:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/b$a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/nibiru/lib/b$a;->d(Landroid/view/KeyEvent;)[Landroid/view/KeyEvent;

    move-result-object v5

    new-instance v0, Lcom/nibiru/lib/CombKeyEvent;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/nibiru/lib/CombKeyEvent;-><init>(IJI[Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-static {v1}, Lcom/nibiru/lib/b;->a(Lcom/nibiru/lib/b;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendCombKeyEvent(Lcom/nibiru/lib/CombKeyEvent;)V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->b(Lcom/nibiru/lib/b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->a(Lcom/nibiru/lib/b;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/BluexHandler;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b$a;->aj:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized e(Landroid/view/KeyEvent;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Lcom/nibiru/lib/b$b;

    iget-object v2, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-direct {v0, v2, p1}, Lcom/nibiru/lib/b$b;-><init>(Lcom/nibiru/lib/b;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/nibiru/lib/b$a;->ai:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/nibiru/lib/b$a;->al:Lcom/nibiru/lib/b;

    invoke-static {v2}, Lcom/nibiru/lib/b;->c(Lcom/nibiru/lib/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/nibiru/lib/b;->a()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
