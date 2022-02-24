.class Lcom/nibiru/lib/controller/NibiruCheckUtil;
.super Ljava/lang/Object;


# static fields
.field public static final NIBIRU_PROPERTY:Ljava/lang/String; = "nibiru.properties"


# instance fields
.field private dN:Landroid/app/AlertDialog;

.field private dO:Ljava/lang/String;

.field private dP:Ljava/lang/String;

.field private dQ:Ljava/lang/String;

.field private dR:Ljava/lang/String;

.field private dS:Ljava/lang/String;

.field private dT:Ljava/lang/String;

.field private dU:Ljava/lang/String;

.field private dV:Ljava/lang/String;

.field private dW:Ljava/lang/String;

.field private dX:Ljava/lang/String;

.field private dY:Landroid/app/ProgressDialog;

.field private dZ:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->getCurrentLangType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "手柄游戏"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dO:Ljava/lang/String;

    const-string v0, "本游戏支持手柄操作\uff0c安装手柄驱动即可获得全新游戏体验\uff0c是否安装\uff1f"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dP:Ljava/lang/String;

    const-string v0, "安装"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dQ:Ljava/lang/String;

    const-string v0, "取消"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dR:Ljava/lang/String;

    const-string v0, "正在获取手柄驱动..."

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dS:Ljava/lang/String;

    const-string v0, "获取手柄驱动失败"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dT:Ljava/lang/String;

    const-string v0, "抱歉\uff0c更新手柄驱动失败\uff0c您可以在www.nibiruplayer.com下载Nibiru产品"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dX:Ljava/lang/String;

    const-string v0, "本游戏支持手柄操控\uff0c连接手柄即可获得最佳游戏体验\uff0c是否连接手柄\uff1f"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dU:Ljava/lang/String;

    const-string v0, "连接手柄"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dV:Ljava/lang/String;

    const-string v0, "稍候再说"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dW:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Gamepad Game"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dO:Ljava/lang/String;

    const-string v0, "This game support Gamepad only when you install the Nibiru gamepad driver, install now?"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dP:Ljava/lang/String;

    const-string v0, "Install"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dQ:Ljava/lang/String;

    const-string v0, "Later"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dR:Ljava/lang/String;

    const-string v0, "Downloading the Gamepad driver"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dS:Ljava/lang/String;

    const-string v0, "Get Gamepad driver failed."

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dT:Ljava/lang/String;

    const-string v0, "Get Driver failed, you can install the app from www.nibiruplayer.com"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dX:Ljava/lang/String;

    const-string v0, "This game support Gamepad controll, Do you want to connect gamepad for best game experiences?"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dU:Ljava/lang/String;

    const-string v0, "Connect Gamepad"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dV:Ljava/lang/String;

    const-string v0, "Later"

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dW:Ljava/lang/String;

    goto :goto_0
.end method

.method private static H()Ljava/io/File;
    .locals 3

    new-instance v0, Lcom/nibiru/lib/controller/g;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/g;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.nibiruplayer.com/download/driver/driver.apk"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/nibiru/lib/controller/g;->dz:Ljava/lang/String;

    const-string v2, "driver.apk"

    invoke-static {v1, v2, v0}, Lcom/nibiru/lib/controller/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "com.nibiru"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "com.nibiru.play"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dN:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dN:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dQ:Ljava/lang/String;

    new-instance v2, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;

    invoke-direct {v2, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$3;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dR:Ljava/lang/String;

    new-instance v2, Lcom/nibiru/lib/controller/NibiruCheckUtil$4;

    invoke-direct {v2, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$4;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dN:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dN:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/NibiruCheckUtil;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dY:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/controller/NibiruCheckUtil;Ljava/io/File;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez p1, :cond_2

    const-string v1, "Why context is null?"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v3, v2, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->getApkSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x5b8d80

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dY:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/nibiru/lib/controller/NibiruCheckUtil;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->H()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCircleProgressBar(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil$1;

    invoke-direct {v1}, Lcom/nibiru/lib/controller/NibiruCheckUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public static getCurrentLangType(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getNibiruVerCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "nibiru.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "channel_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "version_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/nibiru/lib/controller/NibiruCheckUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dT:Ljava/lang/String;

    return-object v0
.end method

.method public static showMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public checkInstallNibiru()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nibiru/lib/controller/NibiruCheckUtil$2;

    invoke-direct {v1, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$2;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getApkSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installApk()V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dX:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isNibiruInstall()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    const-string v2, "com.nibiru"

    invoke-static {v1, v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    const-string v2, "com.nibiru.play"

    invoke-static {v1, v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNibiruUpdate()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v1, "Why mContext is null?"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->retrieveApkFromAssets()Z

    :cond_2
    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    const-string v2, "com.nibiru"

    invoke-direct {p0, v1, v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    const-string v2, "com.nibiru.play"

    invoke-direct {p0, v1, v2}, Lcom/nibiru/lib/controller/NibiruCheckUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public retrieveApkFromAssets()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_1

    move-object v1, v2

    :cond_0
    if-nez v1, :cond_3

    :goto_1
    return v0

    :cond_1
    aget-object v1, v4, v3

    const-string v6, "Nibiru"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ".apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nibiru/lib/controller/g;->dz:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "mkdir failed"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/nibiru/lib/controller/g;->dz:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "driver.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5
    iget-object v2, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "create file failed"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dZ:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_7

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public showDeviceTip(Lcom/nibiru/lib/controller/ControllerServiceImpl;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dV:Ljava/lang/String;

    new-instance v2, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/nibiru/lib/controller/NibiruCheckUtil$5;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;Lcom/nibiru/lib/controller/ControllerServiceImpl;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nibiru/lib/controller/NibiruCheckUtil;->dW:Ljava/lang/String;

    new-instance v2, Lcom/nibiru/lib/controller/NibiruCheckUtil$6;

    invoke-direct {v2, p0}, Lcom/nibiru/lib/controller/NibiruCheckUtil$6;-><init>(Lcom/nibiru/lib/controller/NibiruCheckUtil;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
