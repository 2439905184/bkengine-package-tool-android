.class final Lcom/nibiru/lib/controller/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/i$a;
    }
.end annotation


# instance fields
.field private aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private dI:Landroid/app/Instrumentation;

.field private db:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/i;->dI:Landroid/app/Instrumentation;

    iput-object p1, p0, Lcom/nibiru/lib/controller/i;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/i;)Lcom/nibiru/lib/controller/ControllerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->aD:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/i;)Landroid/app/Instrumentation;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->dI:Landroid/app/Instrumentation;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->db:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->db:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/InputEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "insturment-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/i;->db:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->db:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nibiru/lib/controller/i;->db:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/i;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/i;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/i$a;

    invoke-direct {v1, p0, p1}, Lcom/nibiru/lib/controller/i$a;-><init>(Lcom/nibiru/lib/controller/i;Landroid/view/InputEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
