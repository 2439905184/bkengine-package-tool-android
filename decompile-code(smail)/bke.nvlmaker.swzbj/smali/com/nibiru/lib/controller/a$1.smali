.class final Lcom/nibiru/lib/controller/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nibiru/lib/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aJ:Lcom/nibiru/lib/controller/a;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/a$1;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nibiru/lib/controller/a$1;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->a(Lcom/nibiru/lib/controller/a;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a$1;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->a(Lcom/nibiru/lib/controller/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/a$1;->aJ:Lcom/nibiru/lib/controller/a;

    invoke-static {v0}, Lcom/nibiru/lib/controller/a;->a(Lcom/nibiru/lib/controller/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/CombKeyPlayerHandler;->checkKeyState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
