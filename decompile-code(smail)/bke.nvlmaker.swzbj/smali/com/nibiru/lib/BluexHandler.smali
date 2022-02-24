.class public Lcom/nibiru/lib/BluexHandler;
.super Landroid/os/Handler;


# static fields
.field public static final SESSION_KEY:Ljava/lang/String; = "session"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private S:Lcom/nibiru/lib/b;

.field private T:Lcom/nibiru/lib/b;

.field private U:Lcom/nibiru/lib/BTInputDeviceController;

.field private V:Lcom/nibiru/lib/a;

.field private W:Lcom/nibiru/lib/BTDeviceStickSim;

.field private X:Lcom/nibiru/lib/StatisticManager;

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nibiru/lib/BluexHandler;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->Y:I

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->Z:I

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->aa:I

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->ab:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/BluexHandler;->ac:I

    iput-object p1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    new-instance v0, Lcom/nibiru/lib/b;

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/b;-><init>(Lcom/nibiru/lib/BluexHandler;Z)V

    iput-object v0, p0, Lcom/nibiru/lib/BluexHandler;->S:Lcom/nibiru/lib/b;

    new-instance v0, Lcom/nibiru/lib/b;

    invoke-direct {v0, p0, v1}, Lcom/nibiru/lib/b;-><init>(Lcom/nibiru/lib/BluexHandler;Z)V

    iput-object v0, p0, Lcom/nibiru/lib/BluexHandler;->T:Lcom/nibiru/lib/b;

    new-instance v0, Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-direct {v0, p0}, Lcom/nibiru/lib/BTDeviceStickSim;-><init>(Lcom/nibiru/lib/BluexHandler;)V

    iput-object v0, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    new-instance v0, Lcom/nibiru/lib/a;

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-direct {v0, v1}, Lcom/nibiru/lib/a;-><init>(Lcom/nibiru/lib/BTInputDeviceController;)V

    iput-object v0, p0, Lcom/nibiru/lib/BluexHandler;->V:Lcom/nibiru/lib/a;

    invoke-static {}, Lcom/nibiru/lib/StatisticManager;->getInstance()Lcom/nibiru/lib/StatisticManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/BluexHandler;->X:Lcom/nibiru/lib/StatisticManager;

    return-void
.end method

.method private declared-synchronized a(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    sget-object v2, Lcom/nibiru/lib/BluexHandler;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, p0, Lcom/nibiru/lib/BluexHandler;->ac:I

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget v4, p0, Lcom/nibiru/lib/BluexHandler;->ac:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->ac:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DIRECT SET"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/nibiru/lib/BluexHandler;->ac:I

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public generateMessage(ILjava/lang/Object;II)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method public getCombManager()Lcom/nibiru/lib/b;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->S:Lcom/nibiru/lib/b;

    return-object v0
.end method

.method protected getStickSim()Lcom/nibiru/lib/BTDeviceStickSim;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    return-object v0
.end method

.method public handleInputEvent(Landroid/view/InputEvent;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getCurrentSpecKeyMap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    aget v4, v0, v4

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    aget v0, v0, v3

    invoke-static {p1, v0}, Lcom/nibiru/lib/BTUtil;->translateKey(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_2

    const-string v0, "parsing keyevent error!"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/nibiru/lib/BTUtil;->getAndroidVersion()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_3

    const v0, 0x1000010

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->setSource(I)V

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isHostControll()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isOnlyDirectMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/nibiru/lib/BluexHandler;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getCombKeyListener()Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->V:Lcom/nibiru/lib/a;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x66

    if-eq v0, v3, :cond_6

    const/16 v3, 0x67

    if-ne v0, v3, :cond_7

    :cond_6
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->T:Lcom/nibiru/lib/b;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/b;->b(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/nibiru/lib/BluexHandler;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->S:Lcom/nibiru/lib/b;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/b;->b(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nibiru/lib/BluexHandler;->X:Lcom/nibiru/lib/StatisticManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/nibiru/lib/StatisticManager;->doStatistic(JLandroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v3}, Lcom/nibiru/lib/BTInputDeviceController;->isHostControll()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_b
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v3}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v3}, Lcom/nibiru/lib/BTInputDeviceController;->getStickListener()Lcom/nibiru/lib/OnBTDeviceStickListener;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/nibiru/lib/BluexHandler;->Y:I

    if-ne v3, v7, :cond_c

    iget v7, p0, Lcom/nibiru/lib/BluexHandler;->Z:I

    if-eq v4, v7, :cond_10

    :cond_c
    new-instance v0, Lcom/nibiru/lib/BTDeviceStickEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/nibiru/lib/BTDeviceStickEvent;-><init>(IIII)V

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getStickListener()Lcom/nibiru/lib/OnBTDeviceStickListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    add-int/lit8 v7, v3, -0x80

    add-int/lit8 v8, v4, -0x80

    invoke-interface {v1, v2, v7, v8}, Lcom/nibiru/lib/OnBTDeviceStickListener;->onBTInputDeviceLStickChange(III)V

    :cond_d
    :goto_2
    iput v3, p0, Lcom/nibiru/lib/BluexHandler;->Y:I

    iput v4, p0, Lcom/nibiru/lib/BluexHandler;->Z:I

    iput v5, p0, Lcom/nibiru/lib/BluexHandler;->aa:I

    iput v6, p0, Lcom/nibiru/lib/BluexHandler;->ab:I

    :cond_e
    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTDeviceStickSim;->isStart()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-virtual {v1, v0}, Lcom/nibiru/lib/BTDeviceStickSim;->handleStickSimData(Lcom/nibiru/lib/BTDeviceStickEvent;)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :cond_10
    iget v1, p0, Lcom/nibiru/lib/BluexHandler;->aa:I

    if-ne v5, v1, :cond_11

    iget v1, p0, Lcom/nibiru/lib/BluexHandler;->ab:I

    if-eq v6, v1, :cond_d

    :cond_11
    new-instance v0, Lcom/nibiru/lib/BTDeviceStickEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-direct {v0, v5, v6, v2, v1}, Lcom/nibiru/lib/BTDeviceStickEvent;-><init>(IIII)V

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getStickListener()Lcom/nibiru/lib/OnBTDeviceStickListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    rsub-int v7, v5, 0x80

    rsub-int v8, v6, 0x80

    invoke-interface {v1, v2, v7, v8}, Lcom/nibiru/lib/OnBTDeviceStickListener;->onBTInputDeviceRStickChange(III)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputEvent;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/nibiru/lib/BluexHandler;->handleInputEvent(Landroid/view/InputEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nibiru/lib/BTDevice;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v3}, Lcom/nibiru/lib/BTInputDeviceController;->getStateListener()Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v2, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onBTDeviceConnected(ILcom/nibiru/lib/BTDevice;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v2, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onBTDeviceConnecting(ILcom/nibiru/lib/BTDevice;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->S:Lcom/nibiru/lib/b;

    invoke-virtual {v1}, Lcom/nibiru/lib/b;->reset()V

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->W:Lcom/nibiru/lib/BTDeviceStickSim;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTDevice;->getPlayerOrder()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/nibiru/lib/BTDeviceStickSim;->stopPlayer(I)V

    :cond_3
    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v2, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onBTDeviceDisconnected(ILcom/nibiru/lib/BTDevice;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getStateListener()Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v2}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getStateListener()Lcom/nibiru/lib/OnBTDeviceStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v2}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lcom/nibiru/lib/OnBTDeviceStateListener;->onBTStateChanged(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getReportListener()Lcom/nibiru/lib/OnInfoReportReadyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v2}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/nibiru/lib/OnInfoReportReadyListener;->OnErrorReportReady(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/nibiru/lib/OnInfoReportReadyListener;->OnErrorReportReady(Ljava/io/File;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_5

    const-string v0, "invalid parcelable object : keyevent"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BluexHandler;->handleInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BluexHandler;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nibiru/lib/CombKeyEvent;

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BluexHandler;->sendCombKeyEvent(Lcom/nibiru/lib/CombKeyEvent;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    if-nez v0, :cond_8

    const-string v0, "invalid parcelable object : stick"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BluexHandler;->handleInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->connectServiceAgain()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/nibiru/lib/BluexHandler;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xff -> :sswitch_9
        0x400 -> :sswitch_a
        0x405 -> :sswitch_1
        0x406 -> :sswitch_3
        0x408 -> :sswitch_5
        0x409 -> :sswitch_8
        0x40a -> :sswitch_2
        0x800 -> :sswitch_6
        0x801 -> :sswitch_7
        0x804 -> :sswitch_5
        0x806 -> :sswitch_4
        0x809 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public resetCombKeyManager()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->S:Lcom/nibiru/lib/b;

    invoke-virtual {v0}, Lcom/nibiru/lib/b;->reset()V

    return-void
.end method

.method protected declared-synchronized sendCombKeyEvent(Lcom/nibiru/lib/CombKeyEvent;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->X:Lcom/nibiru/lib/StatisticManager;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/StatisticManager;->doStatistic(Lcom/nibiru/lib/CombKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getCombKeyListener()Lcom/nibiru/lib/OnBTDeviceCombKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v1}, Lcom/nibiru/lib/BTInputDeviceController;->getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getPlayerOrder()I

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/nibiru/lib/OnBTDeviceCombKeyListener;->onBTInputDeviceCombKeyDown(ILcom/nibiru/lib/CombKeyEvent;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->V:Lcom/nibiru/lib/a;

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getEvents()[Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/a;->a([Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/CombKeyEvent;->getPlayerOrder()I

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/nibiru/lib/OnBTDeviceCombKeyListener;->onBTInputDeviceCombKeyUp(ILcom/nibiru/lib/CombKeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isSupportTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->sendTouchEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/nibiru/lib/BluexHandler;->resetCombKeyManager()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->X:Lcom/nibiru/lib/StatisticManager;

    invoke-virtual {v0, p1}, Lcom/nibiru/lib/StatisticManager;->doStatistic(Landroid/view/KeyEvent;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->X:Lcom/nibiru/lib/StatisticManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/nibiru/lib/StatisticManager;->doStatistic(JLandroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getKeyListener()Lcom/nibiru/lib/OnBTDeviceKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nibiru/lib/OnBTDeviceKeyListener;->onBTInputDeviceKeyDown(IILandroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nibiru/lib/OnBTDeviceKeyListener;->onBTInputDeviceKeyUp(IILandroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->isSupportTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/BTInputDeviceController;->canSendTouchEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/BluexHandler;->U:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->sendTouchEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCombKeyIntervalTime(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/nibiru/lib/b;->a(J)V

    return-void
.end method
