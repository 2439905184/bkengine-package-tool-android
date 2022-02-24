.class public Lcom/nibiru/lib/controller/CombKeyService$CombKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/CombKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CombKey"
.end annotation


# instance fields
.field private aP:Ljava/util/List;

.field public isStart:Z

.field public keyMask:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    iput v1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iget-object v0, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    iget v0, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    iput v2, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iput-object p1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    iput v1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iput-object p1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addKey(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    sget-object v1, Lcom/nibiru/lib/controller/k;->en:[I

    sget-object v2, Lcom/nibiru/lib/controller/k;->el:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aget v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkKeys([Lcom/nibiru/lib/controller/ControllerKeyEvent;)[Lcom/nibiru/lib/controller/ControllerKeyEvent;
    .locals 5

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v3

    aget-object v4, p1, v0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v1, p1

    if-lt v0, v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nibiru/lib/controller/ControllerKeyEvent;

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    iget-object v2, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCombKeyMask()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->keyMask:I

    return v0
.end method

.method public declared-synchronized getCombKeys()[I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCombKeysList()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    return v0
.end method

.method public setStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->isStart:Z

    return-void
.end method
