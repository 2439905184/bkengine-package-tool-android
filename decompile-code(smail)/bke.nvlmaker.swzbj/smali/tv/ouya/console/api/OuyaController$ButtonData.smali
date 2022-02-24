.class public Ltv/ouya/console/api/OuyaController$ButtonData;
.super Ljava/lang/Object;
.source "OuyaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonData"
.end annotation


# instance fields
.field public buttonDrawable:Landroid/graphics/drawable/Drawable;

.field public buttonName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Ltv/ouya/console/api/OuyaController$ButtonData;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object p2, p0, Ltv/ouya/console/api/OuyaController$ButtonData;->buttonName:Ljava/lang/String;

    .line 231
    return-void
.end method
