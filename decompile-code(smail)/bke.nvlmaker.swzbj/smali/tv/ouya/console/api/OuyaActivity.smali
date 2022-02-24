.class public Ltv/ouya/console/api/OuyaActivity;
.super Landroid/app/Activity;
.source "OuyaActivity.java"


# static fields
.field private static final ACTION_OUYA_USER_INPUT:Ljava/lang/String; = "tv.ouya.metrics.action.USER_INPUT"

.field private static final EXTRA_OUYA_INPUT_ANALOG:Ljava/lang/String; = "analog"

.field public static final FLAGS_DEFAULT:I = 0x0

.field public static final FLAG_SKIP_HIDE_NAV_BAR:I = 0x2

.field public static final FLAG_SKIP_OUYACONTROLLER_DISPATCH:I = 0x4

.field public static final FLAG_SKIP_OUYAINPUTMAPPER_DISPATCHES:I = 0x8

.field public static final FLAG_SKIP_TAKE_KEYS:I = 0x1

.field private static final INPUT_BROADCAST_COOLDOWN_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFlags:I

.field private mLastAnalogTick:J

.field private mLastDigitalTick:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ltv/ouya/console/api/OuyaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/OuyaActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    return-void
.end method

.method private broadcastInputNotification(Z)V
    .locals 10
    .param p1, "analog"    # Z

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 188
    .local v0, "curTick":J
    if-eqz p1, :cond_0

    iget-wide v4, p0, Ltv/ouya/console/api/OuyaActivity;->mLastAnalogTick:J

    .line 189
    .local v4, "lastTick":J
    :goto_0
    sub-long v6, v0, v4

    const-wide/16 v8, 0x7530

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 202
    :goto_1
    return-void

    .line 188
    .end local v4    # "lastTick":J
    :cond_0
    iget-wide v4, p0, Ltv/ouya/console/api/OuyaActivity;->mLastDigitalTick:J

    goto :goto_0

    .line 193
    .restart local v4    # "lastTick":J
    :cond_1
    if-eqz p1, :cond_2

    .line 194
    iput-wide v0, p0, Ltv/ouya/console/api/OuyaActivity;->mLastAnalogTick:J

    .line 199
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tv.ouya.metrics.action.USER_INPUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "analog"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v2}, Ltv/ouya/console/api/OuyaActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 196
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iput-wide v0, p0, Ltv/ouya/console/api/OuyaActivity;->mLastDigitalTick:J

    goto :goto_2
.end method

.method public static hideNavigationBar(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x6

    .line 141
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 142
    return-void
.end method

.method public static setContentView(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "flags"    # I

    .prologue
    .line 125
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->takeKeyEvents(Z)V

    .line 128
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 129
    invoke-static {p0}, Ltv/ouya/console/api/OuyaActivity;->hideNavigationBar(Landroid/app/Activity;)V

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-static {p1}, Ltv/ouya/console/api/OuyaInputMapper;->shouldHandleInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->broadcastInputNotification(Z)V

    .line 180
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaInputMapper;->dispatchGenericMotionEvent(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 156
    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-static {p1}, Ltv/ouya/console/api/OuyaInputMapper;->shouldHandleInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->broadcastInputNotification(Z)V

    .line 159
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaInputMapper;->dispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-static {p0}, Ltv/ouya/console/api/OuyaInputMapper;->init(Landroid/app/Activity;)V

    .line 69
    iget v1, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 70
    .local v0, "enableControllerDispatch":Z
    :goto_0
    invoke-static {v0}, Ltv/ouya/console/api/OuyaInputMapper;->setEnableControllerDispatch(Z)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void

    .line 69
    .end local v0    # "enableControllerDispatch":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    invoke-static {p0}, Ltv/ouya/console/api/OuyaInputMapper;->shutdown(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    invoke-static {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->setContentView(Landroid/app/Activity;I)V

    .line 94
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 104
    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    invoke-static {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->setContentView(Landroid/app/Activity;I)V

    .line 105
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    invoke-static {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->setContentView(Landroid/app/Activity;I)V

    .line 117
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 58
    iput p1, p0, Ltv/ouya/console/api/OuyaActivity;->mFlags:I

    .line 59
    return-void
.end method
