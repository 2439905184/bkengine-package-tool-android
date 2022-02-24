.class public interface abstract Lcom/nibiru/lib/controller/StickSimService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
    }
.end annotation


# static fields
.field public static final STICKSIM_DIR_4:I = 0x0

.field public static final STICKSIM_DIR_8:I = 0x1

.field public static final STICKSIM_LEFT:I = 0x0

.field public static final STICKSIM_MODE_CONTINUES_KEY:I = 0x0

.field public static final STICKSIM_MODE_PRESS_KEY:I = 0x1

.field public static final STICKSIM_RIGHT:I = 0x1


# virtual methods
.method public abstract getStickSimConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
.end method

.method public abstract setHideStickEvent(Z)V
.end method

.method public abstract setIntervalTime(I)V
.end method

.method public abstract setKeyNum(I)V
.end method

.method public abstract setKeyTrans([I)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setStickLoc(I)V
.end method

.method public abstract startStickSim()V
.end method

.method public abstract startStickSim(Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;)V
.end method

.method public abstract stopStickSim()V
.end method
