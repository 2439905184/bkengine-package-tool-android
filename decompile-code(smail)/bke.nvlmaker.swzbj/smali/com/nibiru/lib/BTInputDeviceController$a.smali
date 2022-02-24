.class final Lcom/nibiru/lib/BTInputDeviceController$a;
.super Lcom/nibiru/lib/controller/IBluexListener$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/BTInputDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic P:Lcom/nibiru/lib/BTInputDeviceController;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-direct {p0}, Lcom/nibiru/lib/controller/IBluexListener$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentCursorState()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEnterKeyCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->m(Lcom/nibiru/lib/BTInputDeviceController;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->m(Lcom/nibiru/lib/BTInputDeviceController;)Landroid/content/Context;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCursorReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final isCursorShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->k(Lcom/nibiru/lib/BTInputDeviceController;)Z

    move-result v0

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

    const/4 v0, 0x0

    return v0
.end method

.method public final isIME()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final onAccEvent([Lcom/nibiru/lib/controller/AccEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onBluetoothStateChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nibiru/lib/BTInputDeviceController$a;->isEnable()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->i(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v1, 0x406

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onControllerStateChange(IILcom/nibiru/lib/BTDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nibiru/lib/BTInputDeviceController$a;->isEnable()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->i(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onCursorSpeedChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->k(Lcom/nibiru/lib/BTInputDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->i(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v1, 0x40a

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onErrorReportReady(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->j(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnInfoReportReadyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p2, p1, v1}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onInputViewResult(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onKeyEvent([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->k(Lcom/nibiru/lib/BTInputDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->l(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, p1

    new-array v2, v0, [Landroid/view/KeyEvent;

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v3, 0x809

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent()Landroid/view/KeyEvent;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onKeyStateUpdate(I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onMotionSenseDataChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onStickEvent([Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->k(Lcom/nibiru/lib/BTInputDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->l(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, p1

    new-array v2, v0, [Landroid/view/MotionEvent;

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v3, 0x809

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/nibiru/lib/BluexHandler;->generateMessage(ILjava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$a;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BluexHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/nibiru/lib/BTUtil;->getMotionEvent(Lcom/nibiru/lib/controller/StickEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onVirtualServiceState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setCursorModeForce(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
