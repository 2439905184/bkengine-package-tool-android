.class public Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/StickSimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickSimConfig"
.end annotation


# instance fields
.field public directionNum:I

.field public intervalTime:I

.field public mode:I

.field public stickLoc:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->stickLoc:I

    iput p2, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->stickLoc:I

    iput p2, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->mode:I

    iput p3, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->directionNum:I

    iput p4, p0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;->intervalTime:I

    return-void
.end method

.method public static getDefaultConfig()Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;

    invoke-direct {v0, v1, v1}, Lcom/nibiru/lib/controller/StickSimService$StickSimConfig;-><init>(II)V

    return-object v0
.end method
