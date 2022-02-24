.class public Ltv/ouya/console/api/OuyaFacade;
.super Ljava/lang/Object;
.source "OuyaFacade.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/OuyaFacade$1;,
        Ltv/ouya/console/api/OuyaFacade$RequestGamerInfoRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;,
        Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;,
        Ltv/ouya/console/api/OuyaFacade$DeviceHardware;,
        Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    }
.end annotation


# static fields
.field private static final ALL_DATA_COLUMNS:[Ljava/lang/String;

.field private static final EXTRA_DEVICE_ENUM:Ljava/lang/String; = "DEVICE_ENUM"

.field private static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final EXTRA_SUPPORTED_DEVICE:Ljava/lang/String; = "SUPPORTED_DEVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "OUYAF"

.field private static final ODK_INITIALIZED_ACTION:Ljava/lang/String; = "tv.ouya.ODK_INITIALIZED"

.field private static final ODK_SHUTDOWN_ACTION:Ljava/lang/String; = "tv.ouya.ODK_SHUTDOWN"

.field static final ODK_VERSION_NUMBER:I = 0x3e

.field private static final OUYA_DEVICE_INFO_ACTION:Ljava/lang/String; = "tv.ouya.DEVICE_INFO_ACTION"

.field private static final USER_DATA_COLUMNS:[Ljava/lang/String;

.field private static hasShownNonOuyaMessage:Z

.field private static instance:Ltv/ouya/console/api/OuyaFacade;


# instance fields
.field private bindRequestHasBeenMade:Z

.field private context:Landroid/content/Context;

.field private developerId:Ljava/lang/String;

.field private mDeviceHardware:Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

.field private pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Ltv/ouya/console/api/OuyaFacade;->USER_DATA_COLUMNS:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "property_name"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Ltv/ouya/console/api/OuyaFacade;->ALL_DATA_COLUMNS:[Ljava/lang/String;

    .line 43
    new-instance v0, Ltv/ouya/console/api/OuyaFacade;

    invoke-direct {v0}, Ltv/ouya/console/api/OuyaFacade;-><init>()V

    sput-object v0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    .line 213
    sput-boolean v2, Ltv/ouya/console/api/OuyaFacade;->hasShownNonOuyaMessage:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    .line 84
    const-string v0, "OUYAF"

    const-string v1, "ODK version number: 62"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method static synthetic access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/OuyaFacade;

    .prologue
    .line 27
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    return-object v0
.end method

.method static synthetic access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/OuyaFacade;

    .prologue
    .line 27
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->developerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Ltv/ouya/console/api/OuyaFacade;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    return-object v0
.end method

.method public static getOdkVersionNumber()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x3e

    return v0
.end method

.method private runRequest(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "requestRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 389
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->ensureServiceIsBound()V

    .line 390
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static setInstance(Ltv/ouya/console/api/OuyaFacade;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/api/OuyaFacade;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    sput-object p0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    .line 76
    return-void
.end method


# virtual methods
.method public bindRequestHasBeenMade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    iget-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    return v0
.end method

.method ensureServiceIsBound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 447
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 448
    const-string v1, "OUYAF"

    const-string v2, "Dropping request because connect has been shut down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v1, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    if-nez v1, :cond_0

    .line 452
    const-string v1, "inAppPurchase"

    const-string v2, "Binding to IapService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tv.ouya"

    const-string v2, "tv.ouya.console.service.iap.IapService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 456
    iput-boolean v3, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    goto :goto_0
.end method

.method public getAllGameData()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 306
    const/4 v7, 0x0

    .line 307
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://tv.ouya.userdata/settings/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ltv/ouya/console/api/OuyaFacade;->ALL_DATA_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "results":Landroid/database/Cursor;
    move-object v8, v7

    .line 311
    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    if-nez v8, :cond_1

    .line 313
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v7

    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 321
    return-object v8

    .line 319
    :catchall_0
    move-exception v0

    move-object v7, v8

    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v7, v8

    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getDeviceHardware()Ltv/ouya/console/api/OuyaFacade$DeviceHardware;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 189
    iget-object v6, p0, Ltv/ouya/console/api/OuyaFacade;->mDeviceHardware:Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    if-nez v6, :cond_2

    .line 190
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Must call OuyaFacade.init first"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_0
    iget-object v6, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "tv.ouya.DEVICE_INFO_ACTION"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 194
    .local v2, "deviceInfoIntent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 196
    new-instance v6, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    const-string v7, "unknown"

    sget-object v8, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->UNKNOWN:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    invoke-direct {v6, v10, v7, v8}, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;-><init>(ZLjava/lang/String;Ltv/ouya/console/api/OuyaFacade$DeviceEnum;)V

    .line 210
    .end local v2    # "deviceInfoIntent":Landroid/content/Intent;
    :goto_0
    return-object v6

    .line 199
    .restart local v2    # "deviceInfoIntent":Landroid/content/Intent;
    :cond_1
    const-string v6, "SUPPORTED_DEVICE"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 200
    .local v5, "supportedDevice":Z
    const-string v6, "DEVICE_NAME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "deviceName":Ljava/lang/String;
    const-string v6, "DEVICE_ENUM"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "deviceEnumName":Ljava/lang/String;
    sget-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->UNKNOWN:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .line 204
    .local v0, "deviceEnum":Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    :try_start_0
    invoke-static {v1}, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->valueOf(Ljava/lang/String;)Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_1
    new-instance v6, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    invoke-direct {v6, v5, v3, v0}, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;-><init>(ZLjava/lang/String;Ltv/ouya/console/api/OuyaFacade$DeviceEnum;)V

    iput-object v6, p0, Ltv/ouya/console/api/OuyaFacade;->mDeviceHardware:Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    .line 210
    .end local v0    # "deviceEnum":Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    .end local v1    # "deviceEnumName":Ljava/lang/String;
    .end local v2    # "deviceInfoIntent":Landroid/content/Intent;
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v5    # "supportedDevice":Z
    :cond_2
    iget-object v6, p0, Ltv/ouya/console/api/OuyaFacade;->mDeviceHardware:Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    goto :goto_0

    .line 205
    .restart local v0    # "deviceEnum":Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    .restart local v1    # "deviceEnumName":Ljava/lang/String;
    .restart local v2    # "deviceInfoIntent":Landroid/content/Intent;
    .restart local v3    # "deviceName":Ljava/lang/String;
    .restart local v5    # "supportedDevice":Z
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "OUYAF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error looking up deviceEnum for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGameData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 285
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 286
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ltv/ouya/console/api/OuyaFacade;->USER_DATA_COLUMNS:[Ljava/lang/String;

    const-string v3, "property_name = ?"

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 290
    .local v7, "results":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 296
    :goto_0
    return-object v5

    .line 294
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getRemoteService()Ltv/ouya/console/internal/IIapServiceDefinition;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "developerId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Ltv/ouya/console/api/OuyaFacade;->developerId:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tv.ouya.ODK_INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "initializedIntent":Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningOnOUYAHardware()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 221
    const-string v2, "cardhu"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ouya_1_1"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 226
    .local v0, "runningOnOuya":Z
    :goto_0
    if-nez v0, :cond_1

    .line 227
    sget-boolean v2, Ltv/ouya/console/api/OuyaFacade;->hasShownNonOuyaMessage:Z

    if-nez v2, :cond_1

    .line 228
    sput-boolean v1, Ltv/ouya/console/api/OuyaFacade;->hasShownNonOuyaMessage:Z

    .line 229
    const-string v1, "OUYAF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not running on Ouya hardware: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    return v0

    .line 221
    .end local v0    # "runningOnOuya":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningOnOUYASupportedHardware()Z
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->getDeviceHardware()Ltv/ouya/console/api/OuyaFacade$DeviceHardware;

    move-result-object v1

    invoke-virtual {v1}, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->isSupported()Z

    move-result v0

    .line 242
    .local v0, "runningOnSupportedHardware":Z
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 423
    const-string v0, "inAppPurchase"

    const-string v1, "Successfully bound to IapService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {p2}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 425
    :goto_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 426
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    .line 441
    return-void
.end method

.method public putGameData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 265
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "value"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 269
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "property_name = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 270
    .local v7, "result":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "property_name = ?"

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public requestGamerInfo(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/GamerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "gamerInfoListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/GamerInfo;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestGamerInfoRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/OuyaFacade$RequestGamerInfoRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method public requestGamerUuid(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "gamerUuidListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public requestProductList(Ljava/util/List;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "purchasables":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/Purchasable;>;"
    .local p2, "productListListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/ArrayList<Ltv/ouya/console/api/Product;>;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ljava/util/List;Ltv/ouya/console/api/OuyaResponseListener;)V

    .line 333
    .local v0, "requestProductListRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public requestPurchase(Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "purchasable"    # Ltv/ouya/console/api/Purchasable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/Purchasable;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "purchaseListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/api/OuyaResponseListener;)V

    .line 354
    .local v0, "requestProductListRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public requestReceipts(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "receiptListListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/OuyaFacade$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;

    invoke-direct {v0, p0}, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;)V

    .line 252
    .local v0, "setTestModeRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    iput-object v3, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tv.ouya.ODK_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "shutdownIntent":Landroid/content/Intent;
    const-string v1, "package_name"

    iget-object v2, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    iput-object v3, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    .line 125
    .end local v0    # "shutdownIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
