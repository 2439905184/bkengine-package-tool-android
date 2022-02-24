.class public Lcom/nibiru/lib/BTUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CHECK_PACKAGENAME:Ljava/lang/String; = "com.nibiru"

.field public static final LOG_DIR:Ljava/lang/String; = "sdcard/nibiru/log/"

.field public static final MAX_LOG_COUNT:I = 0x0

.field private static Q:Z = false

.field private static R:Z = false

.field public static final SERVICE_MAINUI:Ljava/lang/String; = "com.nibiru.mainui"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.nibiru.service"

.field public static final SERVICE_UI:Ljava/lang/String; = "com.nibiru.view.devicelist"

.field public static final SUPPORT_SERVICE_NAME:Ljava/lang/String; = "com.nibiru.support.service"

.field private static isStart:Z

.field public static mDateFormatLog:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nibiru/lib/BTUtil;->isStart:Z

    sput-boolean v0, Lcom/nibiru/lib/BTUtil;->Q:Z

    sput-boolean v0, Lcom/nibiru/lib/BTUtil;->R:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM_dd__HH_mm_ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/nibiru/lib/BTUtil;->mDateFormatLog:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBTDeviceCode(Lcom/nibiru/lib/BTDevice;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getDeviceAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nibiru/lib/BTDevice;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateBTDeviceListCode([Lcom/nibiru/lib/BTDevice;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    const-string v1, ""

    array-length v3, p0

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nibiru/lib/BTUtil;->generateBTDeviceCode(Lcom/nibiru/lib/BTDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static generateKeyEvent(III)Landroid/view/KeyEvent;
    .locals 13

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    move-wide v4, v2

    move v6, p0

    move v7, p1

    move v9, v8

    move v10, p2

    move v11, v8

    move v12, v8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1
.end method

.method public static generateMotionEvent(BBBBI)Landroid/view/MotionEvent;
    .locals 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x2

    move/from16 v0, p0

    and-int/lit16 v4, v0, 0xff

    int-to-float v7, v4

    move/from16 v0, p1

    and-int/lit16 v4, v0, 0xff

    int-to-float v8, v4

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move/from16 v0, p2

    and-int/lit16 v4, v0, 0xff

    int-to-float v12, v4

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0xff

    int-to-float v13, v4

    const/4 v15, 0x0

    move-wide v4, v2

    move/from16 v14, p4

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method

.method public static getAndroidVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getApplicationSessionInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogTimeDesc(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nibiru/lib/BTUtil;->mDateFormatLog:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongtime(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    sget-object v0, Lcom/nibiru/lib/BTUtil;->mDateFormatLog:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getMotionEvent(Lcom/nibiru/lib/controller/StickEvent;)Landroid/view/MotionEvent;
    .locals 14

    const/4 v4, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickEvent;->getAxisValue()[I

    move-result-object v11

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickEvent;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickEvent;->getTime()J

    move-result-wide v2

    aget v5, v11, v9

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aget v10, v11, v4

    int-to-float v10, v10

    const/4 v12, 0x3

    aget v11, v11, v12

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v12

    move v13, v9

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStamp()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v0, "-1"

    goto :goto_0
.end method

.method public static parseBTDevice(Ljava/lang/String;)Lcom/nibiru/lib/BTDevice;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/nibiru/lib/BTUtil;->parseBTDeviceList(Ljava/lang/String;)[Lcom/nibiru/lib/BTDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static parseBTDeviceList(Ljava/lang/String;)[Lcom/nibiru/lib/BTDevice;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x6

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    new-array v0, v1, [Lcom/nibiru/lib/BTDevice;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    :goto_1
    if-lt v1, v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nibiru/lib/BTDevice;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nibiru/lib/BTDevice;

    goto :goto_0

    :cond_3
    aget-object v0, v2, v1

    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-lt v5, v7, :cond_5

    :try_start_0
    new-instance v5, Lcom/nibiru/lib/BTDevice;

    invoke-direct {v5}, Lcom/nibiru/lib/BTDevice;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setDeviceName(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setDeviceAddr(Ljava/lang/String;)V

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setDeviceType(I)V

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setDeviceId(I)V

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setPlayerOrder(I)V

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nibiru/lib/BTDevice;->setConnected(Z)V

    array-length v6, v0

    if-le v6, v7, :cond_4

    const/4 v6, 0x6

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/nibiru/lib/BTDevice;->setState(I)V

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseKeyEvent(Ljava/lang/String;[I)Landroid/view/KeyEvent;
    .locals 13

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v7, v1, :cond_1

    aget v7, p1, v7

    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_3

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x2

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move v8, v4

    goto :goto_1
.end method

.method public static translateJoystick(FFFFFFJ)Landroid/view/MotionEvent;
    .locals 20

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v18, v2

    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, p0, v2

    const/high16 v3, 0x43000000    # 128.0f

    sub-float v3, v3, p1

    const/high16 v4, 0x43000000    # 128.0f

    sub-float v4, p2, v4

    const/high16 v5, 0x43000000    # 128.0f

    sub-float v5, v5, p3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LX: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RY:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v2, 0xe

    invoke-virtual {v6, v2, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v2, 0xf

    move/from16 v0, p4

    invoke-virtual {v6, v2, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/16 v2, 0x10

    move/from16 v0, p5

    invoke-virtual {v6, v2, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    aput-object v6, v9, v2

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const v15, 0x1000010

    const/16 v16, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    const v16, 0x1000010

    const/16 v17, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static translateJoystick(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    move v5, v4

    invoke-static/range {v0 .. v7}, Lcom/nibiru/lib/BTUtil;->translateJoystick(FFFFFFJ)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static translateKey(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 13

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1
.end method

.method public static translateMouse(FFFFFFJ)Landroid/view/MotionEvent;
    .locals 20

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v18, v2

    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, p0, v2

    const/high16 v3, 0x43000000    # 128.0f

    sub-float v3, v3, p1

    const/high16 v4, 0x43000000    # 128.0f

    sub-float v4, p2, v4

    const/high16 v5, 0x43000000    # 128.0f

    sub-float v5, v5, p3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LX: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " RY:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v5, 0x0

    const/high16 v6, 0x43480000    # 200.0f

    add-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v5, 0x1

    const/high16 v6, 0x43c80000    # 400.0f

    add-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v5, 0x1

    new-array v9, v5, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x43480000    # 200.0f

    add-float/2addr v5, v2

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x43c80000    # 400.0f

    add-float/2addr v5, v3

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v4, 0x1

    new-array v8, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v8, v4

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const/16 v15, 0x2002

    const/16 v16, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    sget-boolean v4, Lcom/nibiru/lib/BTUtil;->isStart:Z

    if-nez v4, :cond_3

    float-to-int v2, v2

    if-eqz v2, :cond_2

    float-to-int v2, v3

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->isStart:Z

    const/16 v6, 0x9

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x2002

    const/16 v17, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    float-to-int v2, v2

    if-nez v2, :cond_4

    float-to-int v2, v3

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->isStart:Z

    const/4 v6, 0x7

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x2002

    const/16 v17, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->isStart:Z

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x2002

    const/16 v17, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p6

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static translateTouch(IFFJ)Landroid/view/MotionEvent;
    .locals 19

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v18, v2

    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, p1, v2

    float-to-int v4, v2

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, v2, p2

    float-to-int v5, v2

    if-nez p0, :cond_1

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43960000    # 300.0f

    add-float/2addr v3, v2

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, v2, p2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    add-float/2addr v2, v6

    :goto_1
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v7, 0x1

    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aput-object v6, v9, v7

    const/4 v6, 0x0

    aget-object v6, v9, v6

    iput v3, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iput v2, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const v3, 0x3f28f5c3    # 0.66f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const/16 v15, 0x1002

    const/16 v16, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44610000    # 900.0f

    add-float/2addr v3, v2

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v2, v2, p2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    add-float/2addr v2, v6

    goto :goto_1

    :cond_2
    if-nez p0, :cond_8

    sget-boolean v2, Lcom/nibiru/lib/BTUtil;->Q:Z

    if-nez v2, :cond_5

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->Q:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DOWN LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NULL LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->Q:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOVE LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UP LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->Q:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    sget-boolean v2, Lcom/nibiru/lib/BTUtil;->R:Z

    if-nez v2, :cond_b

    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->R:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DOWN LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NULL LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    if-nez v4, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->R:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOVE LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UP LX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/nibiru/lib/BTUtil;->R:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static translateTouch(FFFFJ)[Landroid/view/MotionEvent;
    .locals 2

    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, p4, p5}, Lcom/nibiru/lib/BTUtil;->translateTouch(IFFJ)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1, p2, p3, p4, p5}, Lcom/nibiru/lib/BTUtil;->translateTouch(IFFJ)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent;

    goto :goto_0
.end method
