.class public Lcom/nibiru/lib/controller/SimpleControllerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;
.implements Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;
.implements Lcom/nibiru/lib/controller/OnAccListener;
.implements Lcom/nibiru/lib/controller/OnGyroListener;
.implements Lcom/nibiru/lib/controller/OnKeyListener;
.implements Lcom/nibiru/lib/controller/OnMotionSenseListener;
.implements Lcom/nibiru/lib/controller/OnSimpleStickListener;
.implements Lcom/nibiru/lib/controller/OnStateListener;
.implements Lcom/nibiru/lib/controller/OnStickListener;


# instance fields
.field private aY:Z

.field private aZ:Z

.field protected mArrowId:I

.field protected mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

.field protected mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

.field protected mControllerService:Lcom/nibiru/lib/controller/ControllerService;

.field protected mCursorService:Lcom/nibiru/lib/controller/CursorService;

.field protected mDpadService:Lcom/nibiru/lib/controller/DpadService;

.field protected mMouseStartKey:I

.field protected mStickSimService:Lcom/nibiru/lib/controller/StickSimService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aY:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aZ:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mArrowId:I

    const/16 v0, 0x6c

    iput v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mMouseStartKey:I

    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    iget-object v1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/StickSimService;->getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/StickSimService;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/StickSimService;->stopStickSim()V

    goto :goto_0
.end method


# virtual methods
.method public disableStickSim()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->c(Z)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableStickSimDir4()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/StickSimService;->setMode(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->c(Z)V

    return-void
.end method

.method public enableStickSimDir8()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/StickSimService;->setMode(I)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->c(Z)V

    return-void
.end method

.method public getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    return-object v0
.end method

.method public getContinuesKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

    return-object v0
.end method

.method public getControllerService()Lcom/nibiru/lib/controller/ControllerService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    return-object v0
.end method

.method public getCursorSerivce()Lcom/nibiru/lib/controller/CursorService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    return-object v0
.end method

.method public getDpadService()Lcom/nibiru/lib/controller/DpadService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mDpadService:Lcom/nibiru/lib/controller/DpadService;

    return-object v0
.end method

.method public getStickSimService()Lcom/nibiru/lib/controller/StickSimService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    return-object v0
.end method

.method public hasDeviceConnected()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isServiceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceException;

    const-string v1, "Controller Service is not connected to driver, please install your driver first and wait for connection build"

    invoke-direct {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->hasDeviceConnected()Z

    move-result v0

    return v0
.end method

.method protected initNibiruService()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->register(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public isControllerServiceEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aZ:Z

    return v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onCombKeyEventOver(Ljava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 0

    return-void
.end method

.method public onCombKeyEventStart(Ljava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 0

    return-void
.end method

.method public onControllerAccEvent(ILcom/nibiru/lib/controller/AccEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerGyroEvent(ILcom/nibiru/lib/controller/GyroEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerKeyDown(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mMouseStartKey:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mMouseStartKey:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/CursorService;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/CursorService;->hideCursor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mArrowId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    iget v1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mArrowId:I

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/CursorService;->createCursor(I)V

    goto :goto_0
.end method

.method public onControllerKeyUp(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerServiceReady(Z)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aZ:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->hasDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isShowTip"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isAutoClose"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v1, p0, v0}, Lcom/nibiru/lib/controller/ControllerService;->showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onControllerStateChanged(IILcom/nibiru/lib/controller/ControllerDevice;)V
    .locals 0

    return-void
.end method

.method public onControllerStickEvent(ILcom/nibiru/lib/controller/StickEvent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nibiru/lib/controller/Controller;->getControllerService()Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getStickSimService()Lcom/nibiru/lib/controller/StickSimService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getCursorService()Lcom/nibiru/lib/controller/CursorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getDpadService()Lcom/nibiru/lib/controller/DpadService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mDpadService:Lcom/nibiru/lib/controller/DpadService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setAccListener(Lcom/nibiru/lib/controller/OnAccListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setGyroListener(Lcom/nibiru/lib/controller/OnGyroListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setMotionSenseListener(Lcom/nibiru/lib/controller/OnMotionSenseListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/CombKeyService;->setCombKeyListener(Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ContinuesKeyService;->registerContinuesDirectionKey()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, v3}, Lcom/nibiru/lib/controller/ControllerService;->setAutoGameGuide(Z)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, v3}, Lcom/nibiru/lib/controller/ControllerService;->setEnableLR2(Z)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/CursorService;->setEventMode(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    const/16 v1, 0x14

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/nibiru/lib/controller/CursorService;->setSensitivity(II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0, v3}, Lcom/nibiru/lib/controller/CursorService;->setEnableDisplayAtPrePos(Z)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    const/16 v1, 0x6c

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/CursorService;->setHideKey(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0, v3}, Lcom/nibiru/lib/controller/ControllerService;->checkNibiruInstall(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->initNibiruService()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    :cond_0
    return-void
.end method

.method public onLeftStickChanged(IFF)V
    .locals 0

    return-void
.end method

.method public onMotionSenseChanged(ILcom/nibiru/lib/controller/MotionSenseEvent;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    const/16 v3, 0x80

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isServiceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nibiru/lib/controller/ControllerService;->checkNibiruInstall(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->initNibiruService()V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, v2}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aY:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->hasDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    check-cast v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->cp:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    check-cast v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-boolean v0, v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;->bD:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->showGameGuide(Z)V

    :cond_4
    return-void
.end method

.method public onRightStickChanged(IFF)V
    .locals 0

    return-void
.end method

.method public setArrowResId(I)V
    .locals 1

    iput p1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mArrowId:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/CursorService;->setCursorResource(I)V

    :cond_0
    return-void
.end method

.method public setCursorSensitivity(II)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0, p1, p2}, Lcom/nibiru/lib/controller/CursorService;->setSensitivity(II)V

    :cond_0
    return-void
.end method

.method public setCursorStartKey(I)V
    .locals 1

    iput p1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mMouseStartKey:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/CursorService;->setHideKey(I)V

    :cond_0
    return-void
.end method

.method public setEnableL2R2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->setEnableLR2(Z)V

    :cond_0
    return-void
.end method

.method public setEnterKeyCode(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->setEnterKeyCode(I)V

    :cond_0
    return-void
.end method

.method protected setScreenOnMode(Z)V
    .locals 2

    const/16 v1, 0x80

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    iput-boolean p1, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->aY:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public showGameGuide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isServiceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/SimpleControllerActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->showGameGuide(Z)V

    goto :goto_0
.end method

.method public startCursorMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/SimpleControllerActivity;->getCursorSerivce()Lcom/nibiru/lib/controller/CursorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/CursorService;->createCursor(I)V

    return-void
.end method
