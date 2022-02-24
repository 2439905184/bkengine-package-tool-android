.class final Lcom/nibiru/lib/controller/NibiruCheckUtil$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/NibiruCheckUtil;->showDeviceTip(Lcom/nibiru/lib/controller/ControllerServiceImpl;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ed:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private final synthetic ee:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;Lcom/nibiru/lib/controller/ControllerServiceImpl;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;->ed:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iput-object p3, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;->ee:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;->ed:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;->ed:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;->ee:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
