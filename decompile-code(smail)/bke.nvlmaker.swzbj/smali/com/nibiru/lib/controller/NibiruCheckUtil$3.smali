.class final Lcom/nibiru/lib/controller/NibiruCheckUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/NibiruCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->c(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->d(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->getCircleProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)V

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->start()V

    return-void
.end method
