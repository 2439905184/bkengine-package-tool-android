.class public Lcom/nibiru/lib/BTDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final STATE_CONN:I = 0x1

.field public static final STATE_CONNING:I = 0x0

.field public static final STATE_DISCONN:I = 0x3

.field public static final STATE_DISCONNING:I = 0x2

.field public static final STATE_STOP:I = 0x4

.field protected static final serialVersionUID:J = 0x3e1599f613442212L


# instance fields
.field protected connectTime:J

.field protected deviceAddr:Ljava/lang/String;

.field protected deviceId:I

.field protected deviceName:Ljava/lang/String;

.field protected deviceType:I

.field protected features:I

.field protected isConnected:Z

.field protected isExternal:Z

.field protected isSupportAcc:Z

.field protected isSupportGyro:Z

.field protected lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

.field protected lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

.field protected mDeviceInfo:Lcom/nibiru/lib/c;

.field protected playerOrder:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/BTDevice$1;

    invoke-direct {v0}, Lcom/nibiru/lib/BTDevice$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/BTDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Unknown Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    :cond_1
    iput v3, p0, Lcom/nibiru/lib/BTDevice;->state:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v6, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v6, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/nibiru/lib/BTDevice;->setConnectTime(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setDeviceAddr(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setDeviceId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setDeviceType(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setConnected(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setPlayerOrder(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setState(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setExternal(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setFeatures(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BTDevice;->setSupportAcc(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/nibiru/lib/BTDevice;->setSupportGyro(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iput-boolean v3, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput-boolean v3, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->state:I

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/BTDevice;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget-boolean v0, p1, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iget-boolean v0, p1, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    iget v0, p1, Lcom/nibiru/lib/BTDevice;->state:I

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iget v0, p1, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iget-object v0, p1, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iget v0, p1, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iget-wide v0, p1, Lcom/nibiru/lib/BTDevice;->connectTime:J

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    iget v0, p1, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    iget-object v0, p1, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v4, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const-string v0, "device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput v3, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZIZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No Device"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    const-string v0, "0:0:0:0:0:0"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput v2, p0, Lcom/nibiru/lib/BTDevice;->features:I

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v3, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iput-boolean p5, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    iput p6, p0, Lcom/nibiru/lib/BTDevice;->state:I

    iput-boolean p7, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    iput p2, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    iput p3, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    iput-object p4, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFeatures(I)V
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/16 v0, 0xbc4

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nibiru/lib/BTDevice;

    iget-object v2, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    iget-object v3, p1, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getConnectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    return-wide v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    return v0
.end method

.method public getDeviceInfo()Lcom/nibiru/lib/c;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->mDeviceInfo:Lcom/nibiru/lib/c;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    return v0
.end method

.method public getFeatures()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    return v0
.end method

.method public getLastKeyEvent()Lcom/nibiru/lib/controller/ControllerKeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    return-object v0
.end method

.method public getLastStickEvent()Lcom/nibiru/lib/controller/StickEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    return-object v0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    return v0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    return v0
.end method

.method public isHost()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportAcc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    return v0
.end method

.method public isSupportGyro()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    return v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    const-string v2, "0:0:0:0:0:0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordConnectTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    return-void
.end method

.method public removeFeatures(I)V
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    return-void
.end method

.method public setConnectTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    return-void
.end method

.method public setDeviceAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    return-void
.end method

.method public setExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    return-void
.end method

.method public setFeatures(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDevice;->features:I

    return-void
.end method

.method public setLastKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->lastKeyEvent:Lcom/nibiru/lib/controller/ControllerKeyEvent;

    return-void
.end method

.method public setLastStickEvent(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTDevice;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDevice;->state:I

    return-void
.end method

.method public setSupportAcc(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    goto :goto_0
.end method

.method public setSupportGyro(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTDevice [deviceName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDevice;->features:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportGyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

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
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/nibiru/lib/BTDevice;->connectTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isConnected:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isExternal:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/BTDevice;->features:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isSupportAcc:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/BTDevice;->isSupportGyro:Z

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method
