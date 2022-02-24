.class public interface abstract Lcom/nibiru/lib/controller/DpadService;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_ONLY_REV_DPAD:I = 0x0

.field public static final FLAG_REV_OTHER_KEY:I = 0x1


# virtual methods
.method public abstract addKeyPair(II)V
.end method

.method public abstract isDpadMode()Z
.end method

.method public abstract removeKeyPair(I)V
.end method

.method public abstract setDpadMap([I)V
.end method

.method public abstract startDpadMode(I)V
.end method

.method public abstract stopDpadMode()V
.end method
