.class Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallReceiver"
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;-><init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const-string v1, "package:com.nibiru"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "package:com.nibiru.play"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$PackageInstallReceiver;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->d(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method
