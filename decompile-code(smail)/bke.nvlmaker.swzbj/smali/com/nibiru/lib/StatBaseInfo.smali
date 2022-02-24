.class public Lcom/nibiru/lib/StatBaseInfo;
.super Ljava/lang/Object;


# instance fields
.field private ao:J

.field private order:I

.field private startTime:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/StatBaseInfo;->order:I

    return v0
.end method

.method public getReachTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/StatBaseInfo;->ao:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/StatBaseInfo;->startTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/StatBaseInfo;->type:I

    return v0
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/StatBaseInfo;->order:I

    return-void
.end method

.method public setReachTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/StatBaseInfo;->ao:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nibiru/lib/StatBaseInfo;->startTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/StatBaseInfo;->type:I

    return-void
.end method
