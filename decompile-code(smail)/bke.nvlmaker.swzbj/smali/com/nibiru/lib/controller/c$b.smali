.class final Lcom/nibiru/lib/controller/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final lock:Ljava/lang/Object;

.field p:Z


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/c$b;->lock:Ljava/lang/Object;

    return-void
.end method
