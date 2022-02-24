.class public Lcom/nibiru/lib/controller/StickSimServiceHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/StickSimService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/StickSimServiceHandler$a;,
        Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;,
        Lcom/nibiru/lib/controller/StickSimServiceHandler$b;,
        Lcom/nibiru/lib/controller/StickSimServiceHandler$c;
    }
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x2

.field public static final DIR_DOWN_LEFT:I = 0x1

.field public static final DIR_DOWN_RIGHT:I = 0x3

.field public static final DIR_LEFT:I = 0x0

.field public static final DIR_RIGHT:I = 0x4

.field public static final DIR_UP:I = 0x6

.field public static final DIR_UP_LEFT:I = 0x7

.field public static final DIR_UP_RIGHT:I = 0x5

.field public static final STICKSIM_KEYMSG:I = 0x400


# instance fields
.field private c:Z

.field private d:Landroid/util/SparseArray;

.field private dp:I

.field private et:Z

.field private eu:Z

.field private ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

.field private final ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

.field private ex:Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;

.field private ey:[I

.field private g:I

.field private h:I

.field private final k:Landroid/os/HandlerThread;

.field private final lock:Ljava/lang/Object;

.field private mode:I


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->et:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->lock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->eu:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sticksim-scheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->k:Landroid/os/HandlerThread;

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v1, 0x15

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x13

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ex:Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;-><init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    aget v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->setKeyCode(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    new-instance v1, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;-><init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    new-instance v1, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;-><init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Lcom/nibiru/lib/controller/StickEvent;Lcom/nibiru/lib/controller/StickSimServiceHandler$c;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->getKeyCode(III)I

    move-result v0

    :goto_1
    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    if-ne v0, v1, :cond_2

    iget-boolean v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    if-eq v1, v4, :cond_0

    :cond_2
    if-ltz v0, :cond_5

    iput v0, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v4, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    iget v2, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-direct {v0, v3, v1, v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    iget v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->getKeyCode(III)I

    move-result v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v1, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    iget v2, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-direct {v0, v3, v1, v2}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto :goto_0

    :cond_5
    iget v0, p2, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->stopStickSimUnit(I)V

    goto :goto_0
.end method

.method private static a(IIII)Z
    .locals 1

    if-ne p0, p2, :cond_0

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/StickSimServiceHandler;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    return v0
.end method

.method private static c(II)Z
    .locals 2

    const/16 v1, 0xf

    const/16 v0, -0xf

    if-lt p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$b;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    return-object v0
.end method

.method static synthetic f(Lcom/nibiru/lib/controller/StickSimServiceHandler;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    return v0
.end method

.method static synthetic g(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ex:Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;

    return-object v0
.end method

.method public static getKeyCode(III)I
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne p0, v3, :cond_4

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3ffbb645a1cac083L    # 1.732

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    float-to-double v4, v3

    const-wide v6, 0x3fe28f5c28f5c28fL    # 0.58

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez p1, :cond_2

    if-gez p2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    if-lez p2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    if-lez p2, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    if-ltz p2, :cond_f

    :cond_6
    if-lez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    if-nez p2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    if-lez p1, :cond_c

    if-lez p2, :cond_a

    if-lt v1, v2, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    if-gez p2, :cond_0

    if-lt v1, v2, :cond_b

    const/4 v0, 0x4

    goto :goto_0

    :cond_b
    const/4 v0, 0x6

    goto :goto_0

    :cond_c
    if-gez p1, :cond_0

    if-lez p2, :cond_e

    if-lt v1, v2, :cond_d

    const/4 v0, 0x0

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :cond_e
    if-gez p2, :cond_0

    if-lt v1, v2, :cond_f

    const/4 v0, 0x0

    goto :goto_0

    :cond_f
    const/4 v0, 0x6

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->stopStickSim()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public getDirectionState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    return v0
.end method

.method public getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
    .locals 5

    new-instance v0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    iget v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    iget v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    iget v4, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;-><init>(IIII)V

    return-object v0
.end method

.method public handleStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stickEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->isHatValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    invoke-direct {v0, p0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;-><init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Lcom/nibiru/lib/controller/StickEvent;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    iget v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StickSim StickEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c(II)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    iget v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eA:I

    iget v4, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eB:I

    invoke-static {v1, v2, v3, v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/StickEvent;Lcom/nibiru/lib/controller/StickSimServiceHandler$c;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    iput v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eA:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v1

    iput v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eB:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    iput v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eC:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v1

    iput v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eD:I

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c(II)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v2

    iget v3, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eC:I

    iget v4, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eD:I

    invoke-static {v1, v2, v3, v4}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/StickEvent;Lcom/nibiru/lib/controller/StickSimServiceHandler$c;)V

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->stopStickSimUnit(I)V

    goto :goto_1
.end method

.method public isHideStickEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->eu:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->isStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->et:Z

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->stopStickSim()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->et:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ev:Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    if-nez v0, :cond_1

    const-string v0, "WHY UNIT IS NULL?"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    :goto_1
    if-ge v1, v6, :cond_0

    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    aget v2, v2, v1

    if-nez v2, :cond_2

    new-instance v2, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    const-wide/16 v4, 0x64

    invoke-direct {p0, v2, v4, v5}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V

    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    :goto_2
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    aget v2, v2, v3

    if-lez v2, :cond_a

    :cond_4
    :goto_3
    if-lt v1, v6, :cond_6

    iget-object v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    :try_start_2
    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    if-eq v1, v2, :cond_7

    new-instance v2, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    const-wide/16 v4, 0x64

    invoke-direct {p0, v2, v4, v5}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V

    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    aget v2, v2, v1

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x8

    if-eq v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    if-eq v1, v2, :cond_9

    new-instance v2, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    const-wide/16 v4, 0x64

    invoke-direct {p0, v2, v4, v5}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V

    iget-object v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    if-lt v1, v6, :cond_8

    iget-object v1, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    new-instance v1, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V

    iget-object v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x8

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->a(Lcom/nibiru/lib/controller/ControllerKeyEvent;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setDirectionState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    return-void
.end method

.method public setHideStickEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->eu:Z

    return-void
.end method

.method public setIntervalTime(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->h:I

    goto :goto_0
.end method

.method public setKeyNum(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    return-void
.end method

.method public setKeyTrans([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ey:[I

    aget v2, p1, v0

    aput v2, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    return-void
.end method

.method public setStickLoc(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    return-void
.end method

.method public startStickSim()V
    .locals 1

    invoke-static {}, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->getDefaultConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    return-void
.end method

.method public startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g:I

    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->mode:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->mode:I

    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->stickLoc:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->dp:I

    iget v0, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->intervalTime:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->setIntervalTime(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    if-eqz v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    iget v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v3, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public stop(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public stopStickSim()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->c:Z

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    iget v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v3, v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public stopStickSimUnit(I)V
    .locals 4

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->ew:Lcom/nibiru/lib/controller/StickSimServiceHandler$b;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$b;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    new-instance v2, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v3, 0x1

    iget v0, v0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    invoke-direct {v2, v3, v0, p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
