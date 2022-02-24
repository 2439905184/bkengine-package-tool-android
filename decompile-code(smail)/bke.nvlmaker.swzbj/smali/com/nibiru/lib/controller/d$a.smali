.class final Lcom/nibiru/lib/controller/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field bf:[I

.field bg:Lcom/nibiru/lib/controller/ControllerDevice;

.field lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/d;Lcom/nibiru/lib/controller/ControllerDevice;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/d$a;->bf:[I

    iput-object v1, p0, Lcom/nibiru/lib/controller/d$a;->lastStickEvent:Lcom/nibiru/lib/controller/StickEvent;

    iput-object v1, p0, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$a;->bf:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object p2, p0, Lcom/nibiru/lib/controller/d$a;->bg:Lcom/nibiru/lib/controller/ControllerDevice;

    return-void
.end method
