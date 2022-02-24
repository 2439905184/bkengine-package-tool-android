.class public final Lcom/nibiru/lib/controller/StickSimServiceHandler$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/StickSimServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field eA:I

.field eB:I

.field eC:I

.field eD:I

.field eE:I

.field eF:[I

.field final lock:Ljava/lang/Object;

.field n:I

.field p:Z


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/StickSimServiceHandler;Lcom/nibiru/lib/controller/StickEvent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nibiru/lib/controller/StickEvent;->getPlayerOrder()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eA:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eB:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eC:I

    iput v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eD:I

    iput-boolean v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    iget-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eF:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StickSimUnit [lastlx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastrx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastKeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->eE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler$c;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
