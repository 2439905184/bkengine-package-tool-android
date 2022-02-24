.class public Lcom/nibiru/lib/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nibiru/lib/BTInputDeviceController;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nibiru/lib/a;->a:Lcom/nibiru/lib/BTInputDeviceController;

    return-void
.end method


# virtual methods
.method public final a([Landroid/view/KeyEvent;)V
    .locals 6

    const/16 v5, 0x67

    const/16 v4, 0x66

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_2

    aget-object v0, p1, v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v5, :cond_3

    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v5, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/nibiru/lib/a;->a:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CLOSE IDENTIFY"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nibiru/lib/a;->a:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-virtual {v0}, Lcom/nibiru/lib/BTInputDeviceController;->getReqAppCloseListener()Lcom/nibiru/lib/OnReqAppCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/OnReqAppCloseListener;->onReqAppClose()V

    goto :goto_0
.end method
