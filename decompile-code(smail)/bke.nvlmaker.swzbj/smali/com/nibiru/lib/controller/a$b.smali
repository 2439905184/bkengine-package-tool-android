.class final Lcom/nibiru/lib/controller/a$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic aJ:Lcom/nibiru/lib/controller/a;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/a$b;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/nibiru/lib/controller/a$b;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v1}, Lcom/nibiru/lib/controller/a;->a(Lcom/nibiru/lib/controller/a;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/a$b;->aJ:Lcom/nibiru/lib/controller/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/controller/a;->sendSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    goto :goto_0
.end method
