.class public Lcom/nibiru/lib/controller/AccEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACC_AXIS_X:I = 0x0

.field public static final ACC_AXIS_Y:I = 0x1

.field public static final ACC_AXIS_Z:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final MAX_VALUE:I = 0x10000


# instance fields
.field private aA:I

.field private aB:I

.field private aC:I

.field private playerOrder:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/AccEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/AccEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/AccEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/AccEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/nibiru/lib/controller/AccEvent;->time:J

    iput-wide v0, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    iget v0, p1, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    iget v0, p1, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    iget v0, p1, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    iget v0, p1, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8

    const/high16 v7, 0x10000

    const v6, 0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v3

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    shl-int/lit8 v0, v4, 0x8

    add-int/2addr v0, v5

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    if-lt v0, v6, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    if-lt v0, v6, :cond_1

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    if-lt v0, v6, :cond_2

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    :cond_2
    iput p2, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    return-void
.end method

.method public static getDefaultAccEvent(I)Lcom/nibiru/lib/controller/AccEvent;
    .locals 4

    const v1, 0x8000

    new-instance v0, Lcom/nibiru/lib/controller/AccEvent;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/AccEvent;-><init>()V

    iput v1, v0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    iput v1, v0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    iput v1, v0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    iput p0, v0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    return-object v0
.end method

.method public static getFormatData(DZ)D
    .locals 8

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    if-eqz p2, :cond_0

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccValue(I)D
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x47000000    # 32768.0f

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/AccEvent;->getFormatData(DZ)D

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/AccEvent;->getFormatData(DZ)D

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nibiru/lib/controller/AccEvent;->getFormatData(DZ)D

    move-result-wide v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    return-wide v0
.end method

.method public isEquals(Lcom/nibiru/lib/controller/AccEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x28f

    iget v1, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/AccEvent;->getPlayerOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    iget v2, p1, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    iget v2, p1, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    iget v2, p1, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAxisValue([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    goto :goto_0
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccEvent [time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/AccEvent;->getAccValue(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/AccEvent;->getAccValue(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/AccEvent;->getAccValue(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/AccEvent;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/AccEvent;->aC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
