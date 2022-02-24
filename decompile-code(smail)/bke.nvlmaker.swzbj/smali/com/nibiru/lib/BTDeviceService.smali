.class public interface abstract Lcom/nibiru/lib/BTDeviceService;
.super Ljava/lang/Object;


# static fields
.field public static final COMBKEY_CHECK_COARSE:I = 0x2

.field public static final COMBKEY_CHECK_FINE:I = 0x0

.field public static final COMBKEY_CHECK_NORMAL:I = 0x1

.field public static final STICKSIM_DIR_4:I = 0x0

.field public static final STICKSIM_DIR_8:I = 0x1

.field public static final STICKSIM_LEFT:I = 0x0

.field public static final STICKSIM_NONE:I = -0x1

.field public static final STICKSIM_RIGHT:I = 0x1


# virtual methods
.method public abstract cancelStickSimMode()V
.end method

.method public abstract getCombKeyListener()Lcom/nibiru/lib/OnBTDeviceCombKeyListener;
.end method

.method public abstract getCurrentSpecKeyMap()[I
.end method

.method public abstract getKeyListener()Lcom/nibiru/lib/OnBTDeviceKeyListener;
.end method

.method public abstract getOriginalKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
.end method

.method public abstract getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;
.end method

.method public abstract getStateListener()Lcom/nibiru/lib/OnBTDeviceStateListener;
.end method

.method public abstract getStickListener()Lcom/nibiru/lib/OnBTDeviceStickListener;
.end method

.method public abstract getStickSimMode()I
.end method

.method public abstract getTranslateKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isHostControll()Z
.end method

.method public abstract isServiceConnected()Z
.end method

.method public abstract isStickSimModeContinuesKey()Z
.end method

.method public abstract openBTDeviceSettingUI(Landroid/content/Context;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract registerBTDeviceService(Landroid/content/Context;Lcom/nibiru/lib/OnBTServiceConnectionListener;)Z
.end method

.method public abstract removeCombKeyListener()V
.end method

.method public abstract removeConnectListener()V
.end method

.method public abstract removeKeyListener()V
.end method

.method public abstract removeReqAppCloseListener()V
.end method

.method public abstract removeStateListener()V
.end method

.method public abstract removeStickListener()V
.end method

.method public abstract requestBTDeviceByPlayerOrder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestBTDeviceList()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCombKeyIntervalTime(I)V
.end method

.method public abstract setCombKeyListener(Lcom/nibiru/lib/OnBTDeviceCombKeyListener;)V
.end method

.method public abstract setConnectListener(Lcom/nibiru/lib/OnBTServiceConnectionListener;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setExcludeTouchKey([I)V
.end method

.method public abstract setHostControll(Z)V
.end method

.method public abstract setKeyListener(Lcom/nibiru/lib/OnBTDeviceKeyListener;)V
.end method

.method public abstract setReqAppCloseListener(Lcom/nibiru/lib/OnReqAppCloseListener;)V
.end method

.method public abstract setSpecKeyMap([I)V
.end method

.method public abstract setStateListener(Lcom/nibiru/lib/OnBTDeviceStateListener;)V
.end method

.method public abstract setStickListener(Lcom/nibiru/lib/OnBTDeviceStickListener;)V
.end method

.method public abstract setStickSimMode(IIZI)V
.end method

.method public abstract setStickSimMode(IZ)V
.end method

.method public abstract setTouchFocus(Z)V
.end method

.method public abstract setTouchFocusLocation(FF)V
.end method

.method public abstract unregisterBTDeviceService()Z
.end method
