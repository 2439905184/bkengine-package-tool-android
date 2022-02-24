.class public final Lcom/nibiru/lib/controller/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/SensorStateService;


# static fields
.field public static el:Landroid/util/SparseIntArray;

.field private static em:[I

.field public static en:[I


# instance fields
.field private ef:Landroid/util/SparseArray;

.field private eg:[I

.field private eh:Landroid/util/SparseArray;

.field private ei:Landroid/util/SparseArray;

.field private ej:Landroid/util/SparseArray;

.field private ek:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x14

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nibiru/lib/controller/k;->em:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/nibiru/lib/controller/k;->en:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6a
        0x6b
        0x63
        0x61
        0x62
        0x60
        0x15
        0x16
        0x14
        0x13
        0x66
        0x67
        0x68
        0x69
        0x6d
        0x6c
        0x3
        0x17
        0x19
        0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->ef:Landroid/util/SparseArray;

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->eh:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->ei:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->ej:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/k;->ek:Landroid/util/SparseArray;

    sget-object v0, Lcom/nibiru/lib/controller/k;->en:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/nibiru/lib/controller/k;->em:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    sget-object v0, Lcom/nibiru/lib/controller/k;->en:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/nibiru/lib/controller/k;->em:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nibiru/lib/controller/k;->en:[I

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static c(I)I
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v1, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(ILcom/nibiru/lib/controller/StickEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/StickEvent;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nibiru/lib/controller/StickEvent;->setLeftStickState(Z)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nibiru/lib/controller/StickEvent;->setRightStickState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v1

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getRawLX()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v1

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getRawLY()I

    move-result v2

    if-eq v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/nibiru/lib/controller/StickEvent;->setLeftStickState(Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v1

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getRawRX()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I

    move-result v0

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getRawRY()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ef:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eh:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ej:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ei:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final declared-synchronized e(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Z
    .locals 7

    const/16 v6, 0x100

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ef:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, p0, Lcom/nibiru/lib/controller/k;->ef:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    const/4 v5, 0x0

    aput v5, v3, v4

    :cond_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    if-le v3, v6, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    aget v3, v0, v3

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_7

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    aget v5, v3, v4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Lcom/nibiru/lib/controller/k;->c(I)I

    move-result v6

    or-int/2addr v5, v6

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v4

    aget v5, v3, v4

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Lcom/nibiru/lib/controller/k;->c(I)I

    move-result v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v3

    aput v3, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto/16 :goto_0
.end method

.method public final getAccEvent(I)Lcom/nibiru/lib/controller/AccEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ej:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/AccEvent;

    return-object v0
.end method

.method public final getGyroEvent(I)Lcom/nibiru/lib/controller/GyroEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ei:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/GyroEvent;

    return-object v0
.end method

.method public final declared-synchronized getKeyState2(I)I
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->eg:[I

    aget v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMotionSenseState(I)Lcom/nibiru/lib/controller/MotionSenseEvent;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/k;->ek:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/MotionSenseEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
