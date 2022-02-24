.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(IILcom/nibiru/lib/BTDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private final synthetic cr:I

.field private final synthetic cs:I

.field private final synthetic ct:Lcom/nibiru/lib/BTDevice;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;IILcom/nibiru/lib/BTDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cr:I

    iput p3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cs:I

    iput-object p4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cr:I

    iget v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cs:I

    iget-object v5, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;IILcom/nibiru/lib/BTDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cs:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->h(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/a;->stop(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->y(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/l;->stop(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->z(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->ct:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/c;->stop(I)V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->resetCurrentApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$2;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDeviceList()Ljava/util/List;
    :try_end_1
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_1
.end method
