.class public final Lcom/nibiru/lib/controller/ControllerServiceImpl$j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field private cL:Ljava/lang/String;

.field private synthetic cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->type:I

    iput-object p3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->cL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->o(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnReportListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->cq:Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->o(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnReportListener;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->type:I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$j;->cL:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/nibiru/lib/controller/OnReportListener;->onReportReady(ILjava/io/File;)V

    :cond_0
    return-void
.end method
