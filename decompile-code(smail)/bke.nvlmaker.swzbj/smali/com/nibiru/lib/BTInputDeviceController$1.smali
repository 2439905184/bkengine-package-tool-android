.class final Lcom/nibiru/lib/BTInputDeviceController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/BTInputDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic P:Lcom/nibiru/lib/BTInputDeviceController;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {p2}, Lcom/nibiru/lib/controller/IBluexService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nibiru/lib/controller/IBluexService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Lcom/nibiru/lib/controller/IBluexService;)V

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->b(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/controller/IBluexService;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1}, Lcom/nibiru/lib/BTInputDeviceController;->c(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/controller/IBluexListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/IBluexService;->registerListener(Lcom/nibiru/lib/controller/IBluexListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->d(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTServiceConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->d(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTServiceConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/OnBTServiceConnectionListener;->onBTDeviceServiceConnected()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "service disconnected"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Lcom/nibiru/lib/controller/IBluexService;)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->d(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTServiceConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->d(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTServiceConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/OnBTServiceConnectionListener;->onBTDeviceServiceDisconnected()V

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$1;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;

    move-result-object v0

    const/16 v1, 0xff

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nibiru/lib/BluexHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
