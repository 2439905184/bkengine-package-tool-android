.class final Lcom/nibiru/lib/controller/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private bh:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

.field private synthetic bi:Lcom/nibiru/lib/controller/d;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/d;Lcom/nibiru/lib/controller/ControllerKeyEvent;)V
    .locals 2

    iput-object p1, p0, Lcom/nibiru/lib/controller/d$b;->bi:Lcom/nibiru/lib/controller/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iput-object v0, p0, Lcom/nibiru/lib/controller/d$b;->bh:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$b;->bh:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$b;->bh:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/d$b;->bi:Lcom/nibiru/lib/controller/d;

    iget-object v1, p0, Lcom/nibiru/lib/controller/d$b;->bh:[Lcom/nibiru/lib/controller/ControllerKeyEvent;

    invoke-virtual {v0, v1}, Lcom/nibiru/lib/controller/d;->b([Lcom/nibiru/lib/controller/ControllerKeyEvent;)V

    :cond_0
    return-void
.end method
