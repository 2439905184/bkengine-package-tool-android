.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private cx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;->cx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->f(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->f(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$d;->cx:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
