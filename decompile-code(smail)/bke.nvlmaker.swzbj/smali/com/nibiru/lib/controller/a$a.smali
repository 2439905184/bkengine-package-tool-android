.class final Lcom/nibiru/lib/controller/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic aJ:Lcom/nibiru/lib/controller/a;

.field private aK:Lcom/nibiru/lib/controller/CombKeyService$CombKey;

.field private action:I

.field private n:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nibiru/lib/controller/a;ILjava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/a$a;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nibiru/lib/controller/a$a;->action:I

    iput-object p3, p0, Lcom/nibiru/lib/controller/a$a;->token:Ljava/lang/String;

    iput p4, p0, Lcom/nibiru/lib/controller/a$a;->n:I

    iput-object p5, p0, Lcom/nibiru/lib/controller/a$a;->aK:Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nibiru/lib/controller/a$a;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->b(Lcom/nibiru/lib/controller/a;)Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/a$a;->action:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nibiru/lib/controller/a$a;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->b(Lcom/nibiru/lib/controller/a;)Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/a$a;->token:Ljava/lang/String;

    iget v2, p0, Lcom/nibiru/lib/controller/a$a;->n:I

    iget-object v3, p0, Lcom/nibiru/lib/controller/a$a;->aK:Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    invoke-interface {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;->onCombKeyEventStart(Ljava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/a$a;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->b(Lcom/nibiru/lib/controller/a;)Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nibiru/lib/controller/a$a;->token:Ljava/lang/String;

    iget v2, p0, Lcom/nibiru/lib/controller/a$a;->n:I

    iget-object v3, p0, Lcom/nibiru/lib/controller/a$a;->aK:Lcom/nibiru/lib/controller/CombKeyService$CombKey;

    invoke-interface {v0, v1, v2, v3}, Lcom/nibiru/lib/controller/CombKeyService$OnCombKeyListener;->onCombKeyEventOver(Ljava/lang/String;ILcom/nibiru/lib/controller/CombKeyService$CombKey;)V

    goto :goto_0
.end method
