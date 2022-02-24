.class public Lcom/unity3d/ads/android/UnityAdsDeviceLog;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/UnityAdsDeviceLog$1;,
        Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field private static LOGGING:Z

.field public static LOGLEVEL_DEBUG:I

.field public static LOGLEVEL_ERROR:I

.field public static LOGLEVEL_INFO:I

.field public static LOGLEVEL_NONE:I

.field public static LOGLEVEL_WARNING:I

.field private static LOG_DEBUG:Z

.field private static LOG_ERROR:Z

.field private static LOG_INFO:Z

.field private static LOG_WARNING:Z

.field private static _deviceLogLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;",
            "Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGGING:Z

    .line 11
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 12
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 13
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 14
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 16
    sput v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_NONE:I

    .line 17
    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_ERROR:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_WARNING:I

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    .line 20
    const/16 v0, 0x8

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "i"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "d"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "w"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "e"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static checkMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const-string p0, "DO NOT USE EMPTY MESSAGES, use UnityAdsDeviceLog.entered() instead"

    .line 151
    :cond_1
    return-object p0
.end method

.method private static createLogEntry(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    .locals 8
    .param p0, "level"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 160
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 161
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->getLogLevel(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v3

    .line 162
    .local v3, "logLevel":Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
    const/4 v2, 0x0

    .line 164
    .local v2, "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    if-eqz v3, :cond_3

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "callerIndex":I
    const/4 v4, 0x0

    .line 168
    .local v4, "markedIndex":Z
    const/4 v0, 0x0

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 169
    aget-object v1, v5, v0

    .line 170
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    const/4 v4, 0x1

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 178
    :cond_1
    const/4 v1, 0x0

    .line 180
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 181
    aget-object v1, v5, v0

    .line 184
    :cond_2
    if-eqz v1, :cond_3

    .line 185
    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    .end local v2    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    invoke-direct {v2, v3, p1, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 193
    .end local v0    # "callerIndex":I
    .end local v4    # "markedIndex":Z
    .restart local v2    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    :cond_3
    return-object v2

    .line 168
    .restart local v0    # "callerIndex":I
    .restart local v4    # "markedIndex":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    const/16 v0, 0xc00

    .line 85
    .local v0, "maxDebugMsgLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7800

    if-ge v1, v2, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static entered()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private static getLogLevel(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
    .locals 1
    .param p0, "logLevel"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    .prologue
    .line 155
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "newLevel"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    if-lt p0, v0, :cond_0

    .line 43
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 44
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 45
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 46
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 68
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    if-lt p0, v0, :cond_1

    .line 48
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 49
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 50
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 51
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_WARNING:I

    if-lt p0, v0, :cond_2

    .line 53
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 54
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 55
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 56
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 57
    :cond_2
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_ERROR:I

    if-lt p0, v0, :cond_3

    .line 58
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 59
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 60
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 61
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 63
    :cond_3
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 64
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 65
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 66
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGGING:Z

    .line 121
    .local v0, "canLog":Z
    if-eqz v0, :cond_0

    .line 122
    sget-object v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog$1;->$SwitchMap$com$unity3d$ads$android$UnityAdsDeviceLog$UnityAdsLogLevel:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-static {p0, p1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->createLogEntry(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    move-result-object v1

    .line 142
    .local v1, "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->writeToLog(Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;)V

    .line 144
    .end local v1    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    :cond_1
    return-void

    .line 124
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 128
    goto :goto_0

    .line 130
    :pswitch_2
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 134
    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static writeToLog(Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;)V
    .locals 6
    .param p0, "logEntry"    # Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "receivingMethod":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    const-class v1, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 206
    :goto_0
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v1

    goto :goto_1

    .line 203
    :catch_1
    move-exception v1

    goto :goto_0
.end method
