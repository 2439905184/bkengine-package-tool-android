.class public Lcom/nibiru/lib/BTDeviceStickSim;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/BTDeviceStickSim$a;
    }
.end annotation


# static fields
.field public static final STICKSIM_KEYMSG:I = 0x400

.field private static final k:Landroid/os/HandlerThread;


# instance fields
.field private c:Z

.field private d:Landroid/util/SparseArray;

.field private e:Lcom/nibiru/lib/BluexHandler;

.field private f:Z

.field private g:I

.field private h:I

.field private i:D

.field private j:D

.field private final l:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sticksim-scheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nibiru/lib/BTDeviceStickSim;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/BluexHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->lock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->f:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    const-wide v0, 0x3fd6666666666666L    # 0.35

    iput-wide v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->i:D

    const-wide v0, 0x4007333333333333L    # 2.9

    iput-wide v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->j:D

    new-instance v0, Lcom/nibiru/lib/BTDeviceStickSim$1;

    sget-object v1, Lcom/nibiru/lib/BTDeviceStickSim;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/BTDeviceStickSim$1;-><init>(Lcom/nibiru/lib/BTDeviceStickSim;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->e:Lcom/nibiru/lib/BluexHandler;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/BTDeviceStickSim;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private a(III)V
    .locals 17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nibiru/lib/BTDeviceStickSim$a;

    if-nez v2, :cond_2

    new-instance v2, Lcom/nibiru/lib/BTDeviceStickSim$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nibiru/lib/BTDeviceStickSim$a;-><init>(Lcom/nibiru/lib/BTDeviceStickSim;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->p:Z

    move/from16 v0, p3

    iput v0, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->n:I

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v15, v3

    move-object/from16 v16, v4

    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xf

    if-ge v3, v5, :cond_3

    const/16 v3, 0xf

    if-ge v4, v3, :cond_3

    if-nez v16, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/nibiru/lib/BTDeviceStickSim;->a(ILcom/nibiru/lib/BTDeviceStickSim$a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    iget-boolean v3, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->p:Z

    move v15, v3

    move-object/from16 v16, v4

    goto :goto_0

    :cond_3
    const/4 v9, -0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nibiru/lib/BTDeviceStickSim;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nibiru/lib/BTDeviceStickSim;->i:D

    int-to-double v10, v3

    mul-double/2addr v6, v10

    double-to-int v5, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nibiru/lib/BTDeviceStickSim;->j:D

    int-to-double v10, v3

    mul-double/2addr v6, v10

    double-to-int v6, v6

    if-gt v4, v6, :cond_5

    if-lt v4, v5, :cond_5

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    const/16 v9, 0x1a

    :cond_4
    :goto_2
    if-gtz v9, :cond_6

    :cond_5
    if-nez p1, :cond_b

    if-lez p2, :cond_b

    const/16 v9, 0x13

    :cond_6
    :goto_3
    const/4 v3, -0x1

    if-eq v9, v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v4

    move/from16 v12, p3

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v9, v4, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/nibiru/lib/BTDeviceStickSim;->a(ILcom/nibiru/lib/BTDeviceStickSim$a;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nibiru/lib/BTDeviceStickSim;->lock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->p:Z

    iput-object v3, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    move/from16 v0, p3

    iput v0, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->n:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v5, 0x400

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/view/KeyEvent;

    iget-object v2, v2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    invoke-direct {v5, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nibiru/lib/BTDeviceStickSim;->e:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v2, v4}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nibiru/lib/BTDeviceStickSim;->f:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    move/from16 v0, p3

    iput v0, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_8
    if-lez p1, :cond_9

    if-gez p2, :cond_9

    const/16 v9, 0x1c

    goto/16 :goto_2

    :cond_9
    if-gez p1, :cond_a

    if-lez p2, :cond_a

    const/16 v9, 0x19

    goto/16 :goto_2

    :cond_a
    if-gez p1, :cond_4

    if-gez p2, :cond_4

    const/16 v9, 0x1b

    goto/16 :goto_2

    :cond_b
    if-nez p1, :cond_c

    if-ltz p2, :cond_15

    :cond_c
    if-lez p1, :cond_d

    if-nez p2, :cond_d

    const/16 v9, 0x16

    goto/16 :goto_3

    :cond_d
    if-gez p1, :cond_e

    if-nez p2, :cond_e

    const/16 v9, 0x15

    goto/16 :goto_3

    :cond_e
    if-lez p1, :cond_12

    if-lez p2, :cond_10

    if-lt v3, v4, :cond_f

    const/16 v9, 0x16

    goto/16 :goto_3

    :cond_f
    const/16 v9, 0x13

    goto/16 :goto_3

    :cond_10
    if-gez p2, :cond_6

    if-lt v3, v4, :cond_11

    const/16 v9, 0x16

    goto/16 :goto_3

    :cond_11
    const/16 v9, 0x14

    goto/16 :goto_3

    :cond_12
    if-gez p1, :cond_6

    if-lez p2, :cond_14

    if-lt v3, v4, :cond_13

    const/16 v9, 0x15

    goto/16 :goto_3

    :cond_13
    const/16 v9, 0x13

    goto/16 :goto_3

    :cond_14
    if-gez p2, :cond_6

    if-lt v3, v4, :cond_15

    const/16 v9, 0x15

    goto/16 :goto_3

    :cond_15
    const/16 v9, 0x14

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private a(ILcom/nibiru/lib/BTDeviceStickSim$a;)V
    .locals 13

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/4 v12, 0x2

    move-wide v4, v2

    move v9, v8

    move v10, p1

    move v11, v8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x400

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->e:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/nibiru/lib/BTDeviceStickSim$a;->o:Landroid/view/KeyEvent;

    iput-boolean v8, p2, Lcom/nibiru/lib/BTDeviceStickSim$a;->p:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/nibiru/lib/BTDeviceStickSim;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nibiru/lib/BTDeviceStickSim;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/BTDeviceStickSim;)Lcom/nibiru/lib/BluexHandler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->e:Lcom/nibiru/lib/BluexHandler;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/BTDeviceStickSim;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/nibiru/lib/BTDeviceStickSim;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/nibiru/lib/BTDeviceStickSim;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    return v0
.end method


# virtual methods
.method public getDirectionState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->g:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->mode:I

    return v0
.end method

.method public handleStickSimData(Lcom/nibiru/lib/BTDeviceStickEvent;)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->mode:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getLoc()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getRelatedX()I

    move-result v0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getRelatedY()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getPlayerOrder()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/nibiru/lib/BTDeviceStickSim;->a(III)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->mode:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getLoc()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getRelatedX()I

    move-result v0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getRelatedY()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDeviceStickEvent;->getPlayerOrder()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/nibiru/lib/BTDeviceStickSim;->a(III)V

    goto :goto_0
.end method

.method public isContinueState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->f:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->c:Z

    return v0
.end method

.method public setContinuesState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->f:Z

    return-void
.end method

.method public setDirectionState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->g:I

    return-void
.end method

.method public setIntervalTime(I)V
    .locals 2

    const/16 v1, 0x32

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    if-gt v0, v1, :cond_0

    iput v1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->h:I

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->mode:I

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nibiru/lib/BTDeviceStickSim;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/nibiru/lib/BTDeviceStickSim;->c:Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/nibiru/lib/BTDeviceStickSim;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/BTDeviceStickSim$a;

    iget v0, v0, Lcom/nibiru/lib/BTDeviceStickSim$a;->n:I

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public stopPlayer(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDeviceStickSim;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/BTDeviceStickSim$a;

    invoke-direct {p0, p1, v0}, Lcom/nibiru/lib/BTDeviceStickSim;->a(ILcom/nibiru/lib/BTDeviceStickSim$a;)V

    return-void
.end method
