.class final Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->e(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1$2;->ec:Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3$1;)Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    move-result-object v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil$3;)Lcom/nibiru/lib/controller/NibiruCheckUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->e(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil;Ljava/io/File;)V

    :cond_1
    return-void
.end method
