.class final Lcom/nibiru/lib/controller/e$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dt:Lcom/nibiru/lib/controller/e$2;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/e$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e$2$1;->dt:Lcom/nibiru/lib/controller/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2$1;->dt:Lcom/nibiru/lib/controller/e$2;

    iget-object v0, v0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e$2$1;->dt:Lcom/nibiru/lib/controller/e$2;

    iget-object v1, v1, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v1

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2$1;->dt:Lcom/nibiru/lib/controller/e$2;

    iget-object v2, v2, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->n(Lcom/nibiru/lib/controller/e;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nibiru/lib/controller/ControllerService;->notifyCursorShow(ZI)V

    return-void
.end method
