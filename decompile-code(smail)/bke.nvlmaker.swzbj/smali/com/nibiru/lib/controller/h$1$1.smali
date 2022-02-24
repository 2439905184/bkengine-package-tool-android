.class final Lcom/nibiru/lib/controller/h$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dD:Lcom/nibiru/lib/controller/h$1;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/h$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/h$1$1;->dD:Lcom/nibiru/lib/controller/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nibiru/lib/controller/h$1$1;->dD:Lcom/nibiru/lib/controller/h$1;

    invoke-static {v0}, Lcom/nibiru/lib/controller/h$1;->a(Lcom/nibiru/lib/controller/h$1;)Lcom/nibiru/lib/controller/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nibiru/lib/controller/h;->D()V

    const/4 v0, 0x0

    return v0
.end method
