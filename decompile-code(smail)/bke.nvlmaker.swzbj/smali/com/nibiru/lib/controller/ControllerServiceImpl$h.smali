.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field private cI:Lcom/nibiru/lib/controller/MotionSenseEvent;

.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/MotionSenseEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cI:Lcom/nibiru/lib/controller/MotionSenseEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->t()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->v(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnMotionSenseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cI:Lcom/nibiru/lib/controller/MotionSenseEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->v(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnMotionSenseListener;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cI:Lcom/nibiru/lib/controller/MotionSenseEvent;

    invoke-virtual {v2}, Lcom/nibiru/lib/controller/MotionSenseEvent;->getPlayerOrder()I

    move-result v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$h;->cI:Lcom/nibiru/lib/controller/MotionSenseEvent;

    invoke-interface {v0, v2, v3}, Lcom/nibiru/lib/controller/OnMotionSenseListener;->onMotionSenseChanged(ILcom/nibiru/lib/controller/MotionSenseEvent;)V

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
