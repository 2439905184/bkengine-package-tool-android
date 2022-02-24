.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$f;
.super Lcom/nibiru/lib/controller/IBluexListener$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Lcom/nibiru/lib/controller/IBluexListener$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-object v0
.end method


# virtual methods
.method public final getCurrentCursorState()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/e;->A()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/e;->getInterval()I

    move-result v1

    aput v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    aput v2, v0, v3

    aput v2, v0, v4

    goto :goto_0
.end method

.method public final getEnterKeyCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->m(Lcom/nibiru/lib/controller/ControllerServiceImpl;)I

    move-result v0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->l(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isCursorReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorReady()Z

    move-result v0

    goto :goto_0
.end method

.method public final isCursorShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isEnableLR2()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bC:Z

    return v0
.end method

.method public final isIME()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->by:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final onAccEvent([Lcom/nibiru/lib/controller/AccEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$3;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$3;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;[Lcom/nibiru/lib/controller/AccEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onBluetoothStateChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$b;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v1, v2, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$b;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onControllerStateChange(IILcom/nibiru/lib/BTDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bB:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(IILcom/nibiru/lib/BTDevice;)V

    goto :goto_0
.end method

.method public final onCursorSpeedChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/controller/e;->setSensitivity(II)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controller Service meets error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->f(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v1, v2, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onErrorReportReady(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v1, v2, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onExternalDeviceUpdate([Lcom/nibiru/lib/BTDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onGyroEvent([Lcom/nibiru/lib/controller/GyroEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$4;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$4;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;[Lcom/nibiru/lib/controller/GyroEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onInputViewResult(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->i(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnInputResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$i;

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v1, v2, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl$i;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onKeyEvent([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bB:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;[Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onKeyStateUpdate(I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMotionSenseDataChanged(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bB:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$5;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$5;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onStickEvent([Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bB:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->g(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$2;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$2;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;[Lcom/nibiru/lib/controller/StickEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onVirtualServiceState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->e(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setCursorModeForce(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getCursorService()Lcom/nibiru/lib/controller/CursorService;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->k(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->K:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->y()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bp:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    goto :goto_0
.end method
