.class public interface abstract Lcom/nibiru/lib/controller/IControllerInternalService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/ControllerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;
    }
.end annotation


# static fields
.field public static final STATE_ENABLE_CURSOR:I = 0x1

.field public static final STATE_ENABLE_DPAD:I = 0x2

.field public static final VIRTUAL_SERVER_BT:I = 0x1

.field public static final VIRTUAL_SERVER_WIFI:I = 0x0

.field public static final VIRTUAL_SERVICE_CONN_FAILED:I = 0x3

.field public static final VIRTUAL_SERVICE_CONN_SUCC:I = 0x2

.field public static final VIRTUAL_SERVICE_FAILED:I = 0x1

.field public static final VIRTUAL_SERVICE_PLAYER_BASE:I = 0xff

.field public static final VIRTUAL_SERVICE_SUCC:I


# virtual methods
.method public abstract configureService(I)V
.end method

.method public abstract connectVirtualService(Ljava/lang/String;I)V
.end method

.method public abstract deleteDevice(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract disconnectVirtualService(I)V
.end method

.method public abstract getKeyState2(I)I
.end method

.method public abstract getServiceState()Lcom/nibiru/lib/controller/ControllerServiceState;
.end method

.method public abstract requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract requestInfoReport(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract resetCurrentApp()V
.end method

.method public abstract sendVirutalData([B)Z
.end method

.method public abstract setDirectPressMode(Z)V
.end method

.method public abstract setIME(Z)V
.end method

.method public abstract setInternalStateListener(Lcom/nibiru/lib/controller/IControllerInternalService$OnInternalStateChanged;)V
.end method

.method public abstract setNibiruIMEShow(Z)V
.end method

.method public abstract setNibiruPlayer(Z)V
.end method

.method public abstract setOneDirectMode(Z)V
.end method

.method public abstract setPlayerOrder(II)V
.end method

.method public abstract setReportListener(Lcom/nibiru/lib/controller/OnReportListener;)V
.end method

.method public abstract setSysCursorMode(Z)V
.end method

.method public abstract setVirtualServiceListener(Lcom/nibiru/lib/controller/OnVirutalServiceListener;)V
.end method

.method public abstract startVirtualService(I)V
.end method

.method public abstract stopVirtualService(I)V
.end method

.method public abstract updateDeviceInfo(Lcom/nibiru/lib/BTDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method
