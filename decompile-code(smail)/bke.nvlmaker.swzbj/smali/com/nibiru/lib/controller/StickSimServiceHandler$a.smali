.class final Lcom/nibiru/lib/controller/StickSimServiceHandler$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/StickSimServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

.field private synthetic ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;->ez:Lcom/nibiru/lib/controller/StickSimServiceHandler;

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickSimServiceHandler;->g(Lcom/nibiru/lib/controller/StickSimServiceHandler;)Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$a;->cG:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/StickSimServiceHandler$OnStickSimChangeListener;->OnStickSimChange(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :cond_0
    return-void
.end method
