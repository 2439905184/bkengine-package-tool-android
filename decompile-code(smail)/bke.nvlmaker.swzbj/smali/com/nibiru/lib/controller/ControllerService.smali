.class public interface abstract Lcom/nibiru/lib/controller/ControllerService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;
    }
.end annotation


# static fields
.field public static final FLAG_HAS_CONNECTED:Ljava/lang/String; = "hasConnected"

.field public static final FLAG_IS_AUTO_CLOSE:Ljava/lang/String; = "isAutoClose"

.field public static final FLAG_IS_SHOW_GAMEPAD_TIP:Ljava/lang/String; = "isShowTip"

.field public static final POS_LEFT:I = 0x0

.field public static final POS_RIGHT:I = 0x1

.field public static final REQUEST_DEVICE_MANAGER:I = 0xffff


# virtual methods
.method public abstract checkNibiruInstall(Landroid/content/Context;Z)Z
.end method

.method public abstract debug(Z)V
.end method

.method public abstract enableGlobalControl(Z)Z
.end method

.method public abstract getCombKeyService()Lcom/nibiru/lib/controller/CombKeyService;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getContinusKeyService()Lcom/nibiru/lib/controller/ContinuesKeyService;
.end method

.method public abstract getCursorService()Lcom/nibiru/lib/controller/CursorService;
.end method

.method public abstract getDeviceByPlayerOrder(I)Lcom/nibiru/lib/controller/ControllerDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract getDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract getDpadService()Lcom/nibiru/lib/controller/DpadService;
.end method

.method public abstract getDriverVersion()I
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getKeyState(II)I
.end method

.method public abstract getKeyStateMap(I)[I
.end method

.method public abstract getMouseSpeed()I
.end method

.method public abstract getSensorStateService()Lcom/nibiru/lib/controller/SensorStateService;
.end method

.method public abstract getStickSimService()Lcom/nibiru/lib/controller/StickSimService;
.end method

.method public abstract getStickState(II)F
.end method

.method public abstract getStickState(I)Lcom/nibiru/lib/controller/StickEvent;
.end method

.method public abstract getVersion()I
.end method

.method public abstract handleExternalInput(Landroid/view/InputEvent;)Z
.end method

.method public abstract hasDeviceConnected()Z
.end method

.method public abstract hideInputView()V
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isHostControl()Z
.end method

.method public abstract isInputViewShow()Z
.end method

.method public abstract isServiceEnable()Z
.end method

.method public abstract isSupportEnable()Z
.end method

.method public abstract isSupportInput()Z
.end method

.method public abstract notifyCursorShow(ZI)V
.end method

.method public abstract register(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract setAccListener(Lcom/nibiru/lib/controller/OnAccListener;)V
.end method

.method public abstract setAutoGameGuide(Z)V
.end method

.method public abstract setAutoKeyUpKeys([I)V
.end method

.method public abstract setAutoKeyUpMode(Z)V
.end method

.method public abstract setAutoKeyUpParam(JZ)V
.end method

.method public abstract setControllerServiceListener(Lcom/nibiru/lib/controller/ControllerService$OnControllerSeviceListener;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setEnableLR2(Z)V
.end method

.method public abstract setEnableSystemKey(Z)V
.end method

.method public abstract setEnterKeyCode(I)V
.end method

.method public abstract setGyroListener(Lcom/nibiru/lib/controller/OnGyroListener;)V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method

.method public abstract setHostController(Z)V
.end method

.method public abstract setKeyListener(Lcom/nibiru/lib/controller/OnKeyListener;)V
.end method

.method public abstract setMotionSenseListener(Lcom/nibiru/lib/controller/OnMotionSenseListener;)V
.end method

.method public abstract setRevExternalMotion(Z)V
.end method

.method public abstract setSimpleStickListener(Lcom/nibiru/lib/controller/OnSimpleStickListener;)V
.end method

.method public abstract setStateListener(Lcom/nibiru/lib/controller/OnStateListener;)V
.end method

.method public abstract setStickListener(Lcom/nibiru/lib/controller/OnStickListener;)V
.end method

.method public abstract setSupportStickHatMode(Z)V
.end method

.method public abstract showDeviceManagerUI(Landroid/content/Context;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nibiru/lib/controller/ControllerServiceException;
        }
    .end annotation
.end method

.method public abstract showGameGuide(Z)V
.end method

.method public abstract startInputView(Ljava/lang/String;Ljava/lang/String;IILcom/nibiru/lib/controller/OnInputResultListener;)Z
.end method

.method public abstract startMotor(IIJ)Z
.end method

.method public abstract stopMotor(II)V
.end method

.method public abstract unregister()V
.end method
