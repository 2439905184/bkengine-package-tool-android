.class public final Lcom/nibiru/lib/d;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x317e3b8e0fcbc2a9L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Nibiru service has not been registered! please invoke registerBTDeviceService method first!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
