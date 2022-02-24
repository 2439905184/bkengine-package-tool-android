.class final Lcom/nibiru/lib/controller/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/h;->C()Z
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

    iput-object p1, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/h$1;)Lcom/nibiru/lib/controller/h;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x580

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v2}, Lcom/nibiru/lib/controller/h;->b(Lcom/nibiru/lib/controller/h;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/h$1$1;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/h$1$1;-><init>(Lcom/nibiru/lib/controller/h$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v1}, Lcom/nibiru/lib/controller/h;->d(Lcom/nibiru/lib/controller/h;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h;->e(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v1}, Lcom/nibiru/lib/controller/h;->c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/nibiru/lib/controller/h$1;->dC:Lcom/nibiru/lib/controller/h;

    invoke-static {v2}, Lcom/nibiru/lib/controller/h;->a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
