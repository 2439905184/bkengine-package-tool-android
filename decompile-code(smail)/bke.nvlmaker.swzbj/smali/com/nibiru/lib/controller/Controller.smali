.class public Lcom/nibiru/lib/controller/Controller;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getControllerService()Lcom/nibiru/lib/controller/ControllerService;
    .locals 1

    new-instance v0, Lcom/nibiru/lib/controller/ControllerServiceImpl;

    invoke-direct {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;-><init>()V

    return-object v0
.end method
