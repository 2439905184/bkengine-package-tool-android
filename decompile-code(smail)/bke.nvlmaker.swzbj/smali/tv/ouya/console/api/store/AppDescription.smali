.class public Ltv/ouya/console/api/store/AppDescription;
.super Ljava/lang/Object;
.source "AppDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/store/AppDescription$AppVersion;
    }
.end annotation


# static fields
.field private static final APP_STATUSES:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyy-MM-dd\'T\'HH:mm:ss\'Z\'"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private inAppPurchases:Z

.field private premium:Z

.field public primaryProduct:Ltv/ouya/console/api/Product;

.field private rating:D

.field private ratingCount:I

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private versions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unsubmitted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "submitted"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "under_review"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "approved"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "published"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rejected"

    aput-object v2, v0, v1

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->APP_STATUSES:[Ljava/lang/String;

    .line 48
    new-instance v0, Ltv/ouya/console/api/store/AppDescription$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDescription$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/Product;Ljava/util/HashMap;DIZZLjava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "primaryProduct"    # Ltv/ouya/console/api/Product;
    .param p6, "rating"    # D
    .param p8, "ratingCount"    # I
    .param p9, "premium"    # Z
    .param p10, "inAppPurchases"    # Z
    .param p11, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/Product;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;DIZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p5, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 107
    iput-object p4, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    .line 108
    iput-wide p6, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    .line 109
    iput p8, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    .line 110
    iput-boolean p9, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    .line 111
    iput-boolean p10, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    .line 112
    iput-object p11, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 98
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move v9, v8

    move v10, v8

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/Product;Ljava/util/HashMap;DIZZLjava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription;->readFromJSON(Lorg/json/JSONObject;)V

    .line 95
    return-void
.end method

.method private getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;
    .locals 5

    .prologue
    .line 332
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 333
    sget-object v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;->EMPTY_VERSION:Ltv/ouya/console/api/store/AppDescription$AppVersion;

    .line 340
    :goto_0
    return-object v4

    .line 335
    :cond_0
    sget-object v0, Ltv/ouya/console/api/store/AppDescription;->APP_STATUSES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 336
    .local v3, "status":Ljava/lang/String;
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    goto :goto_0

    .line 335
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    .end local v3    # "status":Ljava/lang/String;
    :cond_2
    sget-object v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;->EMPTY_VERSION:Ltv/ouya/console/api/store/AppDescription$AppVersion;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    if-ne p0, p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/AppDescription;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 220
    check-cast v0, Ltv/ouya/console/api/store/AppDescription;

    .line 222
    .local v0, "that":Ltv/ouya/console/api/store/AppDescription;
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 223
    :cond_5
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 224
    :cond_8
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 225
    :cond_b
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    if-nez v3, :cond_c

    .line 226
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v3, :cond_d

    move v1, v2

    .line 227
    goto :goto_0

    .line 229
    :cond_c
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v3, v4}, Ltv/ouya/console/api/Product;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 230
    goto :goto_0

    .line 232
    :cond_d
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-eqz v3, :cond_f

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v1, v2

    goto :goto_0

    :cond_f
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v3, :cond_e

    .line 233
    :cond_10
    iget-wide v4, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    iget-wide v6, v0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_11

    move v1, v2

    goto :goto_0

    .line 234
    :cond_11
    iget v3, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    iget v4, v0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    if-eq v3, v4, :cond_12

    move v1, v2

    goto/16 :goto_0

    .line 235
    :cond_12
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    if-eq v3, v4, :cond_13

    move v1, v2

    goto/16 :goto_0

    .line 236
    :cond_13
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    if-eq v3, v4, :cond_14

    move v1, v2

    goto/16 :goto_0

    .line 237
    :cond_14
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInAppPurchases()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    return v0
.end method

.method public getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 346
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    .local v0, "mainIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v4, "tv.ouya.intent.category.GAME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Ltv/ouya/console/api/store/AppDescription;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 352
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 354
    const-string v4, "tv.ouya.intent.category.GAME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 355
    const-string v4, "tv.ouya.intent.category.APP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 359
    :cond_0
    if-nez v2, :cond_1

    .line 360
    const-string v4, "tv.ouya.intent.category.APP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 364
    :cond_1
    if-nez v2, :cond_2

    move-object v0, v3

    .line 370
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 368
    .restart local v0    # "mainIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMostRecentVersionContentRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getContentRating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentVersionMainImageFullUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getMainImageFullUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentVersionUploadedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUploadedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentVersionUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremium()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    return v0
.end method

.method public getPrimaryProduct()Ltv/ouya/console/api/Product;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    return-wide v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 245
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 246
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 247
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 245
    goto :goto_1
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 261
    const-string v6, "uuid"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 262
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, "package"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 263
    :cond_0
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 265
    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    .line 269
    :cond_1
    const-string v6, "type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    .line 271
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 273
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    const-string v7, "details_page"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 274
    :cond_2
    const-string v6, "versions"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    const-string v6, "versions"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 276
    .local v5, "versionsJSON":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 277
    .local v3, "versionKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 278
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    new-instance v7, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "versionKeys":Ljava/util/Iterator;
    .end local v5    # "versionsJSON":Lorg/json/JSONObject;
    :cond_3
    new-instance v0, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>()V

    .line 283
    .local v0, "fakeVersion":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    const-string v6, "version"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "versionUuid":Ljava/lang/String;
    if-nez v4, :cond_4

    const-string v6, "latestVersion"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "uuid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    :cond_4
    invoke-virtual {v0, v4}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUuid(Ljava/lang/String;)V

    .line 286
    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setMainImageFullUrl(Ljava/lang/String;)V

    .line 287
    const-string v6, "contentRating"

    const-string v7, "content_rating"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setContentRating(Ljava/lang/String;)V

    .line 289
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    const-string v7, "approved"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v0    # "fakeVersion":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    .end local v4    # "versionUuid":Ljava/lang/String;
    :cond_5
    const-string v6, "primaryProduct"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 294
    .local v2, "productJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 295
    new-instance v6, Ltv/ouya/console/api/Product;

    invoke-direct {v6}, Ltv/ouya/console/api/Product;-><init>()V

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    .line 296
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v6, v2}, Ltv/ouya/console/api/Product;->readFromJSONObject(Lorg/json/JSONObject;)V

    .line 299
    :cond_6
    const-string v6, "rating"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 300
    const-string v6, "rating"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "average"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    .line 301
    const-string v6, "rating"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    .line 308
    :goto_1
    const-string v6, "premium"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    .line 310
    const-string v6, "inAppPurchases"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    .line 312
    .end local v2    # "productJSON":Lorg/json/JSONObject;
    :cond_7
    return-void

    .line 304
    .restart local v2    # "productJSON":Lorg/json/JSONObject;
    :cond_8
    const-string v6, "ratingAverage"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    .line 305
    const-string v6, "ratingCount"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    goto :goto_1
.end method

.method public setInAppPurchases(Z)V
    .locals 0
    .param p1, "newInAppPurchases"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    return-void
.end method

.method public setMainImageFullUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainImageFullUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPremium(Z)V
    .locals 0
    .param p1, "newPremium"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    return-void
.end method

.method public setRating(D)V
    .locals 1
    .param p1, "rating"    # D

    .prologue
    .line 166
    iput-wide p1, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    .line 167
    return-void
.end method

.method public setRatingCount(I)V
    .locals 0
    .param p1, "ratingCount"    # I

    .prologue
    .line 170
    iput p1, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    .line 171
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVersions(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDescription{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 188
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v2, p1, p2}, Ltv/ouya/console/api/Product;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :cond_0
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 197
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    :cond_1
    iget-wide v6, p0, Ltv/ouya/console/api/store/AppDescription;->rating:D

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 209
    iget v2, p0, Ltv/ouya/console/api/store/AppDescription;->ratingCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean v2, p0, Ltv/ouya/console/api/store/AppDescription;->premium:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget-boolean v2, p0, Ltv/ouya/console/api/store/AppDescription;->inAppPurchases:Z

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 212
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return-void

    :cond_2
    move v2, v4

    .line 191
    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUploadedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getMainImageFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getContentRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 210
    goto :goto_1

    :cond_5
    move v3, v4

    .line 211
    goto :goto_2
.end method
