.class Ltv/ouya/console/api/MappingParser$Alias;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/MappingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Alias"
.end annotation


# instance fields
.field public mFallback:Z

.field public mFriendlyName:I

.field public mName:I

.field final synthetic this$0:Ltv/ouya/console/api/MappingParser;


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/MappingParser;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    iput-object p1, p0, Ltv/ouya/console/api/MappingParser$Alias;->this$0:Ltv/ouya/console/api/MappingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Ltv/ouya/console/api/MappingParser$Alias;->mName:I

    .line 35
    iput v0, p0, Ltv/ouya/console/api/MappingParser$Alias;->mFriendlyName:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/MappingParser$Alias;->mFallback:Z

    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/MappingParser;Ltv/ouya/console/api/MappingParser$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/MappingParser;
    .param p2, "x1"    # Ltv/ouya/console/api/MappingParser$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ltv/ouya/console/api/MappingParser$Alias;-><init>(Ltv/ouya/console/api/MappingParser;)V

    return-void
.end method
