.class final Ltv/ouya/console/api/store/AppDescription$1;
.super Ljava/lang/Object;
.source "AppDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/AppDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltv/ouya/console/api/store/AppDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDescription;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDescription;
    .locals 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "uuid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "imageUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_1

    const/4 v14, 0x1

    .line 55
    .local v14, "hasPrimaryProduct":Z
    :goto_0
    const/4 v6, 0x0

    .line 56
    .local v6, "primaryProduct":Ltv/ouya/console/api/Product;
    if-eqz v14, :cond_0

    .line 57
    sget-object v2, Ltv/ouya/console/api/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "primaryProduct":Ltv/ouya/console/api/Product;
    check-cast v6, Ltv/ouya/console/api/Product;

    .line 60
    .restart local v6    # "primaryProduct":Ltv/ouya/console/api/Product;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 61
    .local v18, "versionCount":I
    const/4 v7, 0x0

    .line 62
    .local v7, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const/4 v2, -0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_2

    .line 63
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 64
    .restart local v7    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 66
    .local v16, "key":Ljava/lang/String;
    new-instance v17, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-direct/range {v17 .. v17}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>()V

    .line 67
    .local v17, "version":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUuid(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUploadedAt(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setMainImageFullUrl(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setContentRating(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 54
    .end local v6    # "primaryProduct":Ltv/ouya/console/api/Product;
    .end local v7    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    .end local v14    # "hasPrimaryProduct":Z
    .end local v15    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "version":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    .end local v18    # "versionCount":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 74
    .restart local v6    # "primaryProduct":Ltv/ouya/console/api/Product;
    .restart local v7    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    .restart local v14    # "hasPrimaryProduct":Z
    .restart local v18    # "versionCount":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 75
    .local v8, "rating":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 76
    .local v10, "ratingCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    const/4 v11, 0x1

    .line 77
    .local v11, "premium":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    const/4 v12, 0x1

    .line 78
    .local v12, "inAppPurchases":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "type":Ljava/lang/String;
    new-instance v2, Ltv/ouya/console/api/store/AppDescription;

    invoke-direct/range {v2 .. v13}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/Product;Ljava/util/HashMap;DIZZLjava/lang/String;)V

    return-object v2

    .line 76
    .end local v11    # "premium":Z
    .end local v12    # "inAppPurchases":Z
    .end local v13    # "type":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 77
    .restart local v11    # "premium":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription$1;->newArray(I)[Ltv/ouya/console/api/store/AppDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/AppDescription;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Ltv/ouya/console/api/store/AppDescription;

    return-object v0
.end method
