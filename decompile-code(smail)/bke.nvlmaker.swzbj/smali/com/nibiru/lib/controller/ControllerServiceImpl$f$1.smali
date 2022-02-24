.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->onKeyEvent([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cA:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

.field private synthetic cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;[Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    iput-object p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;->cA:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$1;->cA:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->b([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    return-void
.end method
