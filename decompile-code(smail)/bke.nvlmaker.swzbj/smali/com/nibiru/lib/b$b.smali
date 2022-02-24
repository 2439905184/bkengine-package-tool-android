.class final Lcom/nibiru/lib/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic al:Lcom/nibiru/lib/b;

.field private am:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/b;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nibiru/lib/b$b;->am:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final getKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/b$b;->am:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final run()V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/b$b;->am:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/b$b;->am:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    iget-object v0, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->d(Lcom/nibiru/lib/b;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->d(Lcom/nibiru/lib/b;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/b$a;

    if-nez v0, :cond_1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/nibiru/lib/b$a;->b()[Landroid/view/KeyEvent;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nibiru/lib/b$a;->c()Ljava/util/Queue;

    move-result-object v7

    invoke-virtual {v0}, Lcom/nibiru/lib/b$a;->d()Ljava/util/List;

    move-result-object v3

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v2, v5

    if-nez v2, :cond_2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    array-length v2, v5

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->b(Lcom/nibiru/lib/b;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/nibiru/lib/b$b;->am:Landroid/view/KeyEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-static {v1}, Lcom/nibiru/lib/b;->a(Lcom/nibiru/lib/b;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-interface {v7, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_6
    const-string v2, "COMB: "

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->clear()V

    array-length v8, v5

    :goto_2
    if-lt v1, v8, :cond_5

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0, v1}, Lcom/nibiru/lib/b$a;->a(Z)V

    invoke-interface {v7}, Ljava/util/Queue;->clear()V

    new-instance v0, Lcom/nibiru/lib/CombKeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/nibiru/lib/CombKeyEvent;-><init>(IJI[Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x801

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nibiru/lib/b$b;->al:Lcom/nibiru/lib/b;

    invoke-static {v0}, Lcom/nibiru/lib/b;->a(Lcom/nibiru/lib/b;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v7

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :try_start_a
    aget-object v9, v5, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v3

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method
