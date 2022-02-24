.class public Lcom/nibiru/lib/BTDeviceManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBTDeviceSevice()Lcom/nibiru/lib/BTDeviceService;
    .locals 2

    const-class v1, Lcom/nibiru/lib/BTDeviceManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/nibiru/lib/BTInputDeviceController;

    invoke-direct {v0}, Lcom/nibiru/lib/BTInputDeviceController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
