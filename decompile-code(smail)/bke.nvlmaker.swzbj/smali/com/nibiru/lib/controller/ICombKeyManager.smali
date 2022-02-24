.class public interface abstract Lcom/nibiru/lib/controller/ICombKeyManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelSingleKey(II)V
.end method

.method public abstract getCombKeyList(I)Ljava/util/List;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract sendCombKey(IILcom/nibiru/lib/controller/CombKeyService$CombKey;)V
.end method

.method public abstract sendDelayedSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
.end method

.method public abstract sendSingleKey(Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
.end method
