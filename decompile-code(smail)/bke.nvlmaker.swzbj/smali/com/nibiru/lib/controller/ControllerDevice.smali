.class public Lcom/nibiru/lib/controller/ControllerDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DUR_INFINITE:I = 0x0

.field public static final POS_LEFT:I = 0x0

.field public static final POS_RIGHT:I = 0x1

.field public static final STATE_CONN:I = 0x1

.field public static final STATE_CONNING:I = 0x0

.field public static final STATE_DISCONN:I = 0x3

.field public static final STATE_DISCONNING:I = 0x2


# instance fields
.field private ba:I

.field private bb:Ljava/lang/String;

.field private deviceId:I

.field private deviceName:Ljava/lang/String;

.field private features:I

.field private isExternal:Z

.field private isSupportAcc:Z

.field private isSupportGyro:Z

.field private playerOrder:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/ControllerDevice$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/ControllerDevice$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    const-string v0, "NO DEVICE"

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Lcom/nibiru/lib/BTDevice;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    const-string v0, "NO DEVICE"

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getDeviceAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getDeviceType()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getState()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->isExternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getFeatures()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->isSupportAcc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->isSupportGyro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x1450

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    return-object v0
.end method

.method public getBTDevice()Lcom/nibiru/lib/BTDevice;
    .locals 2

    new-instance v0, Lcom/nibiru/lib/BTDevice;

    invoke-direct {v0}, Lcom/nibiru/lib/BTDevice;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/BTDevice;->setDeviceAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/BTDevice;->setDeviceName(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/BTDevice;->setDeviceType(I)V

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverType()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    return v0
.end method

.method public getFeatures()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    return v0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    return v0
.end method

.method public isConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    return v0
.end method

.method public isSupportAcc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    return v0
.end method

.method public isSupportGyro()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDriverType(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    return-void
.end method

.method public setExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    return-void
.end method

.method public setFeatures(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    return-void
.end method

.method public setSupportAcc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    return-void
.end method

.method public setSupportGyro(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControllerDevice [playerOrder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportGyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->ba:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isExternal:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->bb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->features:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportAcc:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerDevice;->isSupportGyro:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
