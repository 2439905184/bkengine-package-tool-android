.class final Lcom/nibiru/lib/BTInputDeviceController$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/BTInputDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic P:Lcom/nibiru/lib/BTInputDeviceController;


# direct methods
.method private constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nibiru/lib/BTInputDeviceController;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nibiru/lib/BTInputDeviceController$b;-><init>(Lcom/nibiru/lib/BTInputDeviceController;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0}, Lcom/nibiru/lib/BTInputDeviceController;->f(Lcom/nibiru/lib/BTInputDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Z)V

    new-instance v8, Landroid/app/Instrumentation;

    invoke-direct {v8}, Landroid/app/Instrumentation;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v2}, Lcom/nibiru/lib/BTInputDeviceController;->g(Lcom/nibiru/lib/BTInputDeviceController;)F

    move-result v5

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v2}, Lcom/nibiru/lib/BTInputDeviceController;->h(Lcom/nibiru/lib/BTInputDeviceController;)F

    move-result v6

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v2}, Lcom/nibiru/lib/BTInputDeviceController;->g(Lcom/nibiru/lib/BTInputDeviceController;)F

    move-result v2

    add-float v5, v2, v11

    iget-object v2, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v2}, Lcom/nibiru/lib/BTInputDeviceController;->h(Lcom/nibiru/lib/BTInputDeviceController;)F

    move-result v2

    add-float v6, v2, v11

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual {v8, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-string v0, "Touch RUN HERE"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0, v10}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Z)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v0, v10}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Z)V

    iget-object v0, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {v1, v10}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;Z)V

    iget-object v1, p0, Lcom/nibiru/lib/BTInputDeviceController$b;->P:Lcom/nibiru/lib/BTInputDeviceController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/nibiru/lib/BTInputDeviceController;->a(Lcom/nibiru/lib/BTInputDeviceController;J)V

    throw v0
.end method
