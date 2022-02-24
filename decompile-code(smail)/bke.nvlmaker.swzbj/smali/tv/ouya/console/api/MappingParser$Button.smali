.class Ltv/ouya/console/api/MappingParser$Button;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/MappingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Button"
.end annotation


# instance fields
.field public mDestinationKeyCode:I

.field public mExcludeSource:Landroid/util/SparseBooleanArray;

.field public mSourceKeyCode:I

.field final synthetic this$0:Ltv/ouya/console/api/MappingParser;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/MappingParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object p1, p0, Ltv/ouya/console/api/MappingParser$Button;->this$0:Ltv/ouya/console/api/MappingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Ltv/ouya/console/api/MappingParser$Button;->mSourceKeyCode:I

    .line 41
    iput v0, p0, Ltv/ouya/console/api/MappingParser$Button;->mDestinationKeyCode:I

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Button;->mExcludeSource:Landroid/util/SparseBooleanArray;

    return-void
.end method
