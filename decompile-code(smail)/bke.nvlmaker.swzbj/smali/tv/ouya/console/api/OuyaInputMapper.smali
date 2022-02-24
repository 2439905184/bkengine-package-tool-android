.class public Ltv/ouya/console/api/OuyaInputMapper;
.super Ljava/lang/Object;
.source "OuyaInputMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sController:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/MappingParser$Controller;",
            ">;"
        }
    .end annotation
.end field

.field private static final sControllerUri:Landroid/net/Uri;

.field private static sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

.field private static sEnableControllerDispatch:Z

.field private static sInputManager:Landroid/hardware/input/InputManager;

.field private static sLastValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private static sParser:Ltv/ouya/console/api/MappingParser;

.field private static sSkipInputProcessing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Ltv/ouya/console/api/OuyaInputMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sControllerUri:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Ltv/ouya/console/api/OuyaInputMapper;->sEnableControllerDispatch:Z

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sController:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    .line 39
    new-instance v0, Ltv/ouya/console/api/MappingParser;

    invoke-direct {v0}, Ltv/ouya/console/api/MappingParser;-><init>()V

    sput-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sParser:Ltv/ouya/console/api/MappingParser;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sController:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Ltv/ouya/console/api/MappingParser;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sParser:Ltv/ouya/console/api/MappingParser;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static dispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 39
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    invoke-static/range {p1 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->shouldHandleInputEvent(Landroid/view/InputEvent;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 252
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Don\'t pass events when shouldHandleInputEvent is false"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 256
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v34

    .line 257
    .local v34, "currentFocus":Landroid/view/View;
    if-eqz v34, :cond_1

    move-object/from16 v0, v34

    instance-of v14, v0, Landroid/widget/EditText;

    if-eqz v14, :cond_1

    .line 258
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v35

    .line 375
    :goto_0
    return v35

    .line 261
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-static {v14}, Ltv/ouya/console/api/OuyaController;->getPlayerNumByDeviceId(I)I

    move-result v37

    .line 262
    .local v37, "playerNum":I
    if-gez v37, :cond_2

    .line 263
    sget-object v14, Ltv/ouya/console/api/OuyaInputMapper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to find playerNum for Controller="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v35

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-static {v14}, Ltv/ouya/console/api/OuyaInputMapper;->getControllerByDeviceId(I)Ltv/ouya/console/api/MappingParser$Controller;

    move-result-object v33

    .line 268
    .local v33, "controller":Ltv/ouya/console/api/MappingParser$Controller;
    if-nez v33, :cond_3

    .line 269
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v35

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v28

    .line 274
    .local v28, "source":I
    const/16 v35, 0x0

    .line 275
    .local v35, "handled":Z
    move-object/from16 v0, v33

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mButtonIsAxis:Ljava/util/Vector;

    move-object/from16 v32, v0

    .line 276
    .local v32, "buttons":Ljava/util/Vector;, "Ljava/util/Vector<Ltv/ouya/console/api/MappingParser$ButtonIsAxis;>;"
    if-eqz v32, :cond_6

    .line 277
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_1
    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v14

    move/from16 v0, v36

    if-ge v0, v14, :cond_6

    .line 278
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;

    .line 279
    .local v31, "button":Ltv/ouya/console/api/MappingParser$ButtonIsAxis;
    move-object/from16 v0, v31

    iget v14, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mSourceAxis:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 280
    .local v2, "axis":F
    move-object/from16 v0, v31

    iget v14, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMin:F

    cmpl-float v14, v2, v14

    if-ltz v14, :cond_5

    move-object/from16 v0, v31

    iget v14, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMax:F

    cmpg-float v14, v2, v14

    if-gtz v14, :cond_5

    .line 282
    sget-object v14, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    move/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v31

    iget v15, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    invoke-virtual {v14, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 283
    sget-object v14, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    move/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v31

    iget v15, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 285
    const-wide/16 v4, 0x0

    .line 286
    .local v4, "downTime":J
    const-wide/16 v6, 0x0

    .line 287
    .local v6, "eventTime":J
    const/4 v8, 0x0

    .line 288
    .local v8, "action":I
    move-object/from16 v0, v31

    iget v9, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    .line 289
    .local v9, "code":I
    const/4 v10, 0x0

    .line 290
    .local v10, "repeat":I
    const/4 v11, 0x0

    .line 291
    .local v11, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 292
    .local v12, "deviceId":I
    const/4 v13, 0x0

    .line 293
    .local v13, "scancode":I
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v14, 0x400

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 294
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v14

    or-int v35, v35, v14

    .line 277
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    .end local v4    # "downTime":J
    .end local v6    # "eventTime":J
    .end local v8    # "action":I
    .end local v9    # "code":I
    .end local v10    # "repeat":I
    .end local v11    # "metaState":I
    .end local v12    # "deviceId":I
    .end local v13    # "scancode":I
    :cond_4
    :goto_2
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 297
    :cond_5
    sget-object v14, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    move/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v31

    iget v15, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    invoke-virtual {v14, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 298
    sget-object v14, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    move/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v31

    iget v15, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 300
    const-wide/16 v4, 0x0

    .line 301
    .restart local v4    # "downTime":J
    const-wide/16 v6, 0x0

    .line 302
    .restart local v6    # "eventTime":J
    const/4 v8, 0x1

    .line 303
    .restart local v8    # "action":I
    move-object/from16 v0, v31

    iget v9, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    .line 304
    .restart local v9    # "code":I
    const/4 v10, 0x0

    .line 305
    .restart local v10    # "repeat":I
    const/4 v11, 0x0

    .line 306
    .restart local v11    # "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 307
    .restart local v12    # "deviceId":I
    const/4 v13, 0x0

    .line 308
    .restart local v13    # "scancode":I
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v14, 0x400

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 309
    .restart local v3    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v14

    or-int v35, v35, v14

    goto :goto_2

    .line 315
    .end local v2    # "axis":F
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    .end local v4    # "downTime":J
    .end local v6    # "eventTime":J
    .end local v8    # "action":I
    .end local v9    # "code":I
    .end local v10    # "repeat":I
    .end local v11    # "metaState":I
    .end local v12    # "deviceId":I
    .end local v13    # "scancode":I
    .end local v31    # "button":Ltv/ouya/console/api/MappingParser$ButtonIsAxis;
    .end local v36    # "i":I
    :cond_6
    move-object/from16 v0, v33

    iget-object v14, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisExcludeSource:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-lez v14, :cond_7

    move-object/from16 v0, v33

    iget-object v14, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisExcludeSource:Landroid/util/SparseBooleanArray;

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 318
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 321
    :cond_7
    move-object/from16 v0, v33

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisRemap:Ljava/util/Vector;

    move-object/from16 v30, v0

    .line 322
    .local v30, "axises":Ljava/util/Vector;, "Ljava/util/Vector<Ltv/ouya/console/api/MappingParser$AxisRemap;>;"
    if-eqz v30, :cond_a

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    .line 324
    .local v19, "pointerCount":I
    if-lez v19, :cond_a

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 328
    const/4 v14, 0x1

    new-array v0, v14, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v20, v0

    .line 329
    .local v20, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v14, 0x0

    new-instance v15, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v15, v20, v14

    .line 330
    const/4 v14, 0x1

    new-array v0, v14, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v21, v0

    .line 331
    .local v21, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v14, 0x0

    new-instance v15, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v15, v21, v14

    .line 333
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v20, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 334
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v21, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 336
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_3
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v14

    move/from16 v0, v36

    if-ge v0, v14, :cond_9

    .line 337
    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/MappingParser$AxisRemap;

    .line 338
    .local v2, "axis":Ltv/ouya/console/api/MappingParser$AxisRemap;
    iget v14, v2, Ltv/ouya/console/api/MappingParser$AxisRemap;->mSourceAxis:I

    iget v15, v2, Ltv/ouya/console/api/MappingParser$AxisRemap;->mDestinationAxis:I

    if-ne v14, v15, :cond_8

    .line 336
    :goto_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 343
    :cond_8
    iget v14, v2, Ltv/ouya/console/api/MappingParser$AxisRemap;->mSourceAxis:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v38

    .line 346
    .local v38, "val":F
    const/4 v14, 0x0

    aget-object v14, v21, v14

    iget v15, v2, Ltv/ouya/console/api/MappingParser$AxisRemap;->mDestinationAxis:I

    move/from16 v0, v38

    invoke-virtual {v14, v15, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_4

    .line 349
    .end local v2    # "axis":Ltv/ouya/console/api/MappingParser$AxisRemap;
    .end local v38    # "val":F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 350
    .restart local v4    # "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 351
    .restart local v6    # "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 352
    .restart local v8    # "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 353
    .restart local v11    # "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    .line 354
    .local v23, "buttonState":I
    const/high16 v24, 0x3f800000    # 1.0f

    .line 355
    .local v24, "xPrecision":F
    const/high16 v25, 0x3f800000    # 1.0f

    .line 356
    .local v25, "yPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 357
    .restart local v12    # "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v27

    .line 358
    .local v27, "edgeFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v29

    .local v29, "flags":I
    move-wide v14, v4

    move-wide/from16 v16, v6

    move/from16 v18, v8

    move/from16 v22, v11

    move/from16 v26, v12

    .line 360
    invoke-static/range {v14 .. v29}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 366
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v14

    or-int v35, v35, v14

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 374
    .end local v4    # "downTime":J
    .end local v6    # "eventTime":J
    .end local v8    # "action":I
    .end local v11    # "metaState":I
    .end local v12    # "deviceId":I
    .end local v19    # "pointerCount":I
    .end local v20    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v21    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v23    # "buttonState":I
    .end local v24    # "xPrecision":F
    .end local v25    # "yPrecision":F
    .end local v27    # "edgeFlags":I
    .end local v29    # "flags":I
    .end local v36    # "i":I
    :cond_a
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v14

    or-int v35, v35, v14

    .line 375
    goto/16 :goto_0
.end method

.method public static dispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 391
    invoke-static/range {p1 .. p1}, Ltv/ouya/console/api/OuyaInputMapper;->shouldHandleInputEvent(Landroid/view/InputEvent;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 392
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Don\'t pass events when shouldHandleInputEvent is false"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 395
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v17

    .line 396
    .local v17, "currentFocus":Landroid/view/View;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 397
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v20

    .line 439
    :goto_0
    return v20

    .line 400
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ltv/ouya/console/api/OuyaInputMapper;->getControllerByDeviceId(I)Ltv/ouya/console/api/MappingParser$Controller;

    move-result-object v16

    .line 401
    .local v16, "controller":Ltv/ouya/console/api/MappingParser$Controller;
    if-nez v16, :cond_2

    .line 402
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v20

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 406
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    .line 411
    .local v19, "source":I
    sget-object v20, Ltv/ouya/console/api/OuyaInputMapper;->sParser:Ltv/ouya/console/api/MappingParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ltv/ouya/console/api/MappingParser;->getButton(Ltv/ouya/console/api/MappingParser$Controller;I)Ltv/ouya/console/api/MappingParser$Button;

    move-result-object v4

    .line 412
    .local v4, "button":Ltv/ouya/console/api/MappingParser$Button;
    if-nez v4, :cond_3

    .line 413
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v20

    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, v4, Ltv/ouya/console/api/MappingParser$Button;->mExcludeSource:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseBooleanArray;->size()I

    move-result v20

    if-lez v20, :cond_4

    iget-object v0, v4, Ltv/ouya/console/api/MappingParser$Button;->mExcludeSource:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 419
    const/16 v20, 0x1

    goto :goto_0

    .line 424
    :cond_4
    const/4 v5, 0x0

    .line 425
    .local v5, "newKeyEvent":Landroid/view/KeyEvent;
    iget v0, v4, Ltv/ouya/console/api/MappingParser$Button;->mDestinationKeyCode:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 427
    move-object/from16 v5, p1

    .line 439
    :goto_1
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v5, v1}, Ltv/ouya/console/api/OuyaInputMapper;->passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v20

    goto :goto_0

    .line 429
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    .line 430
    .local v6, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    .line 431
    .local v8, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    .line 432
    .local v10, "action":I
    iget v11, v4, Ltv/ouya/console/api/MappingParser$Button;->mDestinationKeyCode:I

    .line 433
    .local v11, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    .line 434
    .local v12, "repeat":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v13

    .line 435
    .local v13, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    .line 436
    .local v14, "deviceId":I
    const/4 v15, 0x0

    .line 437
    .local v15, "scancode":I
    new-instance v5, Landroid/view/KeyEvent;

    .end local v5    # "newKeyEvent":Landroid/view/KeyEvent;
    invoke-direct/range {v5 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .restart local v5    # "newKeyEvent":Landroid/view/KeyEvent;
    goto :goto_1
.end method

.method private static getButtonRemappingJSONString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 126
    .local v3, "result":Landroid/os/Bundle;
    :try_start_0
    sget-object v5, Ltv/ouya/console/api/OuyaInputMapper;->sControllerUri:Landroid/net/Uri;

    const-string v6, "get_button_remap_json"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    :goto_0
    if-eqz v3, :cond_0

    const-string v4, "button_remap"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Ltv/ouya/console/api/OuyaInputMapper;->TAG:Ljava/lang/String;

    const-string v6, "Error querying button remapping"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getControllerByDeviceId(I)Ltv/ouya/console/api/MappingParser$Controller;
    .locals 1
    .param p0, "deviceId"    # I

    .prologue
    .line 146
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sController:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sController:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/MappingParser$Controller;

    .line 150
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    invoke-virtual {v0, p0}, Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;->onInputDeviceAdded(I)V

    .line 150
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sController:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/MappingParser$Controller;

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x4

    .line 80
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 82
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    if-nez v4, :cond_0

    .line 83
    new-instance v4, Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    invoke-direct {v4}, Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;-><init>()V

    sput-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    .line 84
    const-string v4, "input"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManager;

    sput-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sInputManager:Landroid/hardware/input/InputManager;

    .line 85
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sInputManager:Landroid/hardware/input/InputManager;

    if-eqz v4, :cond_0

    .line 86
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sInputManager:Landroid/hardware/input/InputManager;

    sget-object v5, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 91
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sLastValue:Ljava/util/List;

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_4

    .line 95
    invoke-static {v1}, Ltv/ouya/console/api/OuyaController;->getControllerByPlayer(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 96
    .local v0, "controller":Ltv/ouya/console/api/OuyaController;
    if-nez v0, :cond_2

    .line 94
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_2
    const-string v3, "null"

    .line 100
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ltv/ouya/console/api/OuyaController;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 101
    invoke-virtual {v0}, Ltv/ouya/console/api/OuyaController;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_3
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OUYA Controller #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    .end local v0    # "controller":Ltv/ouya/console/api/OuyaController;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Ltv/ouya/console/api/OuyaInputMapper;->getButtonRemappingJSONString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "json":Ljava/lang/String;
    sget-object v4, Ltv/ouya/console/api/OuyaInputMapper;->sParser:Ltv/ouya/console/api/MappingParser;

    invoke-virtual {v4, v2}, Ltv/ouya/console/api/MappingParser;->parse(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static passDispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    sget-boolean v1, Ltv/ouya/console/api/OuyaInputMapper;->sEnableControllerDispatch:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-static {p1}, Ltv/ouya/console/api/OuyaController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 159
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 161
    .local v0, "handled":Z
    const/4 v1, 0x0

    sput-boolean v1, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    .line 162
    return v0
.end method

.method private static passDispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "doFallbacks"    # Z

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 167
    .local v13, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    .line 181
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 183
    .local v0, "handled":Z
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 185
    const/4 v7, 0x0

    .line 186
    .local v7, "ouyaFallbackKeyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 203
    :goto_1
    :pswitch_0
    if-eqz v7, :cond_1

    .line 204
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 205
    .local v1, "fallbackKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 206
    const/4 v0, 0x1

    .line 210
    .end local v1    # "fallbackKeyEvent":Landroid/view/KeyEvent;
    .end local v7    # "ouyaFallbackKeyCode":I
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    .line 211
    return v0

    .line 169
    .end local v0    # "handled":Z
    :pswitch_1
    sget-boolean v2, Ltv/ouya/console/api/OuyaInputMapper;->sEnableControllerDispatch:Z

    if-eqz v2, :cond_0

    .line 170
    invoke-static {v13, p1}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 174
    :pswitch_2
    sget-boolean v2, Ltv/ouya/console/api/OuyaInputMapper;->sEnableControllerDispatch:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-static {v13, p1}, Ltv/ouya/console/api/OuyaController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 189
    .restart local v0    # "handled":Z
    .restart local v7    # "ouyaFallbackKeyCode":I
    :pswitch_3
    const/16 v7, 0x17

    .line 190
    goto :goto_1

    .line 195
    :pswitch_4
    const/4 v0, 0x1

    .line 196
    goto :goto_1

    .line 200
    :pswitch_5
    const/4 v7, 0x4

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static setEnableControllerDispatch(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 142
    sput-boolean p0, Ltv/ouya/console/api/OuyaInputMapper;->sEnableControllerDispatch:Z

    .line 143
    return-void
.end method

.method public static shouldHandleInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 235
    sget-boolean v0, Ltv/ouya/console/api/OuyaInputMapper;->sSkipInputProcessing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Ltv/ouya/console/api/OuyaInputMapper;->sInputManager:Landroid/hardware/input/InputManager;

    sget-object v1, Ltv/ouya/console/api/OuyaInputMapper;->sDeviceListener:Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 119
    :cond_0
    return-void
.end method
