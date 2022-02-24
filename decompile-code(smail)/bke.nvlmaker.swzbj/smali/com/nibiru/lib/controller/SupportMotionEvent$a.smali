.class final Lcom/nibiru/lib/controller/SupportMotionEvent$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/SupportMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field eM:Ljava/util/List;

.field eN:Ljava/util/List;

.field eO:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/SupportMotionEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eN:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nibiru/lib/controller/SupportMotionEvent$a;->eO:Ljava/util/List;

    return-void
.end method
