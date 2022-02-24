.class final Lcom/nibiru/lib/controller/e$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ds:Lcom/nibiru/lib/controller/e;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/controller/e$1;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->b(Lcom/nibiru/lib/controller/e;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v1, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v1}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;)F

    move-result v1

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->b(Lcom/nibiru/lib/controller/e;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v1}, Lcom/nibiru/lib/controller/e;->c(Lcom/nibiru/lib/controller/e;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/nibiru/lib/controller/e$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->d(Lcom/nibiru/lib/controller/e;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v1, p0, Lcom/nibiru/lib/controller/e$1;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v1}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/content/Context;)Z

    goto :goto_0
.end method
