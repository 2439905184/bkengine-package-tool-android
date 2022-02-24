.class public Lcom/nibiru/lib/ConnectionEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected device:Lcom/nibiru/lib/BTDevice;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/ConnectionEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/ConnectionEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/nibiru/lib/BTDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    iput-object p2, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    new-instance v0, Lcom/nibiru/lib/BTDevice;

    invoke-direct {v0, p1}, Lcom/nibiru/lib/BTDevice;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x405

    return v0
.end method

.method public getDevice()Lcom/nibiru/lib/BTDevice;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    return v0
.end method

.method public setDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionEvent [device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/ConnectionEvent;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/ConnectionEvent;->device:Lcom/nibiru/lib/BTDevice;

    invoke-virtual {v0, p1, p2}, Lcom/nibiru/lib/BTDevice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
