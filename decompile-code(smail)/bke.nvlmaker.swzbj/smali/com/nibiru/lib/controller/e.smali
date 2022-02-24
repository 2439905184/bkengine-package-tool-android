.class final Lcom/nibiru/lib/controller/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/controller/CursorService;


# instance fields
.field private at:J

.field private cP:[I

.field private cQ:[I

.field private cR:Z

.field private cS:Z

.field private cT:I

.field private cU:I

.field cV:I

.field cW:Ljava/lang/String;

.field private cX:Landroid/view/WindowManager;

.field private cY:Landroid/view/WindowManager$LayoutParams;

.field private cZ:Landroid/widget/ImageView;

.field private da:Z

.field private db:Landroid/os/HandlerThread;

.field private dc:Landroid/os/Handler;

.field private dd:I

.field private de:I

.field private df:Lcom/nibiru/lib/controller/ControllerService;

.field private dg:F

.field private dh:F

.field private di:I

.field private dj:I

.field private dk:I

.field public dl:I

.field public dm:I

.field private dn:F

.field private do:J

.field private dp:I

.field private dq:I

.field private dr:I

.field private f:Z

.field private mode:I


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerService;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v3, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    iput v2, p0, Lcom/nibiru/lib/controller/e;->cV:I

    iput-object v1, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    iput-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/e;->f:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/controller/e;->da:Z

    iput-object v1, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    iput v2, p0, Lcom/nibiru/lib/controller/e;->dd:I

    iput v2, p0, Lcom/nibiru/lib/controller/e;->de:I

    iput v4, p0, Lcom/nibiru/lib/controller/e;->dg:F

    iput v4, p0, Lcom/nibiru/lib/controller/e;->dh:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/nibiru/lib/controller/e;->di:I

    iput v5, p0, Lcom/nibiru/lib/controller/e;->dj:I

    iput v5, p0, Lcom/nibiru/lib/controller/e;->dk:I

    iput v2, p0, Lcom/nibiru/lib/controller/e;->dl:I

    iput v2, p0, Lcom/nibiru/lib/controller/e;->dm:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dn:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/e;->at:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/nibiru/lib/controller/e;->do:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dp:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nibiru/lib/controller/e;->mode:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dq:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dr:I

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x66

    aput v3, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x67

    const/4 v2, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getMouseSpeed()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->cT:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/nibiru/lib/controller/e;->cU:I

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;)F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    return v0
.end method

.method public static a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_0

    if-le v3, p1, :cond_1

    :cond_0
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v3

    int-to-float v3, p1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    iput p1, p0, Lcom/nibiru/lib/controller/e;->cV:I

    iput-object p2, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "window-cursor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/nibiru/lib/controller/e$1;

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/controller/e$1;-><init>(Lcom/nibiru/lib/controller/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/e$2;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/e$2;-><init>(Lcom/nibiru/lib/controller/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->dj:I

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;FF)Z
    .locals 12

    const-wide v10, 0x3fe4cccccccccccdL    # 0.65

    const-wide v6, -0x401b333333333333L    # -0.65

    const/4 v2, 0x1

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    float-to-double v0, p1

    cmpg-double v0, v0, v6

    if-gez v0, :cond_c

    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    float-to-double v4, v0

    cmpl-double v1, v4, v10

    if-lez v1, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    :goto_2
    float-to-double v4, p2

    cmpg-double v0, v4, v6

    if-gez v0, :cond_a

    const/high16 v0, -0x40800000    # -1.0f

    :goto_3
    float-to-double v4, v0

    cmpl-double v4, v4, v10

    if-lez v4, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    iget v4, p0, Lcom/nibiru/lib/controller/e;->cT:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v4, v1

    iget v1, p0, Lcom/nibiru/lib/controller/e;->cT:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v4

    add-int/2addr v1, v5

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    move v0, v3

    move v4, v3

    :goto_4
    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v3

    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_0

    :cond_5
    int-to-float v6, v0

    iget v7, p0, Lcom/nibiru/lib/controller/e;->dl:I

    int-to-float v7, v7

    iget v8, p0, Lcom/nibiru/lib/controller/e;->dn:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    if-lez v4, :cond_6

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dl:I

    iget v4, p0, Lcom/nibiru/lib/controller/e;->dn:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    add-int/2addr v0, v4

    :cond_6
    iget-object v4, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    move v4, v0

    move v0, v2

    goto :goto_4

    :cond_7
    int-to-float v6, v1

    iget v7, p0, Lcom/nibiru/lib/controller/e;->dm:I

    int-to-float v7, v7

    iget v8, p0, Lcom/nibiru/lib/controller/e;->dn:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    if-lez v5, :cond_8

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dm:I

    iget v1, p0, Lcom/nibiru/lib/controller/e;->dn:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_6
    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v0

    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v4, v0

    move v0, v3

    goto :goto_4

    :cond_a
    move v0, p2

    goto/16 :goto_3

    :cond_b
    move v1, v0

    goto/16 :goto_2

    :cond_c
    move v0, p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/e;Landroid/content/Context;)Z
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "auto adjust pos failed since context is null or not a activity"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Landroid/app/Activity;

    const-string v0, "auto just run"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "auto adjust pos: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/nibiru/lib/controller/e;->setPosOffset(II)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auto adjust pos failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/e;)F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    return v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/e;I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->dk:I

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/16 v1, 0xff

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/e;->da:Z

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/e;->do:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->cU:I

    return v0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/e;)V
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->w()V

    iget v1, p0, Lcom/nibiru/lib/controller/e;->di:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/nibiru/lib/controller/e;->dl:I

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/nibiru/lib/controller/e;->dm:I

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput v0, p0, Lcom/nibiru/lib/controller/e;->di:I

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/nibiru/lib/controller/e;)Lcom/nibiru/lib/controller/ControllerService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    return-object v0
.end method

.method static synthetic f(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic g(Lcom/nibiru/lib/controller/e;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dq:I

    return v0
.end method

.method static synthetic i(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dr:I

    return v0
.end method

.method static synthetic j(Lcom/nibiru/lib/controller/e;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic k(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dj:I

    return v0
.end method

.method static synthetic l(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dk:I

    return v0
.end method

.method static synthetic m(Lcom/nibiru/lib/controller/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/nibiru/lib/controller/e;)I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->mode:I

    return v0
.end method

.method static synthetic o(Lcom/nibiru/lib/controller/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->da:Z

    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->cT:I

    return v0
.end method

.method final b(Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide v8, 0x3fa999999999999aL    # 0.05

    const-wide v6, -0x4056666666666666L    # -0.05

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/StickEvent;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/e;->at:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/nibiru/lib/controller/e;->at:J

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dp:I

    if-nez v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    invoke-virtual {p1, v10}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    :goto_1
    iget v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_2

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    iput v5, p0, Lcom/nibiru/lib/controller/e;->dg:F

    :cond_2
    iget v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_3

    iput v5, p0, Lcom/nibiru/lib/controller/e;->dh:F

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    const/16 v1, 0xff

    iget-wide v2, p0, Lcom/nibiru/lib/controller/e;->do:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/nibiru/lib/controller/e;->dp:I

    if-ne v0, v10, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/nibiru/lib/controller/e;->dp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dg:F

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dh:F

    goto :goto_1
.end method

.method final c(Lcom/nibiru/lib/controller/ControllerKeyEvent;)Landroid/view/InputEvent;
    .locals 5

    const/16 v4, 0x100

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyCode()I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v2, v1

    if-gtz v1, :cond_1

    const-string v1, "TRANS <= 0"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->getCurrentX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->getCurrentY()I

    move-result v1

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/StickEvent;->translateTouch2(IIII)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/e;->f:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/e;->f:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/nibiru/lib/controller/e;->f:Z

    goto :goto_0

    :cond_4
    const/16 v2, 0x101

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v2, 0x102

    if-ne v1, v2, :cond_7

    iget-boolean v2, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_6
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    invoke-static {v0, v3}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getAction()I

    move-result v0

    invoke-static {v0, v1}, Lcom/nibiru/lib/controller/ControllerKeyEvent;->getKeyEvent2(II)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public final createCursor(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final createCursor(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CURSOR FILE PATH OR Service is null"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final disableDpad()V
    .locals 7

    const/16 v6, 0x61

    const/16 v5, 0x16

    const/16 v4, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x13

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    const/16 v3, 0x63

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    const/16 v3, 0x6d

    aget v2, v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public final enableDpad()V
    .locals 9

    const/16 v8, 0x61

    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x13

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isSupportEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "YOUR DEVICE DON\'T SUPPORT SYSTEM EVENT MODE"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v3, 0x63

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cQ:[I

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v3, 0x6d

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aput v6, v0, v6

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aput v7, v0, v7

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aput v4, v0, v4

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    aput v5, v0, v5

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x17

    aput v1, v0, v8

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x6d

    const/16 v2, 0x102

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x63

    const/4 v2, 0x4

    aput v2, v0, v1

    goto :goto_0
.end method

.method public final exit()V
    .locals 1

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->hideCursor()V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->db:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->disableDpad()V

    return-void
.end method

.method public final declared-synchronized getCurrentX()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/nibiru/lib/controller/e;->dd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCurrentY()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/nibiru/lib/controller/e;->de:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEventMode()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->mode:I

    return v0
.end method

.method public final getInterval()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->cU:I

    return v0
.end method

.method public final getMouseStick()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dp:I

    return v0
.end method

.method public final hideCursor()V
    .locals 2

    const-string v0, "PREPARE CURSOR"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v0, "CURSOR is null"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->disableDpad()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/e;->f:Z

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/e$3;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/e$3;-><init>(Lcom/nibiru/lib/controller/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final isAutoCursorMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    return v0
.end method

.method public final isCursorReady()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/e;->cV:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isCursorShow()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isDpadMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cR:Z

    return v0
.end method

.method public final isSupportDpad()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->isSupportEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public final resetOriginPosition()V
    .locals 6

    const/4 v0, -0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dj:I

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dk:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nibiru/lib/controller/e;->dl:I

    int-to-float v1, v1

    float-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nibiru/lib/controller/e;->dm:I

    int-to-float v1, v1

    float-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cZ:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nibiru/lib/controller/e;->cY:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setAutoCursorDelayTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/nibiru/lib/controller/e;->do:J

    goto :goto_0
.end method

.method public final setCursorImageSize(II)V
    .locals 0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/nibiru/lib/controller/e;->dq:I

    iput p2, p0, Lcom/nibiru/lib/controller/e;->dr:I

    goto :goto_0
.end method

.method public final setCursorResource(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->cV:I

    return-void
.end method

.method public final setCursorResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    return-void
.end method

.method public final setEnableDisplayAtPrePos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/controller/e;->da:Z

    return-void
.end method

.method public final setEventMode(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->mode:I

    return-void
.end method

.method public final setHideKey(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    const/16 v1, 0x101

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method public final setKeyMap([I)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->cP:[I

    :cond_0
    return-void
.end method

.method public final setMouseStick(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/nibiru/lib/controller/e;->dp:I

    :cond_1
    return-void
.end method

.method public final setOriginPosition(II)V
    .locals 2

    const/16 v1, -0x14

    if-lt p1, v1, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dl:I

    add-int/lit8 v0, v0, 0x14

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->dj:I

    :cond_0
    if-lt p2, v1, :cond_1

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dm:I

    add-int/lit8 v0, v0, 0x14

    if-gt p2, v0, :cond_1

    iput p2, p0, Lcom/nibiru/lib/controller/e;->dk:I

    :cond_1
    return-void
.end method

.method public final setPosOffset(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET Offset X, Y: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/nibiru/lib/controller/e;->dd:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/e;->de:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/nibiru/lib/controller/e;->dd:I

    iput p2, p0, Lcom/nibiru/lib/controller/e;->de:I

    goto :goto_0
.end method

.method public final setSensitivity(II)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/nibiru/lib/controller/e;->cT:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/nibiru/lib/controller/e;->cU:I

    :cond_1
    return-void
.end method

.method public final startAutoCursorMode(I)V
    .locals 1

    iput p1, p0, Lcom/nibiru/lib/controller/e;->cV:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/e;->b(Z)V

    return-void
.end method

.method public final startAutoCursorMode(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/e;->b(Z)V

    return-void
.end method

.method public final stopAutoCursorMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/e;->b(Z)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->df:Lcom/nibiru/lib/controller/ControllerService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cX:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/nibiru/lib/controller/e;->dn:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/nibiru/lib/controller/e;->dl:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nibiru/lib/controller/e;->dm:I

    goto :goto_0
.end method

.method public final x()Landroid/view/MotionEvent;
    .locals 4

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->getCurrentX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->getCurrentY()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/StickEvent;->translateTouch2(IIII)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()V
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/e;->cV:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Invalid parameters to create cursor"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/controller/e;->cV:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method final z()V
    .locals 4

    const/16 v1, 0xff

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/e;->cS:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nibiru/lib/controller/e;->isCursorShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/e;->dc:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/nibiru/lib/controller/e;->do:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nibiru/lib/controller/e;->cV:I

    iget-object v1, p0, Lcom/nibiru/lib/controller/e;->cW:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nibiru/lib/controller/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
