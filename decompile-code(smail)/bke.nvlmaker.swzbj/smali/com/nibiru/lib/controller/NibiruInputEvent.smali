.class public Lcom/nibiru/lib/controller/NibiruInputEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private dJ:Landroid/view/InputEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/NibiruInputEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/NibiruInputEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/NibiruInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/view/InputEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    return-void
.end method

.method public constructor <init>(Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEvent()Landroid/view/InputEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruInputEvent;->dJ:Landroid/view/InputEvent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
