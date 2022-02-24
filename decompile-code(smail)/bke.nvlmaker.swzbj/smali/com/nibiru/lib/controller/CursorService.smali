.class public interface abstract Lcom/nibiru/lib/controller/CursorService;
.super Ljava/lang/Object;


# static fields
.field public static final ARROWS:I = 0x2

.field public static final CURSOR_CLOSE:I = 0x101

.field public static final IME_PICKER:I = 0x102

.field public static final LEFT_STICK:I = 0x0

.field public static final MODE_REV_CURSOR_FIRST:I = 0x1

.field public static final MODE_REV_CURSOR_ONLY:I = 0x0

.field public static final MODE_REV_EVENT_PASS:I = 0x2

.field public static final MOUSE_EVENT:I = 0x100

.field public static final RIGHT_STICK:I = 0x1


# virtual methods
.method public abstract createCursor(I)V
.end method

.method public abstract createCursor(Ljava/lang/String;)V
.end method

.method public abstract disableDpad()V
.end method

.method public abstract enableDpad()V
.end method

.method public abstract getCurrentX()I
.end method

.method public abstract getCurrentY()I
.end method

.method public abstract getEventMode()I
.end method

.method public abstract getMouseStick()I
.end method

.method public abstract hideCursor()V
.end method

.method public abstract isAutoCursorMode()Z
.end method

.method public abstract isCursorShow()Z
.end method

.method public abstract isDpadMode()Z
.end method

.method public abstract isSupportDpad()Z
.end method

.method public abstract resetOriginPosition()V
.end method

.method public abstract setAutoCursorDelayTime(J)V
.end method

.method public abstract setCursorImageSize(II)V
.end method

.method public abstract setCursorResource(I)V
.end method

.method public abstract setCursorResource(Ljava/lang/String;)V
.end method

.method public abstract setEnableDisplayAtPrePos(Z)V
.end method

.method public abstract setEventMode(I)V
.end method

.method public abstract setHideKey(I)V
.end method

.method public abstract setKeyMap([I)V
.end method

.method public abstract setMouseStick(I)V
.end method

.method public abstract setOriginPosition(II)V
.end method

.method public abstract setPosOffset(II)V
.end method

.method public abstract setSensitivity(II)V
.end method

.method public abstract startAutoCursorMode(I)V
.end method

.method public abstract startAutoCursorMode(Ljava/lang/String;)V
.end method

.method public abstract stopAutoCursorMode()V
.end method
