.class public Lorg/cocos2dx/lib/GameControllerOuya;
.super Ljava/lang/Object;
.source "GameControllerOuya.java"

# interfaces
.implements Lorg/cocos2dx/lib/GameControllerDelegate;


# instance fields
.field private mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

.field private mGameController:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyMap:Landroid/util/SparseIntArray;

.field private mOldLeftThumbstickX:F

.field private mOldLeftThumbstickY:F

.field private mOldLeftTrigger:F

.field private mOldRightThumbstickX:F

.field private mOldRightThumbstickY:F

.field private mOldRightTrigger:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    .line 48
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickX:F

    .line 49
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickY:F

    .line 50
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickX:F

    .line 51
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickY:F

    .line 53
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftTrigger:F

    .line 54
    iput v1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightTrigger:F

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    .line 21
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x1b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x1b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x1b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v2, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x1bb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x1ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const/16 v2, 0x1bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x1c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x1c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x1c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    invoke-static/range {p1 .. p1}, Ltv/ouya/console/api/OuyaController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 59
    .local v19, "handled":Z
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v2, :cond_6

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 62
    .local v4, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "deviceName":Ljava/lang/String;
    invoke-static {v4}, Ltv/ouya/console/api/OuyaController;->getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v18

    .line 64
    .local v18, "c":Ltv/ouya/console/api/OuyaController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-static {v2}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    :cond_0
    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v6

    .line 70
    .local v6, "newLeftTrigger":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftTrigger:F

    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v5, 0x1c1

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 72
    move-object/from16 v0, p0

    iput v6, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftTrigger:F

    .line 75
    :cond_1
    const/16 v2, 0x12

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v11

    .line 76
    .local v11, "newRightTrigger":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightTrigger:F

    invoke-static {v11, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v10, 0x1c2

    const/4 v12, 0x1

    move-object v8, v3

    move v9, v4

    invoke-interface/range {v7 .. v12}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 78
    move-object/from16 v0, p0

    iput v11, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightTrigger:F

    .line 81
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v20

    .line 82
    .local v20, "newLeftThumbstickX":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickX:F

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const/4 v2, 0x0

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_7

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 88
    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickX:F

    .line 91
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v21

    .line 92
    .local v21, "newLeftThumbstickY":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickY:F

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_8

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 98
    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerOuya;->mOldLeftThumbstickY:F

    .line 101
    :cond_4
    const/16 v2, 0xb

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v22

    .line 102
    .local v22, "newRightThumbstickX":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickX:F

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_9

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 108
    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickX:F

    .line 111
    :cond_5
    const/16 v2, 0xe

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/OuyaController;->getAxisValue(I)F

    move-result v23

    .line 112
    .local v23, "newRightThumbstickY":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickY:F

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b3

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 118
    :goto_3
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerOuya;->mOldRightThumbstickY:F

    .line 122
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "deviceId":I
    .end local v6    # "newLeftTrigger":F
    .end local v11    # "newRightTrigger":F
    .end local v18    # "c":Ltv/ouya/console/api/OuyaController;
    .end local v20    # "newLeftThumbstickX":F
    .end local v21    # "newLeftThumbstickY":F
    .end local v22    # "newRightThumbstickX":F
    .end local v23    # "newRightThumbstickY":F
    :cond_6
    return v19

    .line 86
    .restart local v3    # "deviceName":Ljava/lang/String;
    .restart local v4    # "deviceId":I
    .restart local v6    # "newLeftTrigger":F
    .restart local v11    # "newRightTrigger":F
    .restart local v18    # "c":Ltv/ouya/console/api/OuyaController;
    .restart local v20    # "newLeftThumbstickX":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b0

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    move/from16 v16, v20

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    goto/16 :goto_0

    .line 96
    .restart local v21    # "newLeftThumbstickY":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b1

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    move/from16 v16, v21

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    goto/16 :goto_1

    .line 106
    .restart local v22    # "newRightThumbstickX":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b2

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    move/from16 v16, v22

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    goto :goto_2

    .line 116
    .restart local v23    # "newRightThumbstickY":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v15, 0x1b3

    const/16 v17, 0x1

    move-object v13, v3

    move v14, v4

    move/from16 v16, v23

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 126
    const/4 v8, 0x0

    .line 128
    .local v8, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 129
    .local v7, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 131
    .local v9, "keyCode":I
    if-nez v7, :cond_5

    .line 132
    invoke-static {v9, p1}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    .line 138
    :cond_0
    :goto_0
    if-eqz v8, :cond_4

    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_4

    .line 139
    const/4 v6, 0x0

    .line 141
    .local v6, "isAnalog":Z
    const/16 v0, 0x6a

    if-eq v9, v0, :cond_1

    const/16 v0, 0x6b

    if-ne v9, v0, :cond_2

    .line 142
    :cond_1
    const/4 v6, 0x1

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 146
    .local v2, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 150
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mGameController:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 152
    :cond_3
    if-nez v7, :cond_6

    .line 153
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    .line 159
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "deviceId":I
    .end local v6    # "isAnalog":Z
    :cond_4
    :goto_1
    return v8

    .line 134
    :cond_5
    if-ne v7, v4, :cond_0

    .line 135
    invoke-static {v9, p1}, Ltv/ouya/console/api/OuyaController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_0

    .line 155
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local v2    # "deviceId":I
    .restart local v6    # "isAnalog":Z
    :cond_6
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    goto :goto_1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p1}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->showCursor(Z)V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->showCursor(Z)V

    .line 170
    return-void
.end method

.method public setControllerEventListener(Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerOuya;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .line 181
    return-void
.end method
