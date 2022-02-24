.class public interface abstract Lorg/cocos2dx/lib/GameControllerDelegate;
.super Ljava/lang/Object;
.source "GameControllerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;
    }
.end annotation


# static fields
.field public static final BUTTON_A:I = 0x1b4

.field public static final BUTTON_B:I = 0x1b5

.field public static final BUTTON_C:I = 0x1b6

.field public static final BUTTON_DPAD_CENTER:I = 0x1be

.field public static final BUTTON_DPAD_DOWN:I = 0x1bb

.field public static final BUTTON_DPAD_LEFT:I = 0x1bc

.field public static final BUTTON_DPAD_RIGHT:I = 0x1bd

.field public static final BUTTON_DPAD_UP:I = 0x1ba

.field public static final BUTTON_LEFT_SHOULDER:I = 0x1bf

.field public static final BUTTON_LEFT_THUMBSTICK:I = 0x1c3

.field public static final BUTTON_LEFT_TRIGGER:I = 0x1c1

.field public static final BUTTON_RIGHT_SHOULDER:I = 0x1c0

.field public static final BUTTON_RIGHT_THUMBSTICK:I = 0x1c4

.field public static final BUTTON_RIGHT_TRIGGER:I = 0x1c2

.field public static final BUTTON_SELECT:I = 0x1c6

.field public static final BUTTON_START:I = 0x1c5

.field public static final BUTTON_X:I = 0x1b7

.field public static final BUTTON_Y:I = 0x1b8

.field public static final BUTTON_Z:I = 0x1b9

.field public static final KEY_BASE:I = 0x1b0

.field public static final THUMBSTICK_LEFT_X:I = 0x1b0

.field public static final THUMBSTICK_LEFT_Y:I = 0x1b1

.field public static final THUMBSTICK_RIGHT_X:I = 0x1b2

.field public static final THUMBSTICK_RIGHT_Y:I = 0x1b3


# virtual methods
.method public abstract dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setControllerEventListener(Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;)V
.end method
