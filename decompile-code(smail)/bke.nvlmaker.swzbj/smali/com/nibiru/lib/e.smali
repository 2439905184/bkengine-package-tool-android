.class public final Lcom/nibiru/lib/e;
.super Ljava/lang/Object;


# instance fields
.field private ap:D

.field private aq:J

.field private ar:I

.field private as:I

.field private at:J

.field private count:I

.field private playerOrder:I

.field private startTime:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x270f

    iput v0, p0, Lcom/nibiru/lib/e;->ar:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nibiru/lib/e;->as:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/nibiru/lib/StatBaseInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/e;->type:I

    iget v0, p0, Lcom/nibiru/lib/e;->count:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/e;->startTime:J

    :cond_0
    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getReachTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nibiru/lib/e;->at:J

    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/nibiru/lib/e;->playerOrder:I

    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getReachTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/nibiru/lib/StatBaseInfo;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-wide v2, p0, Lcom/nibiru/lib/e;->aq:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nibiru/lib/e;->aq:J

    iget-wide v2, p0, Lcom/nibiru/lib/e;->aq:J

    long-to-double v2, v2

    iget v1, p0, Lcom/nibiru/lib/e;->count:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/nibiru/lib/e;->ap:D

    iget v1, p0, Lcom/nibiru/lib/e;->ar:I

    if-ge v0, v1, :cond_3

    iput v0, p0, Lcom/nibiru/lib/e;->ar:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/nibiru/lib/e;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nibiru/lib/e;->count:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/nibiru/lib/e;->as:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/nibiru/lib/e;->as:I

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/e;->count:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatEventInfo [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/e;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/e;->ap:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alltime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/e;->aq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/e;->ar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/e;->as:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/e;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/e;->at:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/e;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/e;->playerOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
