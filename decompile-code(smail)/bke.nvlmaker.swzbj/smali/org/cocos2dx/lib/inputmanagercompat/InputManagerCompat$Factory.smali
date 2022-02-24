.class public Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$Factory;
.super Ljava/lang/Object;
.source "InputManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputManager(Landroid/content/Context;)Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 134
    new-instance v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV16;-><init>(Landroid/content/Context;)V

    .line 136
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;

    invoke-direct {v0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;-><init>()V

    goto :goto_0
.end method
