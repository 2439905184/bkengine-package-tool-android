.class final Lcom/nibiru/lib/controller/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private dJ:Landroid/view/InputEvent;

.field private synthetic dK:Lcom/nibiru/lib/controller/i;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/i;Landroid/view/InputEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-static {v0}, Lcom/nibiru/lib/controller/i;->a(Lcom/nibiru/lib/controller/i;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-static {v0}, Lcom/nibiru/lib/controller/i;->a(Lcom/nibiru/lib/controller/i;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-static {v0}, Lcom/nibiru/lib/controller/i;->a(Lcom/nibiru/lib/controller/i;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->a(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-static {v0}, Lcom/nibiru/lib/controller/i;->b(Lcom/nibiru/lib/controller/i;)Landroid/app/Instrumentation;

    move-result-object v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dK:Lcom/nibiru/lib/controller/i;

    invoke-static {v0}, Lcom/nibiru/lib/controller/i;->b(Lcom/nibiru/lib/controller/i;)Landroid/app/Instrumentation;

    move-result-object v1

    iget-object v0, p0, Lcom/nibiru/lib/controller/i$a;->dJ:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
