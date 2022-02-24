.class final Lcom/nibiru/lib/controller/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v3}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget v0, v0, Lcom/nibiru/lib/controller/e;->cV:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget v2, v2, Lcom/nibiru/lib/controller/e;->cV:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x7da

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x298

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/e;->w()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->k(Lcom/nibiru/lib/controller/e;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->l(Lcom/nibiru/lib/controller/e;)I

    move-result v0

    if-gez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget v2, v2, Lcom/nibiru/lib/controller/e;->dl:I

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget v2, v2, Lcom/nibiru/lib/controller/e;->dm:I

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v3}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->d(Lcom/nibiru/lib/controller/e;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->m(Lcom/nibiru/lib/controller/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x100

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nibiru/lib/controller/e$2$1;

    invoke-direct {v2, p0}, Lcom/nibiru/lib/controller/e$2$1;-><init>(Lcom/nibiru/lib/controller/e$2;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit v1

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v0, v0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v2, v2, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v3}, Lcom/nibiru/lib/controller/e;->h(Lcom/nibiru/lib/controller/e;)I

    move-result v3

    iget-object v4, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v4}, Lcom/nibiru/lib/controller/e;->i(Lcom/nibiru/lib/controller/e;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/nibiru/lib/controller/e;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CURSOR FILE PATH IS NOT EXIST! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    iget-object v2, v2, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/widget/ImageView;)V

    monitor-exit v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->k(Lcom/nibiru/lib/controller/e;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v0}, Lcom/nibiru/lib/controller/e;->j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    invoke-static {v2}, Lcom/nibiru/lib/controller/e;->l(Lcom/nibiru/lib/controller/e;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e$2;->ds:Lcom/nibiru/lib/controller/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/e;->a(Lcom/nibiru/lib/controller/e;Landroid/widget/ImageView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
