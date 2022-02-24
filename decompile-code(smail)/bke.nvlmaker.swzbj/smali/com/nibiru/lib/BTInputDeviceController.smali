.class public Lcom/nibiru/lib/BTInputDeviceController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nibiru/lib/BTDeviceCoreService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nibiru/lib/BTInputDeviceController$a;,
        Lcom/nibiru/lib/BTInputDeviceController$b;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "BTInputDeviceController"


# instance fields
.field private A:Lcom/nibiru/lib/OnBTDeviceStickListener;

.field private B:Lcom/nibiru/lib/OnInfoReportReadyListener;

.field private C:Lcom/nibiru/lib/OnReqAppCloseListener;

.field private D:[I

.field private E:Z

.field private F:Z

.field private G:F

.field private H:F

.field private I:J

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;

.field private O:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private q:Lcom/nibiru/lib/controller/IBluexService;

.field private r:Lcom/nibiru/lib/controller/IBluexListener;

.field private final s:Lcom/nibiru/lib/BluexHandler;

.field private t:Lcom/nibiru/lib/OnBTDeviceStateListener;

.field private u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

.field private v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

.field private w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

.field private z:Lcom/nibiru/lib/OnBTServiceConnectionListener;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v1, -0x3d000000    # -128.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nibiru/lib/BTInputDeviceController$a;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/BTInputDeviceController$a;-><init>(Lcom/nibiru/lib/BTInputDeviceController;)V

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->r:Lcom/nibiru/lib/controller/IBluexListener;

    new-instance v0, Lcom/nibiru/lib/BluexHandler;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/BluexHandler;-><init>(Lcom/nibiru/lib/BTInputDeviceController;)V

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    iput-boolean v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->E:Z

    iput-boolean v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->F:Z

    iput v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->G:F

    iput v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->H:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->I:J

    iput-boolean v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->J:Z

    iput-boolean v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->K:Z

    iput-boolean v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->L:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->M:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->N:Ljava/util/List;

    new-instance v0, Lcom/nibiru/lib/BTInputDeviceController$1;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/BTInputDeviceController$1;-><init>(Lcom/nibiru/lib/BTInputDeviceController;)V

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->O:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/BTInputDeviceController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nibiru/lib/BTInputDeviceController;J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->I:J

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/BTInputDeviceController;Lcom/nibiru/lib/controller/IBluexService;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    return-void
.end method

.method static synthetic a(Lcom/nibiru/lib/BTInputDeviceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->E:Z

    return-void
.end method

.method static synthetic b(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/controller/IBluexService;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    return-object v0
.end method

.method static synthetic c(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/controller/IBluexListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->r:Lcom/nibiru/lib/controller/IBluexListener;

    return-object v0
.end method

.method static synthetic d(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTServiceConnectionListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    return-object v0
.end method

.method static synthetic e(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/BluexHandler;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    return-object v0
.end method

.method static synthetic f(Lcom/nibiru/lib/BTInputDeviceController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->E:Z

    return v0
.end method

.method static synthetic g(Lcom/nibiru/lib/BTInputDeviceController;)F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->G:F

    return v0
.end method

.method static synthetic h(Lcom/nibiru/lib/BTInputDeviceController;)F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->H:F

    return v0
.end method

.method static synthetic i(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceStateListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    return-object v0
.end method

.method static synthetic j(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnInfoReportReadyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    return-object v0
.end method

.method static synthetic k(Lcom/nibiru/lib/BTInputDeviceController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->K:Z

    return v0
.end method

.method static synthetic l(Lcom/nibiru/lib/BTInputDeviceController;)Lcom/nibiru/lib/OnBTDeviceKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    return-object v0
.end method

.method static synthetic m(Lcom/nibiru/lib/BTInputDeviceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public allocateDeviceId(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public canSendTouchEvent(I)Z
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->N:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelStickSimMode()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->stop()V

    return-void
.end method

.method public configureBluexService(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->configure(I)V

    goto :goto_0
.end method

.method public connectServiceAgain()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    invoke-virtual {p0, v0, v1}, Lcom/nibiru/lib/BTInputDeviceController;->registerBTDeviceService(Landroid/content/Context;Lcom/nibiru/lib/OnBTServiceConnectionListener;)Z

    :cond_0
    return-void
.end method

.method public getCombKeyListener()Lcom/nibiru/lib/OnBTDeviceCombKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    return-object v0
.end method

.method public getConfigureListener()Lcom/nibiru/lib/OnBTDeviceConfigureListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    return-object v0
.end method

.method public getCurrentSpecKeyMap()[I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    return-object v0
.end method

.method public getKeyListener()Lcom/nibiru/lib/OnBTDeviceKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    return-object v0
.end method

.method public getOriginalKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move v0, v11

    :goto_1
    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    move v7, v11

    :goto_2
    if-lez v7, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v12, 0x2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    move v7, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getReportListener()Lcom/nibiru/lib/OnInfoReportReadyListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    return-object v0
.end method

.method public getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    return-object v0
.end method

.method public getStateListener()Lcom/nibiru/lib/OnBTDeviceStateListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    return-object v0
.end method

.method public getStickListener()Lcom/nibiru/lib/OnBTDeviceStickListener;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    return-object v0
.end method

.method public getStickSimMode()I
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->getMode()I

    move-result v0

    return v0
.end method

.method public getTranslateKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    aget v7, v0, v1

    if-lez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v7, v0, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object p1, v1

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->K:Z

    return v0
.end method

.method public isHostControll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->L:Z

    return v0
.end method

.method public isOnlyDirectMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->F:Z

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStickSimModeContinuesKey()Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->isContinueState()Z

    move-result v0

    return v0
.end method

.method public isSupportTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->J:Z

    return v0
.end method

.method public openBTDeviceSettingUI(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nibiru.view.devicelist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/nibiru/lib/d;

    invoke-direct {v0}, Lcom/nibiru/lib/d;-><init>()V

    throw v0
.end method

.method public registerBTDeviceService(Landroid/content/Context;Lcom/nibiru/lib/OnBTServiceConnectionListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/nibiru/lib/BTInputDeviceController;->setConnectListener(Lcom/nibiru/lib/OnBTServiceConnectionListener;)V

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nibiru/lib/BTUtil;->getApplicationSessionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->M:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nibiru.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->O:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeCombKeyListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    return-void
.end method

.method public removeConfigureListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    return-void
.end method

.method public removeConnectListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    return-void
.end method

.method public removeKeyListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    return-void
.end method

.method public removeReportListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    return-void
.end method

.method public removeReqAppCloseListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    return-void
.end method

.method public removeStateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    return-void
.end method

.method public removeStickListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    return-void
.end method

.method public requestBTDeviceByPlayerOrder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->getDeviceByPlayerOrder(I)Lcom/nibiru/lib/BTDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    invoke-interface {v1, p1, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onReceiveBTDevice(ILcom/nibiru/lib/BTDevice;)V

    goto :goto_0
.end method

.method public requestBTDeviceList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0}, Lcom/nibiru/lib/controller/IBluexService;->getDeviceList()[Lcom/nibiru/lib/BTDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    invoke-interface {v1, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onReceiveBTDeviceList([Lcom/nibiru/lib/BTDevice;)V

    :cond_1
    return-void
.end method

.method public requestConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->connectController(Lcom/nibiru/lib/BTDevice;)Z

    goto :goto_0
.end method

.method public requestDisConnectDevice(Lcom/nibiru/lib/BTDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "REQ DISCONN IN CLIENT"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/BTDevice;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->disconnectController(Lcom/nibiru/lib/BTDevice;)Z

    goto :goto_0
.end method

.method public requestDriverList()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public requestInfoReport(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1}, Lcom/nibiru/lib/controller/IBluexService;->requestErrorReport(I)V

    :cond_1
    return-void
.end method

.method public requestSetPlayerOrder(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    invoke-interface {v0, p1, p2}, Lcom/nibiru/lib/controller/IBluexService;->setPlayerOrder(II)V

    return-void
.end method

.method public sendTouchEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->E:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->I:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nibiru/lib/BTInputDeviceController$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nibiru/lib/BTInputDeviceController$b;-><init>(Lcom/nibiru/lib/BTInputDeviceController;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setCombKeyIntervalTime(I)V
    .locals 3

    const-wide/16 v0, 0x32

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v2, v0, v1}, Lcom/nibiru/lib/BluexHandler;->setCombKeyIntervalTime(J)V

    return-void

    :pswitch_1
    const-wide/16 v0, 0x64

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x19

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCombKeyListener(Lcom/nibiru/lib/OnBTDeviceCombKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->resetCombKeyManager()V

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    return-void
.end method

.method public setConfigureListener(Lcom/nibiru/lib/OnBTDeviceConfigureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    return-void
.end method

.method public setConnectListener(Lcom/nibiru/lib/OnBTServiceConnectionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    invoke-interface {v0}, Lcom/nibiru/lib/OnBTServiceConnectionListener;->onBTDeviceServiceConnected()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->K:Z

    return-void
.end method

.method public setExcludeTouchKey([I)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    iget-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->N:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHostControll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->L:Z

    return-void
.end method

.method public setKeyListener(Lcom/nibiru/lib/OnBTDeviceKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    return-void
.end method

.method public setReportListener(Lcom/nibiru/lib/OnInfoReportReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    return-void
.end method

.method public setReqAppCloseListener(Lcom/nibiru/lib/OnReqAppCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    return-void
.end method

.method public setSpecKeyMap([I)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->D:[I

    return-void
.end method

.method public setStateListener(Lcom/nibiru/lib/OnBTDeviceStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    return-void
.end method

.method public setStickListener(Lcom/nibiru/lib/OnBTDeviceStickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    return-void
.end method

.method public setStickSimMode(IIZI)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->start()V

    :goto_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nibiru/lib/BTDeviceStickSim;->setDirectionState(I)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/BTDeviceStickSim;->setMode(I)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/nibiru/lib/BTDeviceStickSim;->setIntervalTime(I)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nibiru/lib/BTDeviceStickSim;->setContinuesState(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->stop()V

    goto :goto_0
.end method

.method public setStickSimMode(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/nibiru/lib/BTInputDeviceController;->setStickSimMode(IIZI)V

    return-void
.end method

.method public setTouchFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->J:Z

    return-void
.end method

.method public setTouchFocusLocation(FF)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTInputDeviceController;->G:F

    iput p2, p0, Lcom/nibiru/lib/BTInputDeviceController;->H:F

    return-void
.end method

.method public unregisterBTDeviceService()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->r:Lcom/nibiru/lib/controller/IBluexListener;

    invoke-interface {v1, v2}, Lcom/nibiru/lib/controller/IBluexService;->unregisterListener(Lcom/nibiru/lib/controller/IBluexListener;)V

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v0}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDeviceStickSim;->stop()V

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v1}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDeviceStickSim;->stop()V

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->w:Lcom/nibiru/lib/OnBTDeviceConfigureListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->t:Lcom/nibiru/lib/OnBTDeviceStateListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->u:Lcom/nibiru/lib/OnBTDeviceKeyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->A:Lcom/nibiru/lib/OnBTDeviceStickListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->z:Lcom/nibiru/lib/OnBTServiceConnectionListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->B:Lcom/nibiru/lib/OnInfoReportReadyListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->C:Lcom/nibiru/lib/OnReqAppCloseListener;

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->v:Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController;->s:Lcom/nibiru/lib/BluexHandler;

    invoke-virtual {v1}, Lcom/nibiru/lib/BluexHandler;->getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDeviceStickSim;->stop()V

    iput-object v3, p0, Lcom/nibiru/lib/BTInputDeviceController;->q:Lcom/nibiru/lib/controller/IBluexService;

    throw v0
.end method
