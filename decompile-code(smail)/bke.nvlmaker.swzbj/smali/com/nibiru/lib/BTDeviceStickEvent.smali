.class public Lcom/nibiru/lib/BTDeviceStickEvent;
.super Ljava/lang/Object;


# instance fields
.field private b:I

.field private playerOrder:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    iput p4, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->playerOrder:I

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    iput p2, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    return-void
.end method


# virtual methods
.method public getLoc()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    return v0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->playerOrder:I

    return v0
.end method

.method public getRelatedX()I
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    add-int/lit8 v0, v0, -0x80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    rsub-int v0, v0, 0x80

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    goto :goto_0
.end method

.method public getRelatedY()I
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    add-int/lit8 v0, v0, -0x80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    rsub-int v0, v0, 0x80

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    return v0
.end method

.method public setLoc(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->playerOrder:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTDeviceStickEvent [loc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/BTDeviceStickEvent;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
