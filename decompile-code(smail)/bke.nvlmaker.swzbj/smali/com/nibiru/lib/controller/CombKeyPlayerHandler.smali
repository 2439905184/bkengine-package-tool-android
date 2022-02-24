.class public Lcom/nibiru/lib/controller/CombKeyPlayerHandler;
.super Ljava/lang/Object;


# instance fields
.field private K:Z

.field private aL:[I

.field private aM:[J

.field private aN:Ljava/util/Map;

.field private aO:Lcom/nibiru/lib/controller/ICombKeyManager;

.field private n:I


# direct methods
.method public constructor <init>(ILcom/nibiru/lib/controller/ICombKeyManager;)V
    .locals 4

    const/16 v2, 0x100

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aN:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iput p1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    iput-object p2, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    return-void
.end method


# virtual methods
.method public checkKeyState()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    aget v1, v1, v0

    if-eq v1, v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RESET KEYSTATE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    aput v6, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public disable()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enable()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public handleCombKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aM:[J

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getPlayerOrder()I

    move-result v0

    iget v1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    if-eq v0, v1, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ICombKeyManager;->sendSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ICombKeyManager;->getCombKeyList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ICombKeyManager;->sendDelayedSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    move v0, v3

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aN:Ljava/util/Map;

    iget-object v4, v1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/b;

    if-nez v1, :cond_7

    move v4, v2

    :goto_2
    if-eqz v4, :cond_c

    if-nez v0, :cond_a

    new-instance v0, Lcom/nibiru/lib/controller/b;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/b;-><init>()V

    iput-boolean v3, v0, Lcom/nibiru/lib/controller/b;->aQ:Z

    iget-object v4, v1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aN:Ljava/util/Map;

    iget-object v5, v1, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->token:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v1}, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->getCombKeys()[I

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_4
    if-lt v4, v6, :cond_b

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v4

    iput v4, v0, Lcom/nibiru/lib/controller/b;->aR:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    iget v4, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    invoke-interface {v0, v4, v2, v1}, Lcom/nibiru/lib/controller/ICombKeyManager;->sendCombKey(IILcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    move v0, v3

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/nibiru/lib/controller/CombKeyService$CombKey;->getCombKeys()[I

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_5
    if-lt v4, v7, :cond_8

    move v4, v3

    goto :goto_2

    :cond_8
    aget v8, v6, v4

    iget-object v9, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    aget v8, v9, v8

    if-ne v8, v3, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    iget-boolean v4, v0, Lcom/nibiru/lib/controller/b;->aQ:Z

    if-nez v4, :cond_5

    iput-boolean v3, v0, Lcom/nibiru/lib/controller/b;->aQ:Z

    goto :goto_3

    :cond_b
    aget v7, v5, v4

    iget-object v8, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    iget v9, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    invoke-interface {v8, v9, v7}, Lcom/nibiru/lib/controller/ICombKeyManager;->cancelSingleKey(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_5

    iget-boolean v4, v0, Lcom/nibiru/lib/controller/b;->aQ:Z

    if-eqz v4, :cond_5

    iput-boolean v2, v0, Lcom/nibiru/lib/controller/b;->aQ:Z

    iget-object v4, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aO:Lcom/nibiru/lib/controller/ICombKeyManager;

    iget v5, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->n:I

    invoke-interface {v4, v5, v3, v1}, Lcom/nibiru/lib/controller/ICombKeyManager;->sendCombKey(IILcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    iget v4, v0, Lcom/nibiru/lib/controller/b;->aR:I

    if-ne v1, v4, :cond_d

    iput v2, v0, Lcom/nibiru/lib/controller/b;->aR:I

    move v0, v3

    goto/16 :goto_1

    :cond_d
    iput v2, v0, Lcom/nibiru/lib/controller/b;->aR:I

    move v0, v2

    goto/16 :goto_1
.end method

.method public handleKeyState([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->aL:[I

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->K:Z

    return v0
.end method
