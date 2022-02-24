.class public final Lcom/nibiru/lib/controller/d;
.super Lcom/nibiru/lib/controller/ControllerServiceImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/d$a;,
        Lcom/nibiru/lib/controller/d$b;,
        Lcom/nibiru/lib/controller/d$c;,
        Lcom/nibiru/lib/controller/d$d;
    }
.end annotation


# instance fields
.field private bd:Ljava/util/Map;

.field private be:Lcom/nibiru/lib/controller/d$c;

.field private mHandler:Landroid/os/Handler;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/d;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/d;->be:Lcom/nibiru/lib/controller/d$c;

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/d;->p:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/d;->bB:Z

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/d;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/d;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(IILcom/nibiru/lib/BTDevice;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(IILcom/nibiru/lib/BTDevice;)V

    return-void
.end method

.method public final bridge synthetic a([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/InputEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic checkNibiruInstall(Landroid/content/Context;Z)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->checkNibiruInstall(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic configureService(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->configureService(I)V

    return-void
.end method

.method public final bridge synthetic connectVirtualService(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->connectVirtualService(Ljava/lang/String;I)V

    return-void
.end method

.method public final bridge synthetic debug(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->debug(Z)V

    return-void
.end method

.method public final bridge synthetic deleteDevice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->deleteDevice(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic disconnectVirtualService(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->disconnectVirtualService(I)V

    return-void
.end method

.method public final bridge synthetic enableGlobalControl(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->enableGlobalControl(Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCursorService()Lcom/nibiru/lib/controller/CursorService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getCursorService()Lcom/nibiru/lib/controller/CursorService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDpadService()Lcom/nibiru/lib/controller/DpadService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDpadService()Lcom/nibiru/lib/controller/DpadService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDriverVersion()I
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getDriverVersion()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getHandler()Landroid/os/Handler;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getKeyState(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getKeyState(II)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getKeyState2(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getKeyState2(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getKeyStateMap(I)[I
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getKeyStateMap(I)[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMouseSpeed()I
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getMouseSpeed()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getSensorStateService()Lcom/nibiru/lib/controller/SensorStateService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getSensorStateService()Lcom/nibiru/lib/controller/SensorStateService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getStickSimService()Lcom/nibiru/lib/controller/StickSimService;
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getStickSimService()Lcom/nibiru/lib/controller/StickSimService;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getStickState(II)F
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getStickState(II)F

    move-result v0

    return v0
.end method

.method public final bridge synthetic getStickState(I)Lcom/nibiru/lib/controller/StickEvent;
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getStickState(I)Lcom/nibiru/lib/controller/StickEvent;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getVersion()I
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic handleExternalInput(Landroid/view/InputEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasDeviceConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->hasDeviceConnected()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hideInputView()V
    .locals 0

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->hideInputView()V

    return-void
.end method

.method protected final i()V
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->i()V

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/d;->isServiceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/d;->be:Lcom/nibiru/lib/controller/d$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/d;->be:Lcom/nibiru/lib/controller/d$c;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/d$c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "START THREAD!"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/d;->p:Z

    new-instance v0, Lcom/nibiru/lib/controller/d$c;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/d$c;-><init>(Lcom/nibiru/lib/controller/d;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/d;->be:Lcom/nibiru/lib/controller/d$c;

    iget-object v0, p0, Lcom/nibiru/lib/controller/d;->be:Lcom/nibiru/lib/controller/d$c;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/d$c;->start()V

    goto :goto_0
.end method

.method public final bridge synthetic isEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isEnable()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isHostControl()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isHostControl()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isInputViewShow()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isInputViewShow()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isServiceEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isServiceEnable()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isSupportEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isSupportEnable()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isSupportInput()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->isSupportInput()Z

    move-result v0

    return v0
.end method

.method protected final j()Z
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/d;->getDeviceList()Ljava/util/List;
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v6

    move v1, v4

    :goto_0
    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    monitor-exit v6

    move v1, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    monitor-exit v6

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nibiru/lib/controller/ControllerDevice;

    iget-object v2, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/nibiru/lib/controller/d$a;

    invoke-direct {v2, p0, v1}, Lcom/nibiru/lib/controller/d$a;-><init>(Lcom/nibiru/lib/controller/d;Lcom/nibiru/lib/controller/ControllerDevice;)V

    iget-object v8, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nibiru/lib/controller/d;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;

    invoke-direct {v8, p0, v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerDevice;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nibiru/lib/controller/d$a;

    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-virtual {v8}, Lcom/nibiru/lib/controller/ControllerDevice;->getState()I

    move-result v8

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getState()I

    move-result v9

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/nibiru/lib/controller/d;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;

    invoke-direct {v9, p0, v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerDevice;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iput-object v1, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v6

    move v1, v3

    goto/16 :goto_0

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nibiru/lib/controller/d$a;

    move-object v2, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v4

    :goto_5
    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/nibiru/lib/controller/ControllerDevice;->setState(I)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/d;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;

    iget-object v10, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-direct {v9, p0, v10}, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerDevice;)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v10, v2, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-virtual {v10}, Lcom/nibiru/lib/controller/ControllerDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_5

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/nibiru/lib/controller/d;->bd:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_c
    move-object v5, v1

    goto/16 :goto_1
.end method

.method public final bridge synthetic k()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->k()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic l()Z
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->l()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic notifyCursorShow(ZI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->notifyCursorShow(ZI)V

    return-void
.end method

.method public final bridge synthetic register(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->register(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V

    return-void
.end method

.method public final bridge synthetic requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V

    return-void
.end method

.method public final bridge synthetic requestInfoReport(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->requestInfoReport(I)V

    return-void
.end method

.method public final bridge synthetic resetCurrentApp()V
    .locals 0

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->resetCurrentApp()V

    return-void
.end method

.method public final bridge synthetic sendVirutalData([B)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendVirutalData([B)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setAccListener(Lcom/nibiru/lib/controller/OnAccListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAccListener(Lcom/nibiru/lib/controller/OnAccListener;)V

    return-void
.end method

.method public final bridge synthetic setAutoGameGuide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAutoGameGuide(Z)V

    return-void
.end method

.method public final bridge synthetic setAutoKeyUpKeys([I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAutoKeyUpKeys([I)V

    return-void
.end method

.method public final bridge synthetic setAutoKeyUpMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAutoKeyUpMode(Z)V

    return-void
.end method

.method public final bridge synthetic setAutoKeyUpParam(JZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setAutoKeyUpParam(JZ)V

    return-void
.end method

.method public final bridge synthetic setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V

    return-void
.end method

.method public final bridge synthetic setDirectPressMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setDirectPressMode(Z)V

    return-void
.end method

.method public final bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setEnable(Z)V

    return-void
.end method

.method public final bridge synthetic setEnableLR2(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setEnableLR2(Z)V

    return-void
.end method

.method public final bridge synthetic setEnableSystemKey(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setEnableSystemKey(Z)V

    return-void
.end method

.method public final bridge synthetic setEnterKeyCode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setEnterKeyCode(I)V

    return-void
.end method

.method public final bridge synthetic setGyroListener(Lcom/nibiru/lib/controller/OnGyroListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setGyroListener(Lcom/nibiru/lib/controller/OnGyroListener;)V

    return-void
.end method

.method public final bridge synthetic setHandler(Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method public final bridge synthetic setHostController(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setHostController(Z)V

    return-void
.end method

.method public final bridge synthetic setIME(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setIME(Z)V

    return-void
.end method

.method public final bridge synthetic setInternalStateListener(Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setInternalStateListener(Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;)V

    return-void
.end method

.method public final bridge synthetic setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V

    return-void
.end method

.method public final bridge synthetic setMotionSenseListener(Lcom/nibiru/lib/controller/OnMotionSenseListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setMotionSenseListener(Lcom/nibiru/lib/controller/OnMotionSenseListener;)V

    return-void
.end method

.method public final bridge synthetic setNibiruIMEShow(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setNibiruIMEShow(Z)V

    return-void
.end method

.method public final bridge synthetic setNibiruPlayer(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setNibiruPlayer(Z)V

    return-void
.end method

.method public final bridge synthetic setOneDirectMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setOneDirectMode(Z)V

    return-void
.end method

.method public final bridge synthetic setPlayerOrder(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setPlayerOrder(II)V

    return-void
.end method

.method public final bridge synthetic setReportListener(Lcom/nibiru/lib/controller/OnReportListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setReportListener(Lcom/nibiru/lib/controller/OnReportListener;)V

    return-void
.end method

.method public final bridge synthetic setRevExternalMotion(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setRevExternalMotion(Z)V

    return-void
.end method

.method public final bridge synthetic setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V

    return-void
.end method

.method public final bridge synthetic setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V

    return-void
.end method

.method public final bridge synthetic setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V

    return-void
.end method

.method public final bridge synthetic setSupportStickHatMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setSupportStickHatMode(Z)V

    return-void
.end method

.method public final bridge synthetic setSysCursorMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setSysCursorMode(Z)V

    return-void
.end method

.method public final bridge synthetic setVirtualServiceListener(Lcom/nibiru/lib/controller/OnVirutalServiceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->setVirtualServiceListener(Lcom/nibiru/lib/controller/OnVirutalServiceListener;)V

    return-void
.end method

.method public final bridge synthetic showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic showGameGuide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->showGameGuide(Z)V

    return-void
.end method

.method public final bridge synthetic startInputView(Ljava/lang/String;Ljava/lang/String;IILcom/nibiru/lib/controller/OnInputResultListener;)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->startInputView(Ljava/lang/String;Ljava/lang/String;IILcom/nibiru/lib/controller/OnInputResultListener;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic startMotor(IIJ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->startMotor(IIJ)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic startVirtualService(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->startVirtualService(I)V

    return-void
.end method

.method public final bridge synthetic stopMotor(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->stopMotor(II)V

    return-void
.end method

.method public final bridge synthetic stopVirtualService(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->stopVirtualService(I)V

    return-void
.end method

.method public final unregister()V
    .locals 1

    invoke-super {p0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/d;->p:Z

    return-void
.end method

.method public final bridge synthetic updateDeviceInfo(Lcom/nibiru/lib/BTDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->updateDeviceInfo(Lcom/nibiru/lib/BTDevice;)V

    return-void
.end method
