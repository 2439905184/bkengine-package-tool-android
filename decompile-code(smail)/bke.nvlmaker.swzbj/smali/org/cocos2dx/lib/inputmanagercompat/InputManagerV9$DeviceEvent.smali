.class Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
.super Ljava/lang/Object;
.source "InputManagerV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceEvent"
.end annotation


# static fields
.field private static sEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mListener:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

.field private mMessageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->sEventQueue:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method static getDeviceEvent(IILorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    .locals 2
    .param p0, "messageType"    # I
    .param p1, "id"    # I
    .param p2, "listener"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .prologue
    .line 156
    sget-object v1, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->sEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;

    .line 157
    .local v0, "curChanged":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;

    .end local v0    # "curChanged":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    invoke-direct {v0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;-><init>()V

    .line 160
    .restart local v0    # "curChanged":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;
    :cond_0
    iput p0, v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mMessageType:I

    .line 161
    iput p1, v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mId:I

    .line 162
    iput-object p2, v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mListener:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .line 163
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mMessageType:I

    packed-switch v0, :pswitch_data_0

    .line 179
    const-string v0, "InputManagerV9"

    const-string v1, "Unknown Message Type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    sget-object v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->sEventQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 184
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mListener:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    iget v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mId:I

    invoke-interface {v0, v1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceAdded(I)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mListener:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    iget v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mId:I

    invoke-interface {v0, v1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceChanged(I)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mListener:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    iget v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$DeviceEvent;->mId:I

    invoke-interface {v0, v1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceRemoved(I)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
