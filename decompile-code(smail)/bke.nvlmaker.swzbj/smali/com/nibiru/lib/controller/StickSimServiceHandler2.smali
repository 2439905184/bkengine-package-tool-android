.class public final Lcom/nibiru/lib/controller/StickSimServiceHandler2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/StickSimService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/StickSimServiceHandler2$OnStickSimChangeListener;,
        Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;
    }
.end annotation


# instance fields
.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private c:Z

.field private cl:Lcom/nibiru/lib/controller/k;

.field private d:Landroid/util/SparseArray;

.field private dp:I

.field private eG:Lcom/nibiru/lib/controller/StickSimServiceHandler2$OnStickSimChangeListener;

.field private ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

.field private ey:[I

.field private g:I

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x13

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7d

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->lock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ey:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->eG:Lcom/nibiru/lib/controller/StickSimServiceHandler2$OnStickSimChangeListener;

    check-cast p1, Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cl:Lcom/nibiru/lib/controller/k;

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->cl:Lcom/nibiru/lib/controller/k;

    return-void
.end method

.method private static a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    new-instance v1, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    invoke-direct {v1, v2, p1, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object v5, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    new-instance v6, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v7, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    invoke-direct {v6, v3, v0, v7}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method private static a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;[I)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v2, p1

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_4

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    array-length v5, p1

    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_2

    move v0, v1

    :goto_3
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    new-instance v5, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v6, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    invoke-direct {v5, v2, v4, v6}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    aget v6, p1, v0

    if-ne v4, v6, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget v3, p1, v0

    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    new-instance v5, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v6, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    invoke-direct {v5, v1, v3, v6}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(FF)Z
    .locals 4

    const-wide v2, 0x3fc3333333333333L    # 0.15

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(II)Z
    .locals 8

    const/16 v7, 0x14

    const/16 v6, 0x16

    const/16 v5, 0x13

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "StickSimServiceHandler2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eH:I

    if-ne v3, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput p1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eH:I

    iget-object v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-gtz p1, :cond_3

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;I)V

    move v0, v2

    goto :goto_0

    :cond_3
    if-gt p1, v6, :cond_4

    if-lt p1, v5, :cond_4

    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;I)V

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ey:[I

    aget v3, v3, p1

    if-lez v3, :cond_6

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;I)V

    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [I

    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput v5, v3, v1

    const/16 v4, 0x15

    aput v4, v3, v2

    :goto_3
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g(I)I

    move-result v4

    aput v4, v3, v1

    aget v1, v3, v2

    invoke-direct {p0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g(I)I

    move-result v1

    aput v1, v3, v2

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;[I)V

    goto :goto_2

    :pswitch_1
    aput v7, v3, v1

    const/16 v4, 0x15

    aput v4, v3, v2

    goto :goto_3

    :pswitch_2
    aput v5, v3, v1

    aput v6, v3, v2

    goto :goto_3

    :pswitch_3
    aput v7, v3, v1

    aput v6, v3, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private e(I)V
    .locals 2

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->cl:Lcom/nibiru/lib/controller/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ey:[I

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->f(I)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f(I)V
    .locals 4

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SEND KEY EVENT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v2, v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto :goto_0
.end method

.method private g(I)I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ey:[I

    aget v0, v0, p1

    if-gtz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static getKeyCode(III)I
    .locals 12

    const/16 v2, 0x13

    const/16 v3, 0x16

    const/16 v4, 0x15

    const/16 v1, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "X: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Y: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne p0, v7, :cond_4

    int-to-float v7, v6

    int-to-float v8, v5

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3ffbb645a1cac083L    # 1.732

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    float-to-double v8, v7

    const-wide v10, 0x3fe28f5c28f5c28fL    # 0.58

    cmpl-double v7, v8, v10

    if-lez v7, :cond_4

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/16 v0, 0x80

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez p1, :cond_2

    if-gez p2, :cond_2

    const/16 v0, 0x7e

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    if-lez p2, :cond_3

    const/16 v0, 0x7f

    goto :goto_0

    :cond_3
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const/16 v0, 0x7d

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    if-lez p2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    if-ltz p2, :cond_f

    :cond_6
    if-lez p1, :cond_7

    if-nez p2, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    if-nez p2, :cond_8

    move v0, v4

    goto :goto_0

    :cond_8
    if-lez p1, :cond_c

    if-lez p2, :cond_a

    if-lt v5, v6, :cond_9

    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    if-gez p2, :cond_0

    if-lt v5, v6, :cond_b

    move v0, v3

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    if-gez p1, :cond_0

    if-lez p2, :cond_e

    if-lt v5, v6, :cond_d

    move v0, v4

    goto :goto_0

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    if-gez p2, :cond_0

    if-lt v5, v6, :cond_f

    move v0, v4

    goto :goto_0

    :cond_f
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final exit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->stopStickSim()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->eG:Lcom/nibiru/lib/controller/StickSimServiceHandler2$OnStickSimChangeListener;

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->cl:Lcom/nibiru/lib/controller/k;

    return-void
.end method

.method public final getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
    .locals 3

    new-instance v0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->dp:I

    iget v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g:I

    invoke-direct {v0, v1, v2}, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;-><init>(II)V

    return-object v0
.end method

.method public final handleStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->isHatValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;-><init>(Lcom/nibiru/lib/controller/StickSimServiceHandler2;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v2

    iput v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eH:I

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    iget v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->n:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "StickSim StickEvent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->dp:I

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->f(I)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->getKeyCode(III)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->getKeyCode(III)I

    move-result v0

    goto :goto_1
.end method

.method public final isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->c:Z

    return v0
.end method

.method public final setHideStickEvent(Z)V
    .locals 0

    return-void
.end method

.method public final setIntervalTime(I)V
    .locals 0

    return-void
.end method

.method public final setKeyNum(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g:I

    return-void
.end method

.method public final setKeyTrans([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->stopStickSim()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ey:[I

    :goto_0
    return-void

    :cond_0
    const-string v0, "StickSimServiceHandler2"

    const-string v1, "SET STICK SIM KEY MAP FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final setMode(I)V
    .locals 2

    const-string v0, "StickSimServiceHandler2"

    const-string v1, "NEW SDK NOT SUPPORT SET MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setStickLoc(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->dp:I

    return-void
.end method

.method public final startStickSim()V
    .locals 1

    invoke-static {}, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->getDefaultConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    return-void
.end method

.method public final startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->g:I

    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->stickLoc:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->dp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopStickSim()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->c:Z

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->c:Z

    :goto_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final stopStickSimUnit(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->e(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
