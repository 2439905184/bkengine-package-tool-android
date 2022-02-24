.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private cy:Lcom/nibiru/lib/controller/GyroEvent;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/GyroEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cy:Lcom/nibiru/lib/controller/GyroEvent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->s()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->u(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnGyroListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cy:Lcom/nibiru/lib/controller/GyroEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->u(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnGyroListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cy:Lcom/nibiru/lib/controller/GyroEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/GyroEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$e;->cy:Lcom/nibiru/lib/controller/GyroEvent;

    invoke-interface {v0, v2, v3}, Lcom/nibiru/lib/controller/OnGyroListener;->onControllerGyroEvent(ILcom/nibiru/lib/controller/GyroEvent;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
