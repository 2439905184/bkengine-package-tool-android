.class public Lcom/nibiru/lib/controller/ControllerKeyEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static GameKeys:[I = null

.field public static final KEYCODE_BUTTON_A:I = 0x63

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_BACK:I = 0x4

.field public static final KEYCODE_BUTTON_ENTER:I = 0x17

.field public static final KEYCODE_BUTTON_HOME:I = 0x3

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_VOL_DOWN:I = 0x19

.field public static final KEYCODE_BUTTON_VOL_UP:I = 0x18

.field public static final KEYCODE_BUTTON_X:I = 0x62

.field public static final KEYCODE_BUTTON_Y:I = 0x60

.field public static final KEYCODE_DOWN:I = 0x14

.field public static final KEYCODE_DOWN_LEFT:I = 0x7f

.field public static final KEYCODE_DOWN_RIGHT:I = 0x80

.field public static final KEYCODE_LEFT:I = 0x15

.field public static final KEYCODE_RIGHT:I = 0x16

.field public static final KEYCODE_UP:I = 0x13

.field public static final KEYCODE_UP_LEFT:I = 0x7d

.field public static final KEYCODE_UP_RIGHT:I = 0x7e

.field public static final STATE_CONN:I = 0x1

.field public static final STATE_CONNING:I = 0x0

.field public static final STATE_DISCONN:I = 0x3

.field public static final STATE_DISCONNING:I = 0x2

.field public static SystemKeys:[I


# instance fields
.field private action:I

.field private bc:J

.field private isExternal:Z

.field private keycode:I

.field private playerOrder:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->SystemKeys:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->GameKeys:[I

    new-instance v0, Lcom/nibiru/lib/controller/ControllerKeyEvent$1;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent$1;-><init>()V

    sput-object v0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x17
        0x4
        0x19
        0x18
    .end array-data

    :array_1
    .array-data 4
        0x63
        0x61
        0x66
        0x69
        0x67
        0x68
        0x6d
        0x6c
        0x62
        0x60
        0x14
        0x15
        0x16
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    iput p3, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    return-void
.end method

.method public constructor <init>(ILandroid/view/KeyEvent;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    if-lez p3, :cond_0

    iput p3, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    :goto_0
    iput p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    iget v0, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    iget v0, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iget v0, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    iput v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    iget-wide v0, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    iput-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    iget-boolean v0, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    return-void
.end method

.method public static descriptionKey(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN BUTTON"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "KEYCODE_BUTTON_A"

    goto :goto_0

    :sswitch_1
    const-string v0, "KEYCODE_BUTTON_B"

    goto :goto_0

    :sswitch_2
    const-string v0, "KEYCODE_BUTTON_X"

    goto :goto_0

    :sswitch_3
    const-string v0, "KEYCODE_BUTTON_Y"

    goto :goto_0

    :sswitch_4
    const-string v0, "KEYCODE_BUTTON_L1"

    goto :goto_0

    :sswitch_5
    const-string v0, "KEYCODE_BUTTON_L2"

    goto :goto_0

    :sswitch_6
    const-string v0, "KEYCODE_BUTTON_R1"

    goto :goto_0

    :sswitch_7
    const-string v0, "KEYCODE_BUTTON_R2"

    goto :goto_0

    :sswitch_8
    const-string v0, "KEYCODE_LEFT"

    goto :goto_0

    :sswitch_9
    const-string v0, "KEYCODE_RIGHT"

    goto :goto_0

    :sswitch_a
    const-string v0, "KEYCODE_UP"

    goto :goto_0

    :sswitch_b
    const-string v0, "KEYCODE_DOWN"

    goto :goto_0

    :sswitch_c
    const-string v0, "KEYCODE_UP_LEFT"

    goto :goto_0

    :sswitch_d
    const-string v0, "KEYCODE_UP_RIGHT"

    goto :goto_0

    :sswitch_e
    const-string v0, "KEYCODE_DOWN_LEFT"

    goto :goto_0

    :sswitch_f
    const-string v0, "KEYCODE_DOWN_RIGHT"

    goto :goto_0

    :sswitch_10
    const-string v0, "KEYCODE_BUTTON_SELECT"

    goto :goto_0

    :sswitch_11
    const-string v0, "KEYCODE_BUTTON_START"

    goto :goto_0

    :sswitch_12
    const-string v0, "KEYCODE_BUTTON_HOME"

    goto :goto_0

    :sswitch_13
    const-string v0, "KEYCODE_BUTTON_ENTER"

    goto :goto_0

    :sswitch_14
    const-string v0, "KEYCODE_BUTTON_BACK"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_12
        0x4 -> :sswitch_14
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_13
        0x60 -> :sswitch_3
        0x61 -> :sswitch_1
        0x62 -> :sswitch_2
        0x63 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_5
        0x69 -> :sswitch_7
        0x6c -> :sswitch_11
        0x6d -> :sswitch_10
        0x7d -> :sswitch_c
        0x7e -> :sswitch_d
        0x7f -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method public static getInputStr(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyEvent2(II)Landroid/view/KeyEvent;
    .locals 13

    const/4 v8, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const v10, 0xffff

    const/16 v12, 0x8

    move v6, p0

    move v7, p1

    move v9, v8

    move v11, v8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    goto :goto_0
.end method

.method public static isControllerSupportKeyCode(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSystemExKeyCode(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x6f -> :sswitch_0
        0xa4 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSystemKeyCode(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/16 v0, 0x408

    return v0
.end method

.method public descriptionKey()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->descriptionKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iget v3, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    iget v3, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    iget v3, p1, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->bc:J

    return-wide v0
.end method

.method public getJoystickKeyEvent(II)Landroid/view/KeyEvent;
    .locals 13

    const/4 v8, 0x0

    if-gtz p1, :cond_0

    iget v7, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    iget-wide v4, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    iget v6, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    const v10, 0xffff

    const/16 v12, 0x8

    move v9, v8

    move v11, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1

    :cond_0
    move v7, p1

    goto :goto_0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    return v0
.end method

.method public getKeyEvent()Landroid/view/KeyEvent;
    .locals 13

    const/4 v8, 0x0

    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iget v7, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    const v10, 0xffff

    const/4 v12, 0x2

    move v9, v8

    move v11, v8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1
.end method

.method public getKeyEvent(II)Landroid/view/KeyEvent;
    .locals 13

    const/4 v8, 0x0

    if-lez p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    iget v7, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    const v10, 0xffff

    const/4 v12, 0x2

    move v9, v8

    move v11, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1

    :cond_1
    move v7, p1

    goto :goto_0
.end method

.method public getKeyEvent(III)Landroid/view/KeyEvent;
    .locals 13

    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    iget v7, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    const/4 v8, 0x0

    const/4 v12, 0x2

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isArrow()Z
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    return v0
.end method

.method public isValidKeyEvent(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v1

    iget v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    return-void
.end method

.method public setEventTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->bc:J

    return-void
.end method

.method public setExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControllerKeyEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->descriptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->bc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->bc:J

    iget-wide v4, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->keycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->playerOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/ControllerKeyEvent;->isExternal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
