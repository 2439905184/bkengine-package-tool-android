.class public Lcom/nibiru/lib/controller/GyroEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final GYRO_AXIS_X:I = 0x0

.field public static final GYRO_AXIS_Y:I = 0x1

.field public static final GYRO_AXIS_Z:I = 0x2

.field public static final MAX_VALUE:I = 0x10000


# instance fields
.field private dE:I

.field private dF:I

.field private dG:I

.field private playerOrder:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/GyroEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/GyroEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/GyroEvent;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-wide v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/GyroEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    iput-wide v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    iget v0, p1, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    iget v0, p1, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    iget v0, p1, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    iget v0, p1, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

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

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v3

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    shl-int/lit8 v0, v4, 0x8

    add-int/2addr v0, v5

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    if-lt v0, v6, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    if-lt v0, v6, :cond_1

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    if-lt v0, v6, :cond_2

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    :cond_2
    iput p2, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    return-void
.end method

.method public static getDefaultGyroEvent(I)Lcom/nibiru/lib/controller/GyroEvent;
    .locals 4

    const v1, 0x8000

    new-instance v0, Lcom/nibiru/lib/controller/GyroEvent;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/GyroEvent;-><init>()V

    iput v1, v0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    iput v1, v0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    iput v1, v0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    iput p0, v0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    return-object v0
.end method

.method public static getFormatData(D)D
    .locals 6

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGyroValue(I)D
    .locals 2

    const/high16 v1, 0x47000000    # 32768.0f

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getFormatData(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getFormatData(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getFormatData(D)D

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

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    return-wide v0
.end method

.method public isEquals(Lcom/nibiru/lib/controller/GyroEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x28f

    iget v1, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/GyroEvent;->getPlayerOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    iget v2, p1, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    iget v2, p1, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    iget v2, p1, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

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

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    goto :goto_0
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GyroEvent [time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getGyroValue(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getGyroValue(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/GyroEvent;->getGyroValue(I)D

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

    iget-wide v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/GyroEvent;->dG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
