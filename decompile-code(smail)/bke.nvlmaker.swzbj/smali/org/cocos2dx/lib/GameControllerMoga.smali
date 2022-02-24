.class public Lorg/cocos2dx/lib/GameControllerMoga;
.super Ljava/lang/Object;
.source "GameControllerMoga.java"

# interfaces
.implements Lcom/bda/controller/ControllerListener;
.implements Lorg/cocos2dx/lib/GameControllerDelegate;


# static fields
.field private static final mVendorName:Ljava/lang/String; = "Moga"


# instance fields
.field private mController:Lcom/bda/controller/Controller;

.field private mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

.field private mKeyMap:Landroid/util/SparseIntArray;

.field private mOldLeftThumbstickX:F

.field private mOldLeftThumbstickY:F

.field private mOldLeftTrigger:F

.field private mOldRightThumbstickX:F

.field private mOldRightThumbstickY:F

.field private mOldRightTrigger:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x1c5

    const/16 v4, 0x6c

    const/16 v3, 0x14

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickX:F

    .line 20
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickY:F

    .line 21
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickX:F

    .line 22
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickY:F

    .line 24
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftTrigger:F

    .line 25
    iput v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightTrigger:F

    .line 27
    iput-object v1, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    .line 181
    iput-object v1, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    .line 31
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x1b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x1b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x1b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v2, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const/16 v2, 0x1bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x1c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x1ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x1bb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x1c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x1c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x1c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p1}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    .line 186
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->init()Z

    .line 187
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 200
    return-void
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/bda/controller/KeyEvent;

    .prologue
    const/high16 v1, -0x80000000

    .line 67
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v7

    .line 68
    .local v7, "keycode":I
    const/16 v0, 0x68

    if-eq v7, v0, :cond_0

    const/16 v0, 0x69

    if-ne v7, v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    .line 73
    .local v4, "isPressed":Z
    :goto_1
    const/4 v6, 0x0

    .line 75
    .local v6, "isAnalog":Z
    const/16 v0, 0x6a

    if-eq v7, v0, :cond_2

    const/16 v0, 0x6b

    if-ne v7, v0, :cond_3

    .line 77
    :cond_2
    const/4 v6, 0x1

    .line 80
    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v1, "Moga"

    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getControllerId()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz v4, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    goto :goto_0

    .line 72
    .end local v4    # "isPressed":Z
    .end local v6    # "isAnalog":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 81
    .restart local v4    # "isPressed":Z
    .restart local v6    # "isAnalog":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 33
    .param p1, "event"    # Lcom/bda/controller/MotionEvent;

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/bda/controller/MotionEvent;->getControllerId()I

    move-result v4

    .line 94
    .local v4, "controllerId":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 95
    .local v6, "newLeftThumbstickX":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickX:F

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v3, "Moga"

    const/16 v5, 0x1b0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 100
    move-object/from16 v0, p0

    iput v6, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickX:F

    .line 103
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v11

    .line 104
    .local v11, "newLeftThumbstickY":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickY:F

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v8, "Moga"

    const/16 v10, 0x1b1

    const/4 v12, 0x1

    move v9, v4

    invoke-interface/range {v7 .. v12}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 109
    move-object/from16 v0, p0

    iput v11, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftThumbstickY:F

    .line 112
    :cond_3
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v16

    .line 113
    .local v16, "newRightThumbstickX":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickX:F

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v13, "Moga"

    const/16 v15, 0x1b2

    const/16 v17, 0x1

    move v14, v4

    invoke-interface/range {v12 .. v17}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 118
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickX:F

    .line 121
    :cond_4
    const/16 v2, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v21

    .line 122
    .local v21, "newRightThumbstickY":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickY:F

    cmpl-float v2, v21, v2

    if-eqz v2, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    move-object/from16 v17, v0

    const-string v18, "Moga"

    const/16 v20, 0x1b3

    const/16 v22, 0x1

    move/from16 v19, v4

    invoke-interface/range {v17 .. v22}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 127
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightThumbstickY:F

    .line 130
    :cond_5
    const/16 v2, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v26

    .line 131
    .local v26, "newLeftTrigger":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftTrigger:F

    cmpl-float v2, v26, v2

    if-eqz v2, :cond_6

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    move-object/from16 v22, v0

    const-string v23, "Moga"

    const/16 v25, 0x1c1

    const/16 v27, 0x1

    move/from16 v24, v4

    invoke-interface/range {v22 .. v27}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 136
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerMoga;->mOldLeftTrigger:F

    .line 139
    :cond_6
    const/16 v2, 0x12

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v31

    .line 140
    .local v31, "newRightTrigger":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightTrigger:F

    cmpl-float v2, v31, v2

    if-eqz v2, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    move-object/from16 v27, v0

    const-string v28, "Moga"

    const/16 v30, 0x1c2

    const/16 v32, 0x1

    move/from16 v29, v4

    invoke-interface/range {v27 .. v32}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 145
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2dx/lib/GameControllerMoga;->mOldRightTrigger:F

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onResume()V

    .line 196
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/bda/controller/StateEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v1, "Moga"

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onDisconnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const-string v1, "Moga"

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setControllerEventListener(Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerMoga;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .line 206
    return-void
.end method
