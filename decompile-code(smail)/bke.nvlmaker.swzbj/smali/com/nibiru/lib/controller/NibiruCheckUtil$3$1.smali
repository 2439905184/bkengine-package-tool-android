.class final Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->retrieveApkFromAssets()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->e(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$1;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$1;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->g(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;Ljava/io/File;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->e(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->eb:Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$3;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$3;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
