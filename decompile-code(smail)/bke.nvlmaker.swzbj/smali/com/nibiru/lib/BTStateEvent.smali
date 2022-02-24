.class public Lcom/nibiru/lib/BTStateEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/BTStateEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/BTStateEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/BTStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/BTStateEvent;->state:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/BTStateEvent;->state:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x406

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTStateEvent;->state:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTStateEvent;->state:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTStateEvent;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
