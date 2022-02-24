.class Ltv/ouya/console/api/MappingParser$AxisRemap;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/MappingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AxisRemap"
.end annotation


# instance fields
.field public mDestinationAxis:I

.field public mSourceAxis:I

.field final synthetic this$0:Ltv/ouya/console/api/MappingParser;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/MappingParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Ltv/ouya/console/api/MappingParser$AxisRemap;->this$0:Ltv/ouya/console/api/MappingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Ltv/ouya/console/api/MappingParser$AxisRemap;->mSourceAxis:I

    .line 47
    iput v0, p0, Ltv/ouya/console/api/MappingParser$AxisRemap;->mDestinationAxis:I

    return-void
.end method
