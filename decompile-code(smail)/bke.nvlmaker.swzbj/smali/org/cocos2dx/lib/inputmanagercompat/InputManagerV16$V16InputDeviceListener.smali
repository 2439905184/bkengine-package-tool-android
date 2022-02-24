.class Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;
.super Ljava/lang/Object;
.source "InputManagerV16.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "V16InputDeviceListener"
.end annotation


# instance fields
.field final mIDL:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)V
    .locals 0
    .param p1, "idl"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;->mIDL:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    .line 56
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;->mIDL:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    invoke-interface {v0, p1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceAdded(I)V

    .line 61
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;->mIDL:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    invoke-interface {v0, p1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceChanged(I)V

    .line 66
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16$V16InputDeviceListener;->mIDL:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;

    invoke-interface {v0, p1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;->onInputDeviceRemoved(I)V

    .line 71
    return-void
.end method
