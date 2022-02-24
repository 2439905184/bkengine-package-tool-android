.class public Lcom/nibiru/lib/DeviceStateEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected deviceList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/DeviceStateEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/DeviceStateEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/DeviceStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/nibiru/lib/DeviceStateEvent;-><init>()V

    iget-object v0, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    sget-object v1, Lcom/nibiru/lib/BTDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/nibiru/lib/DeviceStateEvent;-><init>()V

    iget-object v0, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x407

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method public setDeviceList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/DeviceStateEvent;->deviceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
