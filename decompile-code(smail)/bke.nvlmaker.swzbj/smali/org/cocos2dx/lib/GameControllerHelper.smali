.class public Lorg/cocos2dx/lib/GameControllerHelper;
.super Ljava/lang/Object;
.source "GameControllerHelper.java"


# static fields
.field private static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_GAS:I = 0x16

.field private static final AXIS_LTRIGGER:I = 0x11

.field private static final AXIS_RTRIGGER:I = 0x12

.field private static final AXIS_RZ:I = 0xe

.field private static final AXIS_THROTTLE:I = 0x13

.field private static final AXIS_X:I = 0x0

.field private static final AXIS_Y:I = 0x1

.field private static final AXIS_Z:I = 0xb

.field public static final StandardControllerName:Ljava/lang/String; = "Standard"

.field private static mControllerExtendKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field ControllerKeyMap:Landroid/util/SparseIntArray;

.field mGameController:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldBrake:F

.field private mOldGas:F

.field private mOldLeftThumbstickX:F

.field private mOldLeftThumbstickY:F

.field private mOldLeftTrigger:F

.field private mOldRightThumbstickX:F

.field private mOldRightThumbstickY:F

.field private mOldRightTrigger:F

.field private mOldThrottle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/GameControllerActivity;)V
    .locals 3
    .param p1, "activity"    # Lorg/cocos2dx/lib/GameControllerActivity;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickX:F

    .line 61
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickY:F

    .line 62
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickX:F

    .line 63
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickY:F

    .line 65
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftTrigger:F

    .line 66
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightTrigger:F

    .line 67
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldThrottle:F

    .line 68
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldBrake:F

    .line 69
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldGas:F

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    .line 30
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x1b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x1b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    const/16 v2, 0x1b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x1b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v2, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const/16 v2, 0x1b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x1ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/16 v2, 0x1bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x1be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x1c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x1c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const/16 v2, 0x1bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x1c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/16 v2, 0x1b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x1b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v2, 0x1b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x1b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x1c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x1c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    return-void
.end method

.method static gatherControllers(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "controllers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 241
    .local v0, "controllerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 243
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 244
    .local v1, "controllerDeveceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 245
    .local v2, "device":Landroid/view/InputDevice;
    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/cocos2dx/lib/GameControllerAdapter;->onDisconnected(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2    # "device":Landroid/view/InputDevice;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "controllerDeveceId":I
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 251
    .restart local v1    # "controllerDeveceId":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/cocos2dx/lib/GameControllerAdapter;->onDisconnected(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 253
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 256
    .end local v1    # "controllerDeveceId":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static receiveExternalKeyEvent(IIZ)V
    .locals 2
    .param p0, "deviceId"    # I
    .param p1, "externalKeyCode"    # I
    .param p2, "receive"    # Z

    .prologue
    .line 197
    if-eqz p2, :cond_2

    .line 198
    sget-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    sget-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 74
    .local v4, "handled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    .line 76
    .local v3, "eventSource":I
    and-int/lit16 v14, v3, 0x401

    const/16 v15, 0x401

    if-eq v14, v15, :cond_0

    const v14, 0x1000010

    and-int/2addr v14, v3

    const v15, 0x1000010

    if-ne v14, v15, :cond_a

    .line 79
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 81
    .local v1, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "deviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-static {v14}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v14, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 88
    .local v8, "newAXIS_LX":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickX:F

    invoke-static {v8, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_2

    .line 89
    const/16 v14, 0x1b0

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v8, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 90
    move-object/from16 v0, p0

    iput v8, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickX:F

    .line 91
    const/4 v4, 0x1

    .line 94
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    .line 95
    .local v9, "newAXIS_LY":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickY:F

    invoke-static {v9, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_3

    .line 96
    const/16 v14, 0x1b1

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v9, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 97
    move-object/from16 v0, p0

    iput v9, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftThumbstickY:F

    .line 98
    const/4 v4, 0x1

    .line 101
    :cond_3
    const/16 v14, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    .line 102
    .local v11, "newAXIS_RX":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickX:F

    invoke-static {v11, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_4

    .line 103
    const/16 v14, 0x1b2

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v11, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 104
    move-object/from16 v0, p0

    iput v11, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickX:F

    .line 105
    const/4 v4, 0x1

    .line 108
    :cond_4
    const/16 v14, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    .line 109
    .local v12, "newAXIS_RY":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickY:F

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_5

    .line 110
    const/16 v14, 0x1b3

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v12, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 111
    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightThumbstickY:F

    .line 112
    const/4 v4, 0x1

    .line 115
    :cond_5
    const/16 v14, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 116
    .local v7, "newAXIS_LTRIGGER":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftTrigger:F

    invoke-static {v7, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_6

    .line 117
    const/16 v14, 0x1c1

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v7, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 118
    move-object/from16 v0, p0

    iput v7, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldLeftTrigger:F

    .line 119
    const/4 v4, 0x1

    .line 122
    :cond_6
    const/16 v14, 0x12

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    .line 123
    .local v10, "newAXIS_RTRIGGER":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightTrigger:F

    invoke-static {v10, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_7

    .line 124
    const/16 v14, 0x1c2

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v10, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 125
    move-object/from16 v0, p0

    iput v10, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldRightTrigger:F

    .line 126
    const/4 v4, 0x1

    .line 129
    :cond_7
    const/16 v14, 0x17

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 130
    .local v5, "newAXIS_BRAKE":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldBrake:F

    invoke-static {v5, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_8

    .line 131
    const/16 v14, 0x1c1

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v5, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 132
    move-object/from16 v0, p0

    iput v5, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldBrake:F

    .line 133
    const/4 v4, 0x1

    .line 136
    :cond_8
    const/16 v14, 0x13

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    .line 137
    .local v13, "newAXIS_THROTTLE":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldThrottle:F

    invoke-static {v13, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_9

    .line 138
    const/16 v14, 0x1c2

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v13, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 139
    move-object/from16 v0, p0

    iput v13, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldThrottle:F

    .line 140
    const/4 v4, 0x1

    .line 143
    :cond_9
    const/16 v14, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 144
    .local v6, "newAXIS_GAS":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldGas:F

    invoke-static {v6, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_a

    .line 145
    const/16 v14, 0x1c2

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v6, v15}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 146
    move-object/from16 v0, p0

    iput v6, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mOldGas:F

    .line 147
    const/4 v4, 0x1

    .line 152
    .end local v1    # "deviceId":I
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v5    # "newAXIS_BRAKE":F
    .end local v6    # "newAXIS_GAS":F
    .end local v7    # "newAXIS_LTRIGGER":F
    .end local v8    # "newAXIS_LX":F
    .end local v9    # "newAXIS_LY":F
    .end local v10    # "newAXIS_RTRIGGER":F
    .end local v11    # "newAXIS_RX":F
    .end local v12    # "newAXIS_RY":F
    .end local v13    # "newAXIS_THROTTLE":F
    :cond_a
    return v4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v11, 0x1000010

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 158
    const/4 v8, 0x0

    .line 160
    .local v8, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    .line 161
    .local v7, "eventSource":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 162
    .local v9, "keyCode":I
    iget-object v4, p0, Lorg/cocos2dx/lib/GameControllerHelper;->ControllerKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 164
    .local v2, "controllerKey":I
    and-int/lit16 v4, v7, 0x401

    const/16 v10, 0x401

    if-eq v4, v10, :cond_0

    and-int v4, v7, v11

    if-ne v4, v11, :cond_3

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 168
    .local v1, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v4, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 171
    iget-object v4, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-static {v4}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 172
    iget-object v4, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 175
    :cond_1
    if-nez v2, :cond_2

    .line 176
    sget-object v4, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/cocos2dx/lib/GameControllerHelper;->mControllerExtendKey:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    move v2, v9

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .line 184
    .local v6, "action":I
    if-nez v6, :cond_5

    .line 185
    const/4 v8, 0x1

    .line 186
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "deviceId":I
    .end local v6    # "action":I
    :cond_3
    :goto_0
    move v5, v8

    .line 193
    :cond_4
    return v5

    .line 187
    .restart local v0    # "deviceName":Ljava/lang/String;
    .restart local v1    # "deviceId":I
    .restart local v6    # "action":I
    :cond_5
    if-ne v6, v3, :cond_3

    .line 188
    const/4 v8, 0x1

    .line 189
    const/4 v4, 0x0

    move v3, v5

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    goto :goto_0
.end method

.method onInputDeviceAdded(I)V
    .locals 7
    .param p1, "deviceId"    # I

    .prologue
    const v6, 0x1000010

    .line 213
    :try_start_0
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 214
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 216
    .local v2, "deviceSource":I
    and-int/lit16 v4, v2, 0x401

    const/16 v5, 0x401

    if-eq v4, v5, :cond_0

    and-int v4, v2, v6

    if-ne v4, v6, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v4, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 221
    invoke-static {v1, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->onConnected(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "deviceSource":I
    :cond_1
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 230
    return-void
.end method

.method onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->onDisconnected(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 237
    :cond_0
    return-void
.end method
