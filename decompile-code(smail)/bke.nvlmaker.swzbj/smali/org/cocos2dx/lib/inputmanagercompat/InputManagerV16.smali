.class public Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;
.super Ljava/lang/Object;
.source "InputManagerV16.java"

# interfaces
.implements Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;
    }
.end annotation


# instance fields
.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;",
            "Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mInputManager:Landroid/hardware/input/InputManager;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mListeners:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public registerInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    new-instance v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;

    invoke-direct {v0, p1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;-><init>(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)V

    .line 78
    .local v0, "v16Listener":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;
    iget-object v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 79
    iget-object v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public unregisterInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .prologue
    .line 84
    iget-object v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;

    .line 85
    .local v0, "curListener":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 90
    :cond_0
    return-void
.end method
