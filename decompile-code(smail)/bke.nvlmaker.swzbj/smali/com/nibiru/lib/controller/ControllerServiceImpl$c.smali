.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private cw:Lcom/nibiru/lib/controller/ControllerDevice;

.field private n:I

.field private state:I


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;IILcom/nibiru/lib/BTDevice;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->n:I

    iput p3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->state:I

    new-instance v0, Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-direct {v0, p4}, Lcom/nibiru/lib/controller/ControllerDevice;-><init>(Lcom/nibiru/lib/BTDevice;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cw:Lcom/nibiru/lib/controller/ControllerDevice;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Lcom/nibiru/lib/controller/ControllerDevice;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/ControllerDevice;->getPlayerOrder()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->n:I

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/ControllerDevice;->getState()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->state:I

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cw:Lcom/nibiru/lib/controller/ControllerDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->o()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->n(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->n(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnStateListener;

    move-result-object v0

    iget v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->n:I

    iget v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->state:I

    iget-object v4, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$c;->cw:Lcom/nibiru/lib/controller/ControllerDevice;

    invoke-interface {v0, v2, v3, v4}, Lcom/nibiru/lib/controller/OnStateListener;->onControllerStateChanged(IILcom/nibiru/lib/controller/ControllerDevice;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "EMPTY LISTENER"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
