.class public Lcom/nibiru/lib/CombKeyEvent;
.super Ljava/lang/Object;


# instance fields
.field private action:I

.field private ad:[Landroid/view/KeyEvent;

.field private playerOrder:I

.field private time:J


# direct methods
.method public constructor <init>(IJI[Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/CombKeyEvent;->action:I

    iput-wide p2, p0, Lcom/nibiru/lib/CombKeyEvent;->time:J

    iput p4, p0, Lcom/nibiru/lib/CombKeyEvent;->playerOrder:I

    iput-object p5, p0, Lcom/nibiru/lib/CombKeyEvent;->ad:[Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/CombKeyEvent;->action:I

    return v0
.end method

.method public getEvents()[Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/CombKeyEvent;->ad:[Landroid/view/KeyEvent;

    return-object v0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/CombKeyEvent;->playerOrder:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/CombKeyEvent;->time:J

    return-wide v0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/CombKeyEvent;->action:I

    return-void
.end method

.method public setEvents([Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/CombKeyEvent;->ad:[Landroid/view/KeyEvent;

    return-void
.end method

.method public setPlayerOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/CombKeyEvent;->playerOrder:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/CombKeyEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CombKeyEvent [action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/CombKeyEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/CombKeyEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/CombKeyEvent;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/CombKeyEvent;->ad:[Landroid/view/KeyEvent;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
