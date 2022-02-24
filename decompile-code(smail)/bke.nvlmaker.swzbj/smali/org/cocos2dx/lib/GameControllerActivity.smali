.class public abstract Lorg/cocos2dx/lib/GameControllerActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GameControllerActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;


# static fields
.field public static final DRIVERTYPE_MOGA:I = 0x1

.field public static final DRIVERTYPE_NIBIRU:I = 0x0

.field public static final DRIVERTYPE_OUYA:I = 0x2

.field public static final DRIVERTYPE_STANDARD:I = 0x3

.field public static final DRIVERTYPE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;


# instance fields
.field mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

.field protected mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

.field protected mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

.field protected mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

.field protected mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

.field private mInputManager:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/GameControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mInputManager:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;

    .line 57
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    .line 59
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 60
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 61
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 126
    new-instance v0, Lorg/cocos2dx/lib/GameControllerActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/GameControllerActivity$1;-><init>(Lorg/cocos2dx/lib/GameControllerActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    return-void
.end method


# virtual methods
.method public connectController(I)V
    .locals 7
    .param p1, "driveType"    # I

    .prologue
    .line 66
    :try_start_0
    sget-object v5, Lorg/cocos2dx/lib/GameControllerActivity;->sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-virtual {v5}, Lorg/cocos2dx/lib/GameControllerActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 67
    .local v3, "loader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 68
    .local v0, "controllerDelegate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 69
    iget-object v5, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v5, :cond_1

    .line 98
    .end local v0    # "controllerDelegate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "controllerDelegate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const-string v5, "org.cocos2dx.lib.GameControllerMoga"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 88
    .local v2, "instance":Lorg/cocos2dx/lib/GameControllerDelegate;
    sget-object v5, Lorg/cocos2dx/lib/GameControllerActivity;->sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-virtual {v5, v2, p1}, Lorg/cocos2dx/lib/GameControllerActivity;->setGameControllerInstance(Lorg/cocos2dx/lib/GameControllerDelegate;I)V

    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v5, "onResume"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 92
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0    # "controllerDelegate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "instance":Lorg/cocos2dx/lib/GameControllerDelegate;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "controllerDelegate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    if-nez p1, :cond_5

    .line 74
    :try_start_1
    iget-object v5, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v5, :cond_4

    .line 75
    iget-object v5, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    sget-object v6, Lorg/cocos2dx/lib/GameControllerActivity;->sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-interface {v5, v6}, Lorg/cocos2dx/lib/GameControllerDelegate;->onCreate(Landroid/content/Context;)V

    .line 76
    iget-object v5, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v5}, Lorg/cocos2dx/lib/GameControllerDelegate;->onResume()V

    goto :goto_0

    .line 79
    :cond_4
    const-string v5, "org.cocos2dx.lib.GameControllerNibiru"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 81
    iget-object v5, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-nez v5, :cond_0

    .line 84
    const-string v5, "org.cocos2dx.lib.GameControllerOuya"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "handled":Z
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 211
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 214
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 218
    :cond_2
    if-nez v0, :cond_3

    .line 219
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    invoke-virtual {v1, p1}, Lorg/cocos2dx/lib/GameControllerHelper;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 222
    :cond_3
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "handled":Z
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 191
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 194
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v1, p1}, Lorg/cocos2dx/lib/GameControllerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 198
    :cond_2
    if-nez v0, :cond_3

    .line 199
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    invoke-virtual {v1, p1}, Lorg/cocos2dx/lib/GameControllerHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 202
    :cond_3
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameControllerDelegate(I)Lorg/cocos2dx/lib/GameControllerDelegate;
    .locals 1
    .param p1, "driveType"    # I

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 123
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    sput-object p0, Lorg/cocos2dx/lib/GameControllerActivity;->sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;

    .line 160
    invoke-static {p0}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$Factory;->getInputManager(Landroid/content/Context;)Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mInputManager:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;

    .line 161
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mInputManager:Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat;->registerInputDeviceListener(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerCompat$InputDeviceListener;Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0, p0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onCreate(Landroid/content/Context;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0, p0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onCreate(Landroid/content/Context;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0, p0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onCreate(Landroid/content/Context;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    if-nez v0, :cond_3

    .line 173
    new-instance v0, Lorg/cocos2dx/lib/GameControllerHelper;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/GameControllerHelper;-><init>(Lorg/cocos2dx/lib/GameControllerActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    .line 175
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onDestroy()V

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onDestroy()V

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onDestroy()V

    .line 303
    :cond_2
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 304
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 227
    sget-object v0, Lorg/cocos2dx/lib/GameControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceAdded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/GameControllerHelper;->onInputDeviceAdded(I)V

    .line 230
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 242
    sget-object v0, Lorg/cocos2dx/lib/GameControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 254
    sget-object v0, Lorg/cocos2dx/lib/GameControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/GameControllerHelper;->onInputDeviceRemoved(I)V

    .line 257
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onPause()V

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onPause()V

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onPause()V

    .line 288
    :cond_2
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 289
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 263
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onResume()V

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onResume()V

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onResume()V

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerHelper:Lorg/cocos2dx/lib/GameControllerHelper;

    iget-object v0, v0, Lorg/cocos2dx/lib/GameControllerHelper;->mGameController:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/cocos2dx/lib/GameControllerHelper;->gatherControllers(Landroid/util/SparseArray;)V

    .line 274
    return-void
.end method

.method public setGameControllerInstance(Lorg/cocos2dx/lib/GameControllerDelegate;I)V
    .locals 1
    .param p1, "controllerDelegate"    # Lorg/cocos2dx/lib/GameControllerDelegate;
    .param p2, "driveType"    # I

    .prologue
    .line 101
    if-nez p2, :cond_1

    .line 102
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerNibiru:Lorg/cocos2dx/lib/GameControllerDelegate;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    invoke-interface {p1, v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->setControllerEventListener(Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;)V

    .line 110
    sget-object v0, Lorg/cocos2dx/lib/GameControllerActivity;->sGameControllerActivity:Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-interface {p1, v0}, Lorg/cocos2dx/lib/GameControllerDelegate;->onCreate(Landroid/content/Context;)V

    .line 111
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 104
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerMoga:Lorg/cocos2dx/lib/GameControllerDelegate;

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 107
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerActivity;->mControllerOuya:Lorg/cocos2dx/lib/GameControllerDelegate;

    goto :goto_0
.end method
