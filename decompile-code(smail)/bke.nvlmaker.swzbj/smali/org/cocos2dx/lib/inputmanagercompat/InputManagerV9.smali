.class public Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;
.super Ljava/lang/Object;
.source "InputManagerV9.java"

# interfaces
.implements Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;,
        Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;
    }
.end annotation


# static fields
.field private static final CHECK_ELAPSED_TIME:J = 0xbb8L

.field private static final LOG_TAG:Ljava/lang/String; = "InputManagerV9"

.field private static final MESSAGE_TEST_FOR_DISCONNECT:I = 0x65

.field private static final ON_DEVICE_ADDED:I = 0x0

.field private static final ON_DEVICE_CHANGED:I = 0x1

.field private static final ON_DEVICE_REMOVED:I = 0x2


# instance fields
.field private final mDefaultHandler:Landroid/os/Handler;

.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    .line 91
    new-instance v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;-><init>(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDefaultHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->getInputDeviceIds()[I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;II)V
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->notifyListeners(II)V

    return-void
.end method

.method private notifyListeners(II)V
    .locals 5
    .param p1, "why"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 134
    iget-object v4, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    iget-object v4, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .line 138
    .local v2, "listener":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;
    iget-object v4, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 139
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {p1, p2, v2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->getDeviceEvent(IILorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;

    move-result-object v3

    .line 140
    .local v3, "odc":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 143
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;
    .end local v3    # "odc":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 99
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 11

    .prologue
    .line 106
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 107
    .local v0, "activeDevices":[I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 108
    .local v6, "time":J
    move-object v1, v0

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget v3, v1, v2

    .line 109
    .local v3, "id":I
    iget-object v8, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 110
    .local v4, "lastContact":[J
    if-nez v4, :cond_0

    .line 112
    iget-object v8, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    const/4 v9, 0x1

    new-array v9, v9, [J

    const/4 v10, 0x0

    aput-wide v6, v9, v10

    invoke-virtual {v8, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "id":I
    .end local v4    # "lastContact":[J
    :cond_1
    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 191
    .local v0, "id":I
    iget-object v4, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 192
    .local v1, "timeArray":[J
    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0, v5, v0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->notifyListeners(II)V

    .line 194
    const/4 v4, 0x1

    new-array v1, v4, [J

    .line 195
    iget-object v4, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 198
    .local v2, "time":J
    aput-wide v2, v1, v5

    .line 199
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDefaultHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDefaultHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

.method public registerInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    if-nez p2, :cond_0

    .line 122
    iget-object p2, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mDefaultHandler:Landroid/os/Handler;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public unregisterInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method
