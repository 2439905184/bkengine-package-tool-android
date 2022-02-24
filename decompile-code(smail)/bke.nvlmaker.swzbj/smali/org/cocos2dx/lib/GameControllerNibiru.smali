.class public Lorg/cocos2dx/lib/GameControllerNibiru;
.super Ljava/lang/Object;
.source "GameControllerNibiru.java"

# interfaces
.implements Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;
.implements Lcom/nibiru/lib/controller/OnAccListener;
.implements Lcom/nibiru/lib/controller/OnGyroListener;
.implements Lcom/nibiru/lib/controller/OnKeyListener;
.implements Lcom/nibiru/lib/controller/OnSimpleStickListener;
.implements Lcom/nibiru/lib/controller/OnStateListener;
.implements Lorg/cocos2dx/lib/GameControllerDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "NibiruTag"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

.field private mControllerService:Lcom/nibiru/lib/controller/ControllerService;

.field private mKeyMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x14

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .line 34
    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    .line 39
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x1b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x1b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    const/16 v2, 0x1b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const/16 v2, 0x1bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x1c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x1ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x1bb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x1c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x1c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x1c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x1c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 221
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->handleExternalInput(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 236
    const-string v0, "NibiruTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public onControllerAccEvent(ILcom/nibiru/lib/controller/AccEvent;)V
    .locals 0
    .param p1, "playerOrder"    # I
    .param p2, "event"    # Lcom/nibiru/lib/controller/AccEvent;

    .prologue
    .line 227
    return-void
.end method

.method public onControllerGyroEvent(ILcom/nibiru/lib/controller/GyroEvent;)V
    .locals 0
    .param p1, "playerOrder"    # I
    .param p2, "event"    # Lcom/nibiru/lib/controller/GyroEvent;

    .prologue
    .line 232
    return-void
.end method

.method public onControllerKeyDown(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 9
    .param p1, "playerOrder"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lcom/nibiru/lib/controller/ControllerKeyEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "NibiruTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t map the key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;

    move-result-object v7

    .line 137
    .local v7, "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onButtonEvent(Ljava/lang/String;IIZFZ)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v7    # "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    :catch_0
    move-exception v8

    .line 140
    .local v8, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v8}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onControllerKeyUp(IILcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 9
    .param p1, "playerOrder"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lcom/nibiru/lib/controller/ControllerKeyEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "NibiruTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t map the key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;

    move-result-object v7

    .line 156
    .local v7, "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mKeyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onButtonEvent(Ljava/lang/String;IIZFZ)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v7    # "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    :catch_0
    move-exception v8

    .line 159
    .local v8, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v8}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onControllerServiceReady(Z)V
    .locals 4
    .param p1, "isSucc"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 114
    iget-object v2, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v2}, Lcom/nibiru/lib/controller/ControllerService;->hasDeviceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "isShowTip"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v3, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v0}, Lcom/nibiru/lib/controller/ControllerService;->showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "bun":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v0    # "bun":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v1}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onControllerStateChanged(IILcom/nibiru/lib/controller/ControllerDevice;)V
    .locals 3
    .param p1, "playerOrder"    # I
    .param p2, "state"    # I
    .param p3, "device"    # Lcom/nibiru/lib/controller/ControllerDevice;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 207
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    invoke-virtual {p3}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onConnected(Ljava/lang/String;I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    invoke-virtual {p3}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onDisconnected(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/nibiru/lib/controller/Controller;->getControllerService()Lcom/nibiru/lib/controller/ControllerService;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    .line 66
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V

    .line 68
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V

    .line 69
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V

    .line 70
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p0}, Lcom/nibiru/lib/controller/ControllerService;->setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V

    .line 73
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setEnableLR2(Z)V

    .line 74
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, v2}, Lcom/nibiru/lib/controller/ControllerService;->setAutoKeyUpMode(Z)V

    .line 76
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/nibiru/lib/controller/ControllerService;->checkNibiruInstall(Landroid/content/Context;Z)Z

    .line 78
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/ControllerService;->unregister()V

    .line 108
    :cond_0
    return-void
.end method

.method public onLeftStickChanged(IFF)V
    .locals 8
    .param p1, "playerOrder"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 166
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;

    move-result-object v6

    .line 170
    .local v6, "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    invoke-virtual {v6}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    .line 173
    .local v2, "deviceId":I
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v3, 0x1b0

    const/4 v5, 0x1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 175
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v3, 0x1b1

    const/4 v5, 0x1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "deviceId":I
    .end local v6    # "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v7

    .line 178
    .local v7, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v1}, Lcom/nibiru/lib/controller/ControllerService;->isServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/nibiru/lib/controller/ControllerService;->setEnable(Z)V

    .line 102
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v2, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nibiru/lib/controller/ControllerService;->checkNibiruInstall(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    iget-object v2, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/nibiru/lib/controller/ControllerService;->register(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRightStickChanged(IFF)V
    .locals 8
    .param p1, "playerOrder"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerService:Lcom/nibiru/lib/controller/ControllerService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/ControllerService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;

    move-result-object v6

    .line 189
    .local v6, "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    invoke-virtual {v6}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/nibiru/lib/controller/ControllerDevice;->getDeviceId()I

    move-result v2

    .line 192
    .local v2, "deviceId":I
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v3, 0x1b2

    const/4 v5, 0x1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 194
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    const/16 v3, 0x1b3

    const/4 v5, 0x1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;->onAxisEvent(Ljava/lang/String;IIFZ)V
    :try_end_0
    .catch Lcom/nibiru/lib/controller/ControllerServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "deviceId":I
    .end local v6    # "controllerDevice":Lcom/nibiru/lib/controller/ControllerDevice;
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Lcom/nibiru/lib/controller/ControllerServiceException;
    invoke-virtual {v7}, Lcom/nibiru/lib/controller/ControllerServiceException;->printStackTrace()V

    goto :goto_0
.end method

.method public setControllerEventListener(Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerNibiru;->mControllerEventListener:Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;

    .line 60
    return-void
.end method
