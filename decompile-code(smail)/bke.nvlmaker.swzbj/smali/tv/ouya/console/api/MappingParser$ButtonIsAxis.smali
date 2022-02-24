.class Ltv/ouya/console/api/MappingParser$ButtonIsAxis;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/MappingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonIsAxis"
.end annotation


# instance fields
.field public mActionDownMax:F

.field public mActionDownMin:F

.field public mDestinationKeyCode:I

.field public mSourceAxis:I

.field final synthetic this$0:Ltv/ouya/console/api/MappingParser;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/MappingParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->this$0:Ltv/ouya/console/api/MappingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mSourceAxis:I

    .line 52
    iput v0, p0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMax:F

    .line 53
    iput v0, p0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMin:F

    .line 54
    iput v1, p0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    return-void
.end method
