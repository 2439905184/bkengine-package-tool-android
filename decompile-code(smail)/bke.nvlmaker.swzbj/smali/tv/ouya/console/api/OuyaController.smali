.class public Ltv/ouya/console/api/OuyaController;
.super Ljava/lang/Object;
.source "OuyaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/OuyaController$ButtonData;
    }
.end annotation


# static fields
.field private static AVAILABLE_AXES:[I = null

.field public static final AXIS_L2:I = 0x11

.field public static final AXIS_LS_X:I = 0x0

.field public static final AXIS_LS_Y:I = 0x1

.field public static final AXIS_R2:I = 0x12

.field public static final AXIS_RS_X:I = 0xb

.field public static final AXIS_RS_Y:I = 0xe

.field public static final BUTTON_A:I = 0x61

.field public static final BUTTON_DPAD:I = 0x17

.field public static final BUTTON_DPAD_DOWN:I = 0x14

.field public static final BUTTON_DPAD_LEFT:I = 0x15

.field public static final BUTTON_DPAD_RIGHT:I = 0x16

.field public static final BUTTON_DPAD_UP:I = 0x13

.field public static final BUTTON_HOME:I = 0x3

.field public static final BUTTON_L1:I = 0x66

.field public static final BUTTON_L2:I = 0x68
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_L3:I = 0x6a

.field public static final BUTTON_MENU:I = 0x52

.field public static final BUTTON_O:I = 0x60

.field public static final BUTTON_R1:I = 0x67

.field public static final BUTTON_R2:I = 0x69
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_R3:I = 0x6b

.field public static final BUTTON_U:I = 0x63

.field public static final BUTTON_Y:I = 0x64

.field private static final EXTRA_OUYA_CONTROLLER_DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final EXTRA_OUYA_CONTROLLER_PLAYER_NUM:Ljava/lang/String; = "PLAYER_NUM"

.field private static final INVALID_INPUT_DEVICE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OuyaController"

.field public static final MAX_CONTROLLERS:I = 0x4

.field private static final OUYA_CONTROLLER_ADDED_ACTION:Ljava/lang/String; = "tv.ouya.controller.added"

.field private static final OUYA_CONTROLLER_REMOVED_ACTION:Ljava/lang/String; = "tv.ouya.controller.removed"

.field private static final PRESSED_THIS_FRAME:I = 0x1

.field private static final RELEASED_THIS_FRAME:I = 0x2

.field public static final STICK_DEADZONE:F = 0.25f

.field private static appContext:Landroid/content/Context;

.field private static sButtonDataBundle:Landroid/os/Bundle;

.field private static sButtonDataCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/OuyaController$ButtonData;",
            ">;"
        }
    .end annotation
.end field

.field private static final sControllerUri:Landroid/net/Uri;

.field static final s_controllers:[Ltv/ouya/console/api/OuyaController;


# instance fields
.field private axisValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private buttonValues:Landroid/util/SparseBooleanArray;

.field private device:Landroid/view/InputDevice;

.field private deviceId:I

.field private deviceName:Ljava/lang/String;

.field private thisFrameButtonValues:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltv/ouya/console/api/OuyaController;->AVAILABLE_AXES:[I

    .line 168
    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/OuyaController;->sControllerUri:Landroid/net/Uri;

    .line 236
    sput-object v1, Ltv/ouya/console/api/OuyaController;->sButtonDataBundle:Landroid/os/Bundle;

    .line 237
    sput-object v1, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    .line 513
    const/4 v0, 0x4

    new-array v0, v0, [Ltv/ouya/console/api/OuyaController;

    sput-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    return-void

    .line 150
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0x11
        0x12
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p1, p0, Ltv/ouya/console/api/OuyaController;->deviceId:I

    .line 623
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    .line 624
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    .line 625
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    .line 626
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    .line 628
    invoke-static {p1}, Ltv/ouya/console/api/OuyaController;->getBluetoothNameFromDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceName:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceName:Ljava/lang/String;

    .line 634
    :cond_1
    return-void
.end method

.method private static getBluetoothNameFromDeviceId(I)Ljava/lang/String;
    .locals 10
    .param p0, "deviceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 581
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v6

    .line 584
    :cond_1
    const/4 v6, 0x0

    .line 586
    .local v6, "btName":Ljava/lang/String;
    :try_start_0
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/OuyaController;->sControllerUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bt_name"

    aput-object v4, v2, v3

    const-string v3, "input_device_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 593
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 597
    :cond_2
    if-eqz v7, :cond_0

    .line 598
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 601
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 597
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 603
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 604
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "OuyaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getButtonData(I)Ltv/ouya/console/api/OuyaController$ButtonData;
    .locals 13
    .param p0, "ouyaButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 248
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    if-eqz v9, :cond_0

    .line 249
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    invoke-virtual {v9, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/ouya/console/api/OuyaController$ButtonData;

    .line 250
    .local v4, "cachedButtonData":Ltv/ouya/console/api/OuyaController$ButtonData;
    if-eqz v4, :cond_0

    .line 283
    .end local v4    # "cachedButtonData":Ltv/ouya/console/api/OuyaController$ButtonData;
    :goto_0
    return-object v4

    .line 255
    :cond_0
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataBundle:Landroid/os/Bundle;

    if-nez v9, :cond_1

    .line 256
    sget-object v9, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 258
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sControllerUri:Landroid/net/Uri;

    const-string v10, "get_button_images"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    sput-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "buttonValueStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 268
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataBundle:Landroid/os/Bundle;

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 269
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .line 270
    .local v8, "is":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v8, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 274
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "is":Ljava/io/FileInputStream;
    :goto_2
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataBundle:Landroid/os/Bundle;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "buttonName":Ljava/lang/String;
    new-instance v1, Ltv/ouya/console/api/OuyaController$ButtonData;

    invoke-direct {v1, v6, v2}, Ltv/ouya/console/api/OuyaController$ButtonData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 278
    .local v1, "buttonData":Ltv/ouya/console/api/OuyaController$ButtonData;
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    if-nez v9, :cond_2

    .line 279
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    sput-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    .line 281
    :cond_2
    sget-object v9, Ltv/ouya/console/api/OuyaController;->sButtonDataCache:Landroid/util/SparseArray;

    invoke-virtual {v9, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v1

    .line 283
    goto :goto_0

    .line 259
    .end local v1    # "buttonData":Ltv/ouya/console/api/OuyaController$ButtonData;
    .end local v2    # "buttonName":Ljava/lang/String;
    .end local v3    # "buttonValueStr":Ljava/lang/String;
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 260
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "OuyaController"

    const-string v10, "Error querying button remapping"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 261
    goto :goto_0

    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "buttonValueStr":Ljava/lang/String;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v8, v1

    .line 269
    goto :goto_1

    .line 271
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    .line 272
    .local v7, "e":Ljava/io/IOException;
    const-string v9, "OuyaController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;
    .locals 5
    .param p0, "deviceId"    # I

    .prologue
    .line 290
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .local v0, "arr$":[Ltv/ouya/console/api/OuyaController;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 291
    .local v1, "c":Ltv/ouya/console/api/OuyaController;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 295
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :goto_1
    return-object v1

    .line 290
    .restart local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getControllerByPlayer(I)Ltv/ouya/console/api/OuyaController;
    .locals 1
    .param p0, "playerNum"    # I

    .prologue
    .line 315
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 316
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v0, p0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDeviceIdFromPlayerNum(I)I
    .locals 9
    .param p0, "playerNum"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 538
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/OuyaController;->sControllerUri:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "input_device_id"

    aput-object v3, v2, v8

    const-string v3, "player_num = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 545
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 550
    .local v7, "deviceId":I
    if-eqz v6, :cond_0

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    .end local v7    # "deviceId":I
    :cond_0
    :goto_0
    return v7

    .line 550
    :cond_1
    if-eqz v6, :cond_2

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;
    .locals 5
    .param p0, "deviceId"    # I

    .prologue
    .line 516
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 517
    .local v0, "c":Ltv/ouya/console/api/OuyaController;
    if-eqz v0, :cond_0

    .line 534
    .end local v0    # "c":Ltv/ouya/console/api/OuyaController;
    :goto_0
    return-object v0

    .line 521
    .restart local v0    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_0
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getPlayerNumFromDeviceId(I)I

    move-result v1

    .line 522
    .local v1, "playerNum":I
    if-ltz v1, :cond_1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 523
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :cond_2
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 527
    const-string v2, "OuyaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller for player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already found, but doesn\'t match device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v2, v1

    goto :goto_0

    .line 533
    :cond_3
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    new-instance v3, Ltv/ouya/console/api/OuyaController;

    invoke-direct {v3, p0}, Ltv/ouya/console/api/OuyaController;-><init>(I)V

    aput-object v3, v2, v1

    .line 534
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v2, v1

    goto :goto_0
.end method

.method public static getPlayerNumByDeviceId(I)I
    .locals 2
    .param p0, "deviceId"    # I

    .prologue
    .line 303
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 305
    .local v0, "controller":Ltv/ouya/console/api/OuyaController;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, -0x1

    .line 308
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ltv/ouya/console/api/OuyaController;->getPlayerNum()I

    move-result v1

    goto :goto_0
.end method

.method private static getPlayerNumFromDeviceId(I)I
    .locals 9
    .param p0, "deviceId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 558
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v7

    .line 561
    :cond_1
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/OuyaController;->sControllerUri:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "player_num"

    aput-object v3, v2, v8

    const-string v3, "input_device_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 568
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 573
    .local v7, "playerNum":I
    if-eqz v6, :cond_0

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 573
    .end local v7    # "playerNum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 222
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    .line 179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 180
    invoke-static {v2}, Ltv/ouya/console/api/OuyaController;->getDeviceIdFromPlayerNum(I)I

    move-result v0

    .line 181
    .local v0, "deviceId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 182
    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    .line 179
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "deviceId":I
    :cond_2
    new-instance v3, Ltv/ouya/console/api/OuyaController$1;

    invoke-direct {v3}, Ltv/ouya/console/api/OuyaController$1;-><init>()V

    .line 218
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "tv.ouya.controller.added"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v4, "tv.ouya.controller.removed"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    sget-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 325
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v7

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v2

    .line 334
    .local v2, "device":Ltv/ouya/console/api/OuyaController;
    if-eqz v2, :cond_0

    .line 339
    sget-object v0, Ltv/ouya/console/api/OuyaController;->AVAILABLE_AXES:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget v6, v0, v3

    .line 340
    .local v6, "ouyaAxis":I
    iget-object v7, v2, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 341
    .local v1, "curValue":Ljava/lang/Float;
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 342
    .local v5, "newValue":F
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_3

    .line 343
    :cond_2
    iget-object v7, v2, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "curValue":Ljava/lang/Float;
    .end local v5    # "newValue":F
    .end local v6    # "ouyaAxis":I
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 353
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaController;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 363
    .local v0, "device":Ltv/ouya/console/api/OuyaController;
    if-nez v0, :cond_0

    move v4, v5

    .line 384
    :goto_0
    return v4

    .line 366
    :cond_0
    const/4 v2, 0x0

    .line 367
    .local v2, "newVal":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 377
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 378
    .local v3, "ouyaButton":I
    iget-object v6, v0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_1

    iget-object v6, v0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eq v6, v2, :cond_2

    .line 379
    :cond_1
    if-eqz v2, :cond_3

    move v1, v4

    .line 380
    .local v1, "flags":I
    :goto_2
    iget-object v6, v0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 381
    iget-object v5, v0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 383
    .end local v1    # "flags":I
    :cond_2
    iget-object v5, v0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 370
    .end local v3    # "ouyaButton":I
    :pswitch_0
    const/4 v2, 0x1

    .line 371
    goto :goto_1

    .line 373
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_1

    .line 379
    .restart local v3    # "ouyaButton":I
    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaController;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static setCursorBitmap(Landroid/graphics/Bitmap;FF)V
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 423
    const-string v0, "tv.ouya.controller.action.SET_CURSOR_BITMAP"

    .line 424
    .local v0, "ACTION_SET_CURSOR_BITMAP":Ljava/lang/String;
    const-string v1, "CURSOR_BITMAP"

    .line 425
    .local v1, "EXTRA_BITMAP":Ljava/lang/String;
    const-string v2, "HOTSPOT_X"

    .line 426
    .local v2, "EXTRA_HOTSPOT_X":Ljava/lang/String;
    const-string v3, "HOTSPOT_Y"

    .line 427
    .local v3, "EXTRA_HOTSPOT_Y":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "tv.ouya.controller.action.SET_CURSOR_BITMAP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_0

    .line 429
    const-string v5, "CURSOR_BITMAP"

    invoke-virtual {v4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 430
    const-string v5, "HOTSPOT_X"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 431
    const-string v5, "HOTSPOT_Y"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 433
    :cond_0
    sget-object v5, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    return-void
.end method

.method public static showCursor(Z)V
    .locals 4
    .param p0, "showCursor"    # Z

    .prologue
    .line 410
    const-string v0, "tv.ouya.controller.action.HIDE_CURSOR"

    .line 411
    .local v0, "ACTION_HIDE_CURSOR":Ljava/lang/String;
    const-string v1, "tv.ouya.controller.action.SHOW_CURSOR"

    .line 412
    .local v1, "ACTION_SHOW_CURSOR":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v3, "tv.ouya.controller.action.SHOW_CURSOR"

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    return-void

    .line 412
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "tv.ouya.controller.action.HIDE_CURSOR"

    goto :goto_0
.end method

.method public static startOfFrame()V
    .locals 4

    .prologue
    .line 392
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .local v0, "arr$":[Ltv/ouya/console/api/OuyaController;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 393
    .local v1, "c":Ltv/ouya/console/api/OuyaController;
    if-eqz v1, :cond_0

    .line 394
    invoke-direct {v1}, Ltv/ouya/console/api/OuyaController;->startOfFrameInternal()V

    .line 392
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_1
    return-void
.end method

.method private startOfFrameInternal()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 401
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 403
    :cond_0
    return-void
.end method


# virtual methods
.method public buttonChangedThisFrame(I)Z
    .locals 1
    .param p1, "ouyaButton"    # I

    .prologue
    .line 443
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buttonPressedThisFrame(I)Z
    .locals 1
    .param p1, "ouyaButton"    # I

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/OuyaController;->buttonChangedThisFrame(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buttonReleasedThisFrame(I)Z
    .locals 1
    .param p1, "ouyaButton"    # I

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/OuyaController;->buttonChangedThisFrame(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxisValue(I)F
    .locals 2
    .param p1, "ouyaAxis"    # I

    .prologue
    .line 480
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 481
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 482
    .local v0, "value":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 484
    .end local v0    # "value":Ljava/lang/Float;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButton(I)Z
    .locals 2
    .param p1, "ouyaButton"    # I

    .prologue
    .line 491
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 492
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevice()Landroid/view/InputDevice;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Ltv/ouya/console/api/OuyaController;->deviceId:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerNum()I
    .locals 2

    .prologue
    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 503
    sget-object v1, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 507
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 502
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
