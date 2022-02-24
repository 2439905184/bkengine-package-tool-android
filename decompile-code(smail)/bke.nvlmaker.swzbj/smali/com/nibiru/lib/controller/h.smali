.class final Lcom/nibiru/lib/controller/h;
.super Ljava/lang/Object;


# instance fields
.field private cX:Landroid/view/WindowManager;

.field private cY:Landroid/view/WindowManager$LayoutParams;

.field private dA:Landroid/widget/ImageView;

.field private dB:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->cY:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->dA:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/nibiru/lib/controller/h;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private F()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_2

    const-string v1, "nibiru_guide_zh.png"

    :goto_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v1, "nibiru_guide_en.png"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->cY:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/h;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->dB:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/h;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/h;->cY:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/h;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/h;->dA:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/h;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->dA:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/h;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->dB:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/controller/h;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public final C()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->dA:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/h;->D()V

    :cond_3
    invoke-direct {p0}, Lcom/nibiru/lib/controller/h;->F()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->dB:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->dB:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/h$1;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/h$1;-><init>(Lcom/nibiru/lib/controller/h;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->cX:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/h$2;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/h$2;-><init>(Lcom/nibiru/lib/controller/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h;->dA:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
