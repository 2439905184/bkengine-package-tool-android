.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;->setEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$1;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$1;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->resetCurrentApp()V

    return-void
.end method
