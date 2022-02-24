.class public interface abstract Lcom/nibiru/lib/controller/CombKeyService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/controller/CombKeyService$CombKey;,
        Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;
    }
.end annotation


# virtual methods
.method public abstract clearCombKey()V
.end method

.method public abstract getCombKeyList()Ljava/util/List;
.end method

.method public abstract registerCombKey(Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V
.end method

.method public abstract registerCombKeys([Lcom/nibiru/lib/controller/CombKeyService$CombKey;)V
.end method

.method public abstract removeCombKey(Ljava/lang/String;)V
.end method

.method public abstract setCombKeyListener(Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;)V
.end method

.method public abstract setIntervalTime(J)V
.end method
