.class public final Ltv/ouya/console/api/store/AppDetails;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/AppDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkFileSize:Ljava/lang/Long;

.field public contentRating:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public developer:Ljava/lang/String;

.field public founder:Z

.field public imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inAppPurchases:Z

.field public latestVersion:Ljava/lang/String;

.field public likeCount:Ljava/lang/Long;

.field public mainImageFullUrl:Ljava/lang/String;

.field public overview:Ljava/lang/String;

.field public premium:Z

.field public primaryProduct:Ltv/ouya/console/api/Product;

.field public publishedAt:Ljava/lang/String;

.field public rating:D

.field public ratingCount:I

.field public title:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public versionNumber:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ltv/ouya/console/api/store/AppDetails$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDetails$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ltv/ouya/console/api/Product;DI)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "mainImageFullUrl"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "apkFileSize"    # Ljava/lang/Long;
    .param p6, "versionNumber"    # Ljava/lang/String;
    .param p7, "publishedAt"    # Ljava/lang/String;
    .param p9, "likeCount"    # Ljava/lang/Long;
    .param p10, "overview"    # Ljava/lang/String;
    .param p11, "contentRating"    # Ljava/lang/String;
    .param p12, "latestVersion"    # Ljava/lang/String;
    .param p13, "founder"    # Ljava/lang/Boolean;
    .param p14, "developer"    # Ljava/lang/String;
    .param p15, "premium"    # Ljava/lang/Boolean;
    .param p16, "inAppPurchases"    # Ljava/lang/Boolean;
    .param p17, "videoUrl"    # Ljava/lang/String;
    .param p18, "primaryProduct"    # Ltv/ouya/console/api/Product;
    .param p19, "rating"    # D
    .param p21, "ratingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/Product;",
            "DI)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p8, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    .line 98
    iput-object p6, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    .line 100
    iput-object p8, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 101
    iput-object p9, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    .line 102
    iput-object p10, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    .line 103
    iput-object p11, p0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    .line 104
    iput-object p12, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    .line 105
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    .line 106
    move-object/from16 v0, p14

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    .line 107
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    .line 108
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    .line 109
    move-object/from16 v0, p17

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p18

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    .line 111
    move-wide/from16 v0, p19

    iput-wide v0, p0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    .line 112
    move/from16 v0, p21

    iput v0, p0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    .line 113
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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails;->readFromJSON(Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/AppDetails;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 120
    check-cast v0, Ltv/ouya/console/api/store/AppDetails;

    .line 122
    .local v0, "that":Ltv/ouya/console/api/store/AppDetails;
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 124
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 125
    :cond_5
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 126
    :cond_6
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 127
    :cond_7
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 128
    :cond_8
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 129
    :cond_9
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 130
    :cond_a
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 131
    :cond_b
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    goto/16 :goto_0

    .line 132
    :cond_c
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    goto/16 :goto_0

    .line 133
    :cond_d
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    goto/16 :goto_0

    .line 134
    :cond_e
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    goto/16 :goto_0

    .line 135
    :cond_f
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    if-eq v3, v4, :cond_10

    move v1, v2

    goto/16 :goto_0

    .line 136
    :cond_10
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    if-eq v3, v4, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 137
    :cond_11
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 138
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    goto/16 :goto_0

    .line 139
    :cond_12
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    goto/16 :goto_0

    .line 140
    :cond_13
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    if-nez v3, :cond_14

    .line 141
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v3, :cond_15

    move v1, v2

    goto/16 :goto_0

    .line 142
    :cond_14
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v3, v4}, Ltv/ouya/console/api/Product;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    goto/16 :goto_0

    .line 143
    :cond_15
    iget-wide v4, p0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    iget-wide v6, v0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_16

    move v1, v2

    goto/16 :goto_0

    .line 144
    :cond_16
    iget v3, p0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    iget v4, v0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public getDescription(Ljava/lang/String;)Ltv/ouya/console/api/store/AppDescription;
    .locals 13
    .param p1, "appUuid"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v12, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-direct {v12}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>()V

    .line 241
    .local v12, "version":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setMainImageFullUrl(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUploadedAt(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUuid(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setContentRating(Ljava/lang/String;)V

    .line 245
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v5, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const-string v0, "published"

    invoke-virtual {v5, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ltv/ouya/console/api/store/AppDescription;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    iget-object v4, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    iget-wide v6, p0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    iget v8, p0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    iget-boolean v9, p0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    iget-boolean v10, p0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    const/4 v11, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/Product;Ljava/util/HashMap;DIZZLjava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 152
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 154
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 155
    return v0
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    .line 197
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    .line 198
    const-string v3, "mainImageFullUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    .line 199
    const-string v3, "uuid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    .line 200
    const-string v3, "apkFileSize"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    .line 201
    const-string v3, "versionNumber"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    .line 202
    const-string v3, "publishedAt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    .line 203
    const-string v3, "contentRating"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    .line 204
    const-string v3, "latestVersion"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 208
    const-string v3, "filepickerScreenshots"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 209
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    const-string v3, "screenshots"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 213
    :cond_1
    if-eqz v0, :cond_2

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 215
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_2
    const-string v3, "likeCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    .line 220
    const-string v3, "overview"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    .line 221
    const-string v3, "founder"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    .line 222
    const-string v3, "developer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    .line 223
    const-string v3, "premium"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    .line 224
    const-string v3, "inAppPurchases"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    .line 226
    const-string v3, "videoUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    .line 227
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    .line 229
    :cond_3
    const-string v3, "primaryProduct"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 230
    .local v2, "productJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 231
    new-instance v3, Ltv/ouya/console/api/Product;

    invoke-direct {v3}, Ltv/ouya/console/api/Product;-><init>()V

    iput-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    .line 232
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v3, v2}, Ltv/ouya/console/api/Product;->readFromJSONObject(Lorg/json/JSONObject;)V

    .line 234
    :cond_4
    const-string v3, "ratingAverage"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    .line 235
    const-string v3, "ratingCount"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    .line 236
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->contentRating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->premium:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 180
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->inAppPurchases:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->primaryProduct:Ltv/ouya/console/api/Product;

    invoke-virtual {v0, p1, p2}, Ltv/ouya/console/api/Product;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :cond_0
    iget-wide v0, p0, Ltv/ouya/console/api/store/AppDetails;->rating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 187
    iget v0, p0, Ltv/ouya/console/api/store/AppDetails;->ratingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void

    :cond_1
    move v0, v2

    .line 177
    goto :goto_0

    :cond_2
    move v0, v2

    .line 179
    goto :goto_1

    :cond_3
    move v0, v2

    .line 180
    goto :goto_2

    :cond_4
    move v1, v2

    .line 182
    goto :goto_3
.end method
