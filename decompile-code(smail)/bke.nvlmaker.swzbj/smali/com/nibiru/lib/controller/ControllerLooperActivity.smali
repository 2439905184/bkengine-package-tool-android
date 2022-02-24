.class public Lcom/nibiru/lib/controller/ControllerLooperActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;
.implements Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;
.implements Lcom/nibiru/lib/controller/OnKeyListener;
.implements Lcom/nibiru/lib/controller/OnStateListener;
.implements Lcom/nibiru/lib/controller/OnStickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ControllerLooperActivity"


# instance fields
.field private aY:Z

.field private aZ:Z

.field protected mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

.field protected mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

.field protected mControllerService:Lcom/nibiru/lib/controller/ControllerService;

.field protected mCursorService:Lcom/nibiru/lib/controller/CursorService;

.field protected mDpadService:Lcom/nibiru/lib/controller/DpadService;

.field protected mStickSimService:Lcom/nibiru/lib/controller/StickSimService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aY:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aZ:Z

    return-void
.end method


# virtual methods
.method public getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    return-object v0
.end method

.method public getContinuesKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

    return-object v0
.end method

.method public getControllerService()Lcom/nibiru/lib/controller/ControllerService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    return-object v0
.end method

.method public getCursorSerivce()Lcom/nibiru/lib/controller/CursorService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    return-object v0
.end method

.method public getDpadService()Lcom/nibiru/lib/controller/DpadService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mDpadService:Lcom/nibiru/lib/controller/DpadService;

    return-object v0
.end method

.method public getStickSimService()Lcom/nibiru/lib/controller/StickSimService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    return-object v0
.end method

.method public isControllerServiceEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aZ:Z

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

.method public onControllerKeyDown(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerKeyUp(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerServiceReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aZ:Z

    return-void
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
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/nibiru/lib/controller/d;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/d;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getStickSimService()Lcom/nibiru/lib/controller/StickSimService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mStickSimService:Lcom/nibiru/lib/controller/StickSimService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mContinuesKeyService:Lcom/nibiru/lib/controller/ContinuesKeyService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getCursorService()Lcom/nibiru/lib/controller/CursorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mCursorService:Lcom/nibiru/lib/controller/CursorService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getDpadService()Lcom/nibiru/lib/controller/DpadService;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mDpadService:Lcom/nibiru/lib/controller/DpadService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mCombKeyService:Lcom/nibiru/lib/controller/CombKeyService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/CombKeyService;->setCombKeyListener(Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

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

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->unregister()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p2}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p2}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/16 v2, 0x80

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method

.method protected setScreenOnMode(Z)V
    .locals 2

    const/16 v1, 0x80

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerLooperActivity;->aY:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public startCursorMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerLooperActivity;->getCursorSerivce()Lcom/nibiru/lib/controller/CursorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/CursorService;->createCursor(I)V

    return-void
.end method
