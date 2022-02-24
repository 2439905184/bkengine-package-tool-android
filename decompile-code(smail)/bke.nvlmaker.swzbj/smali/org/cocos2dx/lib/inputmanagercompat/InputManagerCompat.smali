.class public interface abstract Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;
.super Ljava/lang/Object;
.source "InputManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$Factory;,
        Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;
    }
.end annotation


# virtual methods
.method public abstract getInputDevice(I)Landroid/view/InputDevice;
.end method

.method public abstract getInputDeviceIds()[I
.end method

.method public abstract onGenericMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract registerInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;Landroid/os/Handler;)V
.end method

.method public abstract unregisterInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;)V
.end method
