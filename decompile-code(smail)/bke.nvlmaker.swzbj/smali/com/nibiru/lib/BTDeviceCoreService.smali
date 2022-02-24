.class public interface abstract Lcom/nibiru/lib/BTDeviceCoreService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/BTDeviceService;


# virtual methods
.method public abstract allocateDeviceId(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract configureBluexService(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getConfigureListener()Lcom/nibiru/lib/OnBTDeviceConfigureListener;
.end method

.method public abstract getReportListener()Lcom/nibiru/lib/OnInfoReportReadyListener;
.end method

.method public abstract removeConfigureListener()V
.end method

.method public abstract removeReportListener()V
.end method

.method public abstract requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestDriverList()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestInfoReport(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestSetPlayerOrder(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setConfigureListener(Lcom/nibiru/lib/OnBTDeviceConfigureListener;)V
.end method

.method public abstract setReportListener(Lcom/nibiru/lib/OnInfoReportReadyListener;)V
.end method
