.class final Lcom/nibiru/lib/controller/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/h;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dC:Lcom/nibiru/lib/controller/h;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->e(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->e(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v1}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->d(Lcom/nibiru/lib/controller/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->d(Lcom/nibiru/lib/controller/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->d(Lcom/nibiru/lib/controller/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/h$2;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0, v2}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method
