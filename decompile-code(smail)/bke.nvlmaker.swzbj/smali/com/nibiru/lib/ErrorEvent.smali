.class public Lcom/nibiru/lib/ErrorEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private deviceId:I

.field protected errorFull:Ljava/lang/String;

.field protected errorShort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/ErrorEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/ErrorEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/ErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorShort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorFull:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/ErrorEvent;->deviceId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x40a

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/ErrorEvent;->deviceId:I

    return v0
.end method

.method public getErrorFull()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorFull:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorShort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorShort:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/ErrorEvent;->deviceId:I

    return-void
.end method

.method public setErrorFull(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/ErrorEvent;->errorFull:Ljava/lang/String;

    return-void
.end method

.method public setErrorShort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/ErrorEvent;->errorShort:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/ErrorEvent;->errorFull:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nibiru/lib/ErrorEvent;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
