.class final Lcom/nibiru/lib/controller/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/DpadService;


# instance fields
.field private cP:[I

.field private dv:Z

.field private dw:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/f;->dv:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/f;->dw:Z

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/f;->dw:Z

    return v0
.end method

.method public final addKeyPair(II)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    aput p2, v0, p1

    :cond_0
    return-void
.end method

.method public final d(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Landroid/view/KeyEvent;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    aget v1, v2, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public final isDpadMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/f;->dv:Z

    return v0
.end method

.method public final removeKeyPair(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method public final setDpadMap([I)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    :cond_0
    return-void
.end method

.method public final startDpadMode(I)V
    .locals 6

    const/16 v5, 0x15

    const/16 v2, 0x14

    const/16 v1, 0x13

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/f;->dv:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    aput v5, v0, v5

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/16 v1, 0x16

    const/16 v2, 0x16

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/16 v1, 0x61

    const/16 v2, 0x17

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/16 v1, 0x63

    const/4 v2, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/16 v1, 0x6c

    const/16 v2, 0x42

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/f;->cP:[I

    const/16 v1, 0x6d

    const/16 v2, 0x52

    aput v2, v0, v1

    if-ne p1, v3, :cond_0

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/f;->dw:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/nibiru/lib/controller/f;->dw:Z

    goto :goto_0
.end method

.method public final stopDpadMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/f;->dv:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/f;->dw:Z

    return-void
.end method
