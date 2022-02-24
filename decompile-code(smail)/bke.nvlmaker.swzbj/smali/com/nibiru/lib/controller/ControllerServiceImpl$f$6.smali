.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->onKeyStateUpdate(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cF:[I

.field private final synthetic cr:I

.field private synthetic cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cr:I

    iput-object p3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cF:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->h(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->h(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/a;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cr:I

    iget-object v2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$6;->cF:[I

    invoke-virtual {v0, v1, v2}, Lcom/nibiru/lib/controller/a;->a(I[I)V

    :cond_0
    return-void
.end method
