.class public Lcom/nibiru/lib/BTDeviceControllerKey;
.super Ljava/lang/Object;


# static fields
.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_AB:I = 0x61

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_DOWN_LEFT:I = 0x1b

.field public static final KEYCODE_DOWN_RIGHT:I = 0x1c

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_UP_LEFT:I = 0x19

.field public static final KEYCODE_UP_RIGHT:I = 0x1a

.field public static KEYSET:[I = null

.field public static final STICK_LEFT:I = 0x0

.field public static final STICK_RIGHT:I = 0x1

.field public static final defaultExternalInputMap:[I

.field public static final joystickInputMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x60

    const/16 v4, 0x16

    const/16 v3, 0x15

    const/16 v2, 0x14

    const/16 v1, 0x13

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aput v1, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aput v2, v0, v2

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aput v3, v0, v3

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aput v4, v0, v4

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x25

    aput v5, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x29

    const/16 v2, 0x62

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x26

    const/16 v2, 0x63

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x27

    const/16 v2, 0x61

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x36

    const/16 v2, 0x66

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x34

    const/16 v2, 0x67

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x2e

    const/16 v2, 0x6d

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    const/16 v1, 0x35

    const/16 v2, 0x6c

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xbc

    aput v5, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xbf

    const/16 v2, 0x62

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xbe

    const/16 v2, 0x63

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xbd

    const/16 v2, 0x61

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc0

    const/16 v2, 0x66

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc1

    const/16 v2, 0x67

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc2

    const/16 v2, 0x68

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc3

    const/16 v2, 0x69

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc4

    const/16 v2, 0x6d

    aput v2, v0, v1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->joystickInputMap:[I

    const/16 v1, 0xc5

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->KEYSET:[I

    return-void

    :array_0
    .array-data 4
        0x13
        0x14
        0x15
        0x16
        0x60
        0x61
        0x62
        0x63
        0x66
        0x68
        0x67
        0x69
        0x6c
        0x6d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultExtraInputKey(I)I
    .locals 1

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aget v0, v0, p0

    if-lez v0, :cond_0

    sget-object v0, Lcom/nibiru/lib/BTDeviceControllerKey;->defaultExternalInputMap:[I

    aget p0, v0, p0

    goto :goto_0
.end method
