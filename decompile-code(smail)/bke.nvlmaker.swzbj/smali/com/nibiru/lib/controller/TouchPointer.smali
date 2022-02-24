.class public Lcom/nibiru/lib/controller/TouchPointer;
.super Ljava/lang/Object;


# instance fields
.field private eP:F

.field private eQ:F

.field private eR:F

.field private eS:F

.field private eT:F

.field private eU:I

.field private id:I

.field private intervalTime:I

.field private offset:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->offset:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eU:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->intervalTime:I

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->offset:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eU:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->intervalTime:I

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->id:I

    iput p2, p0, Lcom/nibiru/lib/controller/TouchPointer;->x:F

    iput p3, p0, Lcom/nibiru/lib/controller/TouchPointer;->y:F

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eU:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->id:I

    return v0
.end method

.method public getIndicateX()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eP:F

    return v0
.end method

.method public getIndicateY()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eQ:F

    return v0
.end method

.method public getIntervalTime()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->intervalTime:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->offset:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eT:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eR:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->eS:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->y:F

    return v0
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eU:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->id:I

    return-void
.end method

.method public setIndicateX(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eP:F

    return-void
.end method

.method public setIndicateY(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eQ:F

    return-void
.end method

.method public setIntervalTime(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->intervalTime:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->offset:I

    return-void
.end method

.method public setOffsetInterval(FF)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->offset:I

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->intervalTime:I

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eT:F

    return-void
.end method

.method public setStartX(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eR:F

    return-void
.end method

.method public setStartY(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->eS:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/nibiru/lib/controller/TouchPointer;->y:F

    return-void
.end method

.method public update(Lcom/nibiru/lib/controller/TouchPointer;)V
    .locals 1

    iget v0, p1, Lcom/nibiru/lib/controller/TouchPointer;->x:F

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->x:F

    iget v0, p1, Lcom/nibiru/lib/controller/TouchPointer;->y:F

    iput v0, p0, Lcom/nibiru/lib/controller/TouchPointer;->y:F

    return-void
.end method
