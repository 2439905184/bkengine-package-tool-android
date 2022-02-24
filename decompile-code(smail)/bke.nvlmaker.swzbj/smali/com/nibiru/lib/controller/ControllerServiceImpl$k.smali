.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {p2}, Lcom/nibiru/lib/controller/IBluexService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nibiru/lib/controller/IBluexService;

    move-result-object v1

    iput-object v1, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    const-string v0, "Why controller service is null after asInterface"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/IBluexService;->getServiceToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/controller/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/m;->I()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/m;

    move-result-object v0

    iget v0, v0, Lcom/nibiru/lib/controller/m;->versionCode:I

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VER: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bt:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->unregister()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->c(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bl:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/IBluexService;->registerListener(Lcom/nibiru/lib/controller/IBluexListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->i()V

    :try_start_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceState;->isNibiruSupport()Z

    move-result v0

    iput-boolean v0, v1, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bw:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_6

    :try_start_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nibiru/lib/controller/IBluexService;->enableGlobalControll(ZLjava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDeviceList()Ljava/util/List;
    :try_end_4
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->hasDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bE:Lcom/nibiru/lib/controller/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0, v3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->showGameGuide(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_4
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->q:Lcom/nibiru/lib/controller/IBluexService;

    const-string v0, "Service connection failed"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$k;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;->onControllerServiceReady(Z)V

    :cond_0
    return-void
.end method
