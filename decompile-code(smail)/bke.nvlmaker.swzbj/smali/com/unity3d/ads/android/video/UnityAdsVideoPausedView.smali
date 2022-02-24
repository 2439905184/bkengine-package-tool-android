.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPausedView.java"


# static fields
.field private static screenDensity:F


# instance fields
.field private _outerStroke:Landroid/widget/ImageView;

.field private _playButtonBase:Landroid/widget/ImageView;

.field private _textView:Landroid/widget/TextView;

.field private _triangle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 30
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createView()V

    .line 42
    return-void
.end method

.method private createBall(I)Landroid/widget/ImageView;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/high16 v6, 0x42ca0000    # 101.0f

    const/high16 v7, 0x42480000    # 50.0f

    .line 95
    sget v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v1, "cnv":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 98
    .local v3, "pnt":Landroid/graphics/Paint;
    const/high16 v4, -0x70000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, "img":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 103
    return-object v2
.end method

.method private createBlinkAnimation(J)Landroid/view/animation/AnimationSet;
    .locals 5
    .param p1, "offset"    # J

    .prologue
    const/4 v4, 0x1

    .line 142
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 144
    .local v1, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 146
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 148
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 149
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-object v1
.end method

.method private createOuterStroke(I)Landroid/widget/ImageView;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/high16 v6, 0x42e20000    # 113.0f

    const/high16 v7, 0x42600000    # 56.0f

    .line 81
    sget v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, "cnv":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 84
    .local v3, "pnt":Landroid/graphics/Paint;
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    sget v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42540000    # 53.0f

    sget v7, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, "img":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 91
    return-object v2
.end method

.method private createTriangle(I)Landroid/widget/ImageView;
    .locals 17
    .param p1, "id"    # I

    .prologue
    .line 107
    const/high16 v2, 0x423c0000    # 47.0f

    sget v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x424c0000    # 51.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 108
    .local v14, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v1, "cnv":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .local v13, "pnt":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/16 v2, 0x8

    new-array v4, v2, [F

    .line 114
    .local v4, "points":[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 115
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 117
    const/4 v2, 0x2

    const/high16 v3, 0x423c0000    # 47.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 118
    const/4 v2, 0x3

    const/high16 v3, 0x41c80000    # 25.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 120
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 121
    const/4 v2, 0x5

    const/high16 v3, 0x424c0000    # 51.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 123
    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 124
    const/4 v2, 0x7

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 126
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 128
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 129
    .local v16, "path":Landroid/graphics/Path;
    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x3

    aget v3, v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    const/4 v2, 0x4

    aget v2, v4, v2

    const/4 v3, 0x5

    aget v3, v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 134
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v15, "img":Landroid/widget/ImageView;
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 138
    return-object v15
.end method

.method private createView()V
    .locals 8

    .prologue
    const v7, 0xea61

    const/16 v5, 0xd

    const/4 v6, -0x2

    .line 49
    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->setBackgroundColor(I)V

    .line 51
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v2, "strokeParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    const v4, 0xea66

    invoke-direct {p0, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createOuterStroke(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 54
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v1, "ballParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    invoke-direct {p0, v7}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createBall(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 59
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    const/high16 v4, 0x41f80000    # 31.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 66
    const v4, 0xea62

    invoke-direct {p0, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createTriangle(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 67
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_triangle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 70
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    const-string v5, "Video paused. Tap screen to continue watching."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    const v5, 0xea63

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 73
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v3, "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    const/high16 v4, 0x41a00000    # 20.0f

    sget v5, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 77
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_textView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public static initScreenMetrics(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->screenDensity:F

    .line 46
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 160
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->createBlinkAnimation(J)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 170
    :cond_0
    return-void
.end method
