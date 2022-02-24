.class final Lcom/nibiru/lib/controller/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/StickSimService;
.implements Lcom/nibiru/lib/controller/StickSimServiceHandler2$OnStickSimChangeListener;


# instance fields
.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nibiru/lib/controller/l;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    new-instance v0, Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-direct {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;-><init>(Lcom/nibiru/lib/controller/ControllerService;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    return-void
.end method

.method public static isHideStickEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static pause()V
    .locals 0

    return-void
.end method

.method public static resume()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final OnStickSimChange(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->sendKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->exit()V

    return-void
.end method

.method public final getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    move-result-object v0

    return-object v0
.end method

.method public final handleStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->handleStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V

    return-void
.end method

.method public final isStart()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->isStart()Z

    move-result v0

    return v0
.end method

.method public final setHideStickEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setHideStickEvent(Z)V

    return-void
.end method

.method public final setIntervalTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setIntervalTime(I)V

    return-void
.end method

.method public final setKeyNum(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setKeyNum(I)V

    return-void
.end method

.method public final setKeyTrans([I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setKeyTrans([I)V

    return-void
.end method

.method public final setMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setMode(I)V

    return-void
.end method

.method public final setStickLoc(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->setStickLoc(I)V

    return-void
.end method

.method public final startStickSim()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->startStickSim()V

    return-void
.end method

.method public final startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V

    return-void
.end method

.method public final stop(I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->stopStickSimUnit(I)V

    return-void
.end method

.method public final stopStickSim()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/l;->es:Lcom/nibiru/lib/controller/StickSimServiceHandler2;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler2;->stopStickSim()V

    return-void
.end method
