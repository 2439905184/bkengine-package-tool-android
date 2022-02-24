.class public Lcom/nibiru/lib/controller/StickEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_MOVE:I = 0x0

.field public static final AXIS_HAT_X:I = 0x4

.field public static final AXIS_HAT_Y:I = 0x5

.field public static final AXIS_RZ:I = 0x3

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TRANS_HAT_MASK:I = 0x1000

.field public static final TRANS_RZ_MASK:I = 0x800

.field public static final TRANS_X_MASK:I = 0x100

.field public static final TRANS_Y_MASK:I = 0x200

.field public static final TRANS_Z_MASK:I = 0x400


# instance fields
.field private action:I

.field private bc:J

.field private eo:[I

.field private ep:Z

.field private eq:Z

.field private er:Z

.field private playerOrder:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/StickEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/StickEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/StickEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    return-void
.end method

.method public constructor <init>(BBBBIIIZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    invoke-direct/range {p0 .. p8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_1

    const/16 v1, -0x80

    const/16 v2, -0x80

    const/4 v3, 0x0

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/16 v2, -0x80

    const/16 v3, -0x80

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_3

    const/16 v1, -0x80

    const/16 v2, -0x80

    const/4 v3, -0x1

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    const/16 v2, -0x80

    const/16 v3, -0x80

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_5

    const/16 v1, -0x80

    const/16 v2, -0x80

    const/16 v3, -0x80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_5
    const/16 v1, -0x80

    const/4 v2, 0x0

    const/16 v3, -0x80

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_7

    const/16 v1, -0x80

    const/16 v2, -0x80

    const/16 v3, -0x80

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto :goto_0

    :cond_7
    const/16 v1, -0x80

    const/4 v2, -0x1

    const/16 v3, -0x80

    const/16 v4, -0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;->a(BBBBIIIZ)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/MotionEvent;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-static {v4}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-static {v5}, Lcom/nibiru/lib/controller/StickEvent;->a(F)F

    move-result v5

    iget-object v6, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v0

    aput v0, v6, v7

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v1, v7, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x2

    const/4 v6, 0x2

    invoke-direct {p0, v2, v6, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-direct {p0, v3, v2, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-direct {p0, v4, v2, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-direct {p0, v5, v2, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    and-int/lit16 v0, p3, 0x1000

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v4, v2, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v5, v2, p3}, Lcom/nibiru/lib/controller/StickEvent;->a(FII)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x4

    const/16 v2, 0x80

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x5

    const/16 v2, 0x80

    aput v2, v0, v1

    :cond_2
    iput p2, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    :goto_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-wide v0, p1, Lcom/nibiru/lib/controller/StickEvent;->time:J

    iput-wide v0, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    iget-boolean v0, p1, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    iget v0, p1, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    iget v0, p1, Lcom/nibiru/lib/controller/StickEvent;->action:I

    iput v0, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    iget-boolean v0, p1, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    iget-boolean v0, p1, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    iget-object v2, p1, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(F)F
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private a(FII)I
    .locals 5

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x43000000    # 128.0f

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    const/16 v0, 0x80

    :goto_0
    return v0

    :pswitch_0
    and-int/lit16 v1, p3, 0x100

    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_1

    sub-float v0, v3, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_2
    invoke-static {v0}, Lcom/nibiru/lib/controller/StickEvent;->d(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    and-int/lit16 v0, p3, 0x200

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :pswitch_2
    and-int/lit16 v1, p3, 0x400

    goto :goto_1

    :pswitch_3
    and-int/lit16 v0, p3, 0x800

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :pswitch_4
    mul-float v0, p1, v2

    float-to-int v0, v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/StickEvent;->d(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sub-float v0, v3, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    :cond_1
    add-float v0, p1, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private a(BBBBIIIZ)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    and-int/lit16 v2, p1, 0xff

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x1

    and-int/lit16 v3, p2, 0xff

    aput v3, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x2

    and-int/lit16 v3, p3, 0xff

    aput v3, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x3

    and-int/lit16 v3, p4, 0xff

    aput v3, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aput p5, v0, v4

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x5

    aput p6, v0, v2

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_1

    iput p7, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    iput-boolean p8, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    return-void

    :cond_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v0

    const/16 v3, 0x73

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v0

    const/16 v3, 0x8c

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/16 v3, 0x80

    aput v3, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static d(I)I
    .locals 2

    const/16 v0, 0x100

    if-gez p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-le v1, v0, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p0

    goto :goto_0
.end method

.method public static getDefaultStickEvent(I)Lcom/nibiru/lib/controller/StickEvent;
    .locals 9

    const/4 v5, 0x0

    const/16 v1, -0x80

    new-instance v0, Lcom/nibiru/lib/controller/StickEvent;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    move v7, p0

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/nibiru/lib/controller/StickEvent;-><init>(BBBBIIIZ)V

    return-object v0
.end method

.method public static getInputStr(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    shr-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {p0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v5, Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized translateTouch(FFIIIII)Lcom/nibiru/lib/controller/SupportMotionEvent;
    .locals 9

    const-class v8, Lcom/nibiru/lib/controller/StickEvent;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/nibiru/lib/controller/SupportMotionEvent;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nibiru/lib/controller/SupportMotionEvent;-><init>(FFIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized translateTouch(IIII)Lcom/nibiru/lib/controller/SupportMotionEvent;
    .locals 4

    const-class v1, Lcom/nibiru/lib/controller/StickEvent;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/nibiru/lib/controller/SupportMotionEvent;

    int-to-float v2, p0

    int-to-float v3, p1

    invoke-direct {v0, v2, v3, p2, p3}, Lcom/nibiru/lib/controller/SupportMotionEvent;-><init>(FFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized translateTouch(Landroid/util/SparseArray;II)Lcom/nibiru/lib/controller/SupportMotionEvent;
    .locals 2

    const-class v1, Lcom/nibiru/lib/controller/StickEvent;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/nibiru/lib/controller/SupportMotionEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/nibiru/lib/controller/SupportMotionEvent;-><init>(Landroid/util/SparseArray;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static translateTouch2(IIII)Landroid/view/MotionEvent;
    .locals 18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    move/from16 v0, p0

    int-to-float v7, v0

    move/from16 v0, p1

    int-to-float v8, v0

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    move-wide v4, v2

    move/from16 v6, p2

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v5, 0x1

    new-array v9, v5, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, p0

    int-to-float v5, v0

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, p1

    int-to-float v5, v0

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const v5, 0x3f2e147b    # 0.68f

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const v5, 0x3f19999a    # 0.6f

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/4 v5, 0x0

    move/from16 v0, p0

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/4 v5, 0x1

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x1

    new-array v8, v4, [I

    const/4 v4, 0x0

    aput p3, v8, v4

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    new-array v8, v4, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v8, v4

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v4, 0x0

    aget-object v4, v8, v4

    move/from16 v0, p3

    iput v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const-wide/16 v4, 0x14

    add-long/2addr v4, v2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move/from16 v6, p2

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    const-wide/16 v4, 0x14

    add-long/2addr v4, v2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const/16 v15, 0x1002

    const/16 v16, 0x0

    move/from16 v6, p2

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x409

    return v0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    return v0
.end method

.method public getAxisValue(I)F
    .locals 6

    const/4 v0, 0x0

    const/high16 v3, 0x43000000    # 128.0f

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :goto_1
    float-to-double v2, v1

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    float-to-double v2, v1

    const-wide v4, -0x404b851eb851eb85L    # -0.08

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v3

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, v3

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v3

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, v3

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    int-to-float v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    int-to-float v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAxisValue()[I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/StickEvent;->bc:J

    return-wide v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 18

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v8

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v3, 0xb

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v3, 0xe

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v3, 0xf

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v3, 0x10

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v3, 0x1

    new-array v9, v3, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aput-object v2, v9, v3

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xfffa

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    add-int/2addr v13, v14

    const/4 v14, 0x0

    const v15, 0x1000010

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xfffa

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    add-int/2addr v14, v15

    const/4 v15, 0x0

    const v16, 0x1000010

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    return v0
.end method

.method public getRawLX()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v0, v1, v0

    add-int/lit8 v0, v0, -0x80

    goto :goto_0
.end method

.method public getRawLY()I
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    rsub-int v0, v0, 0x80

    goto :goto_0
.end method

.method public getRawRX()I
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x80

    goto :goto_0
.end method

.method public getRawRY()I
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    rsub-int v0, v0, 0x80

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    return-wide v0
.end method

.method public hasLeftStickChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    return v0
.end method

.method public hasRightStickChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    return v0
.end method

.method public isEquals(Lcom/nibiru/lib/controller/StickEvent;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue()[I

    move-result-object v2

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_1

    aget v1, v2, v5

    iget-object v3, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v3, v3, v5

    if-ne v1, v3, :cond_0

    aget v1, v2, v6

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v6

    if-eq v1, v2, :cond_3

    :cond_0
    const-string v1, "stick event return false1"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_1
    aget v3, v2, v1

    iget-object v4, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_2

    const-string v1, "stick event return false"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "stick event return true"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isHatStickEvent()Z
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, -0x414f39085f4a1273L    # -1.0E-6

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v1, v0, v8

    int-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    aget v1, v0, v8

    int-to-double v2, v1

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_1

    :cond_0
    aget v1, v0, v9

    int-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    aget v0, v0, v9

    int-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHatValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    return v0
.end method

.method public isOriginPos()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public processData([Z)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v0

    const/16 v3, 0xd2

    if-le v2, v3, :cond_4

    aget-boolean v3, p1, v0

    if-nez v3, :cond_1

    const/16 v3, 0xfa

    if-lt v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/16 v3, 0x100

    aput v3, v2, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    aput-boolean v2, p1, v0

    goto :goto_1

    :cond_4
    const/16 v3, 0x87

    if-ge v2, v3, :cond_2

    aput-boolean v1, p1, v0

    goto :goto_1
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    return-void
.end method

.method public setAxisValue([I)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    goto :goto_0
.end method

.method public setEventTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/StickEvent;->bc:J

    return-void
.end method

.method public setLeftStickState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    return-void
.end method

.method public setRightStickState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StickEvent [axisValue= X:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RZ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HAT_X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HAT_Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/StickEvent;->bc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/StickEvent;->bc:J

    iget-wide v4, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLeftChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRightChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transXYMode()V
    .locals 6

    const/16 v5, 0x80

    const/4 v4, 0x5

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v2, v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aput v5, v0, v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aput v5, v0, v4

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/nibiru/lib/controller/StickEvent;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/StickEvent;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->ep:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/nibiru/lib/controller/StickEvent;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eo:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->eq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/StickEvent;->er:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
