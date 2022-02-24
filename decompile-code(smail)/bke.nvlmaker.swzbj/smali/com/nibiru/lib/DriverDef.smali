.class public Lcom/nibiru/lib/DriverDef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private an:Ljava/lang/String;

.field private deviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/DriverDef$1;

    invoke-direct {v0}, Lcom/nibiru/lib/DriverDef$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/DriverDef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/DriverDef;->deviceType:I

    iput-object p2, p0, Lcom/nibiru/lib/DriverDef;->an:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/DriverDef;->deviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/DriverDef;->an:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/DriverDef;->deviceType:I

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/DriverDef;->an:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/DriverDef;->deviceType:I

    return-void
.end method

.method public setDriverName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/DriverDef;->an:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/DriverDef;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/DriverDef;->an:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
