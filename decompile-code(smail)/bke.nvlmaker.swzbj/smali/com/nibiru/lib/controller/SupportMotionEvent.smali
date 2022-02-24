.class public Lcom/nibiru/lib/controller/SupportMotionEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/SupportMotionEvent$a;
    }
.end annotation


# instance fields
.field private eK:Landroid/view/MotionEvent;

.field private eL:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFII)V
    .locals 8

    const/4 v5, 0x1

    const/16 v6, 0x1002

    const v7, 0xffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/nibiru/lib/controller/SupportMotionEvent;-><init>(FFIIIII)V

    return-void
.end method

.method public constructor <init>(FFIIIII)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-wide v4, v2

    move/from16 v6, p3

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v14, p7

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1 0 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v4, "1 "

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p4, :cond_1

    const-string v4, "0"

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 0 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v5, 0x1

    new-array v9, v5, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, p1

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, p2

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

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

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x1

    new-array v8, v4, [I

    const/4 v4, 0x0

    aput p4, v8, v4

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

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

    move/from16 v0, p4

    iput v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v4, 0x0

    aget-object v4, v8, v4

    move/from16 v0, p5

    iput v0, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const-wide/16 v4, 0x14

    add-long/2addr v4, v2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v6, p3

    move/from16 v14, p7

    move/from16 v16, p6

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    const-wide/16 v4, 0x14

    add-long/2addr v4, v2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v6, p3

    move/from16 v13, p7

    move/from16 v15, p6

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/util/SparseArray;II)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/nibiru/lib/controller/TouchPointer;

    if-nez v16, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/nibiru/lib/controller/TouchPointer;->getX()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/nibiru/lib/controller/TouchPointer;->getY()F

    move-result v8

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

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1 0 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/nibiru/lib/controller/TouchPointer;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/nibiru/lib/controller/TouchPointer;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p3, :cond_5

    const-string v4, "0"

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/nibiru/lib/controller/SupportMotionEvent$a;-><init>(Lcom/nibiru/lib/controller/SupportMotionEvent;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v5

    move/from16 v5, v19

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_c

    shl-int/lit8 v5, v4, 0x8

    or-int/lit8 p2, v5, 0x6

    move/from16 v6, p2

    :goto_3
    if-nez v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v6, v4, 0x5

    :cond_4
    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_b

    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v8, v4, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_4
    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v5, v4, :cond_a

    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    iget-object v5, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const/16 v15, 0x1002

    const/16 v16, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move/from16 v0, p3

    if-ne v6, v0, :cond_d

    move v6, v5

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nibiru/lib/controller/TouchPointer;

    if-nez v4, :cond_7

    const-string v4, "abormal, pointer is null"

    invoke-static {v4}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto/16 :goto_2

    :cond_7
    const-string v7, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v7

    const/16 v8, 0xe

    if-lt v7, v8, :cond_8

    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v7}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iput v8, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v8, 0x1

    iput v8, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object v8, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eM:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v7, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v4}, Lcom/nibiru/lib/controller/TouchPointer;->getX()F

    move-result v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4}, Lcom/nibiru/lib/controller/TouchPointer;->getY()F

    move-result v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const v8, 0x3f2e147b    # 0.68f

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const v8, 0x3f19999a    # 0.6f

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v8

    const/16 v10, 0xc

    if-lt v8, v10, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/nibiru/lib/controller/TouchPointer;->getX()F

    move-result v10

    invoke-virtual {v7, v8, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/nibiru/lib/controller/TouchPointer;->getY()F

    move-result v4

    invoke-virtual {v7, v8, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_9
    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_a
    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v8, v5

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_4

    :cond_b
    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eM:Ljava/util/List;

    iget-object v5, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eM:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/MotionEvent$PointerProperties;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/MotionEvent$PointerProperties;

    iget-object v4, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    iget-object v5, v9, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    goto/16 :goto_5

    :cond_c
    move/from16 v6, p2

    goto/16 :goto_3

    :cond_d
    move v6, v4

    goto/16 :goto_6
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    const-string v0, ""

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/SupportMotionEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/SupportMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/SupportMotionEvent;->getInputStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/SupportMotionEvent;->getInputStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getInputStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    return-void
.end method

.method public setAction(I)V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    return-void
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eK:Landroid/view/MotionEvent;

    return-void
.end method

.method public setInputStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/SupportMotionEvent;->eL:Ljava/lang/String;

    return-void
.end method
