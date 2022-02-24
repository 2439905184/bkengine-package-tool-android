.class final Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->onVirtualServiceState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cs:I

.field private synthetic cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;


# direct methods
.method constructor <init>(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;I)V
    .locals 0

    iput-object p1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    iput p2, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cs:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cs:I

    const/16 v1, 0x10f

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    iget v1, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cs:I

    add-int/lit16 v1, v1, -0xff

    invoke-interface {v0, v1}, Lcom/nibiru/lib/controller/OnVirutalServiceListener;->onRevVirtualPlayerOrder(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cs:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/OnVirutalServiceListener;->onVirutalServiceSuccess()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/OnVirutalServiceListener;->onVirutalConnSuccess()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/OnVirutalServiceListener;->onVirutalConnFailed()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nibiru/lib/controller/ControllerServiceImpl$f$7;->cz:Lcom/nibiru/lib/controller/ControllerServiceImpl$f;

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl$f;->a(Lcom/nibiru/lib/controller/ControllerServiceImpl$f;)Lcom/nibiru/lib/controller/ControllerServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/ControllerServiceImpl;->j(Lcom/nibiru/lib/controller/ControllerServiceImpl;)Lcom/nibiru/lib/controller/OnVirutalServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nibiru/lib/controller/OnVirutalServiceListener;->onVirutalServiceFailed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
