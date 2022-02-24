.class public Lcom/nibiru/lib/controller/MotionSenseEvent;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "eventTime"

.field public static final KEY_PLAYER:Ljava/lang/String; = "player"

.field public static final KEY_RAW:Ljava/lang/String; = "raw"


# instance fields
.field private bc:J

.field private data:[B

.field private n:I


# direct methods
.method public constructor <init>(IJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->n:I

    iput-wide p2, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->bc:J

    iput-object p4, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    return-void
.end method

.method public constructor <init>(Lcom/nibiru/lib/controller/MotionSenseEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/nibiru/lib/controller/MotionSenseEvent;->n:I

    iput v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->n:I

    iget-wide v0, p1, Lcom/nibiru/lib/controller/MotionSenseEvent;->bc:J

    iput-wide v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->bc:J

    iget-object v0, p1, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    iget-object v1, p1, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    return-void
.end method


# virtual methods
.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->bc:J

    return-wide v0
.end method

.method public getPlayerOrder()I
    .locals 1

    iget v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->n:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotionSenseEvent [player="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->bc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/MotionSenseEvent;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

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
