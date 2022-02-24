.class public Lcom/nibiru/lib/controller/ControllerServiceState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private bw:Z

.field private cN:I

.field private cO:Z

.field private clientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceState$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/ControllerServiceState$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    iput v1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    iput v2, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientCount()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    return v0
.end method

.method public getSupportType()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    return v0
.end method

.method public isNibiruSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    return v0
.end method

.method public isSupportExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    return v0
.end method

.method public setClientCount(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    return-void
.end method

.method public setNibiruSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    return-void
.end method

.method public setSupportExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    return-void
.end method

.method public setSupportType(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->bw:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->clientCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerServiceState;->cO:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
