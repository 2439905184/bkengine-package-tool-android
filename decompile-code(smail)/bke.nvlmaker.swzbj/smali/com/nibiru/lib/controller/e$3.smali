.class final Lcom/nibiru/lib/controller/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/e;->hideCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ds:Lcom/nibiru/lib/controller/e;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "REMOVE CURSOR"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->o(Lcom/nibiru/lib/controller/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->b(Lcom/nibiru/lib/controller/e;I)V

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$3;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nibiru/lib/controller/e$3$1;

    invoke-direct {v2, p0}, Lcom/nibiru/lib/controller/e$3$1;-><init>(Lcom/nibiru/lib/controller/e$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
