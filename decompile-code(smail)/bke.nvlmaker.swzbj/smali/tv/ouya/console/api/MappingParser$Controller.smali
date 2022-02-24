.class Ltv/ouya/console/api/MappingParser$Controller;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/MappingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Controller"
.end annotation


# instance fields
.field public mAlias:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/MappingParser$Alias;",
            ">;"
        }
    .end annotation
.end field

.field public mAxisExcludeSource:Landroid/util/SparseBooleanArray;

.field public mAxisRemap:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ltv/ouya/console/api/MappingParser$AxisRemap;",
            ">;"
        }
    .end annotation
.end field

.field public mButton:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/MappingParser$Button;",
            ">;"
        }
    .end annotation
.end field

.field public mButtonIsAxis:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ltv/ouya/console/api/MappingParser$ButtonIsAxis;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/ouya/console/api/MappingParser;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/MappingParser;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Ltv/ouya/console/api/MappingParser$Controller;->this$0:Ltv/ouya/console/api/MappingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Controller;->mAlias:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisExcludeSource:Landroid/util/SparseBooleanArray;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisRemap:Ljava/util/Vector;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Controller;->mButton:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser$Controller;->mButtonIsAxis:Ljava/util/Vector;

    return-void
.end method
