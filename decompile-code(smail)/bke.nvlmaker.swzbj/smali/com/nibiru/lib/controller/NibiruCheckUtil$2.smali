.class final Lcom/nibiru/lib/controller/NibiruCheckUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/NibiruCheckUtil;->checkInstallNibiru()V
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

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$2;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$2;->ea:Lcom/nibiru/lib/controller/NibiruCheckUtil;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V

    return-void
.end method
