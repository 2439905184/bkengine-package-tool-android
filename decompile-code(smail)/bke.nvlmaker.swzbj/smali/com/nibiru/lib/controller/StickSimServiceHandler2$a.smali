.class public final Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/StickSimServiceHandler2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field eH:I

.field eI:Ljava/util/List;

.field eJ:Ljava/util/List;

.field n:I


# direct methods
.method protected constructor <init>(Lcom/nibiru/lib/controller/StickSimServiceHandler2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eI:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/StickSimServiceHandler2$a;->eJ:Ljava/util/List;

    return-void
.end method
