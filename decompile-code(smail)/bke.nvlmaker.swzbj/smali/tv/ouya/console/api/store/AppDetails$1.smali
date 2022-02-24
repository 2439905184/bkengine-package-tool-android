.class final Ltv/ouya/console/api/store/AppDetails$1;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/AppDetails;
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
        "Ltv/ouya/console/api/store/AppDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDetails;
    .locals 28
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 23
    .local v6, "mainImageFullUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, "uuid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 25
    .local v8, "apkFileSize":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 26
    .local v9, "versionNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, "publishedAt":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v11, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 30
    .local v12, "likeCount":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 31
    .local v13, "overview":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 32
    .local v14, "contentRating":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 33
    .local v15, "versionUuid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 34
    .local v16, "founder":Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 35
    .local v17, "developer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 36
    .local v18, "premium":Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 37
    .local v19, "inAppPurchases":Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 39
    .local v20, "videoUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_4

    const/4 v2, 0x1

    .line 40
    .local v2, "hasPrimaryProduct":Z
    :goto_3
    const/16 v21, 0x0

    .line 41
    .local v21, "primaryProduct":Ltv/ouya/console/api/Product;
    if-eqz v2, :cond_0

    .line 42
    sget-object v3, Ltv/ouya/console/api/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "primaryProduct":Ltv/ouya/console/api/Product;
    check-cast v21, Ltv/ouya/console/api/Product;

    .line 44
    .restart local v21    # "primaryProduct":Ltv/ouya/console/api/Product;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .line 45
    .local v22, "rating":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 47
    .local v24, "ratingCount":I
    new-instance v3, Ltv/ouya/console/api/store/AppDetails;

    invoke-direct/range {v3 .. v24}, Ltv/ouya/console/api/store/AppDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ltv/ouya/console/api/Product;DI)V

    return-object v3

    .line 33
    .end local v2    # "hasPrimaryProduct":Z
    .end local v16    # "founder":Ljava/lang/Boolean;
    .end local v17    # "developer":Ljava/lang/String;
    .end local v18    # "premium":Ljava/lang/Boolean;
    .end local v19    # "inAppPurchases":Ljava/lang/Boolean;
    .end local v20    # "videoUrl":Ljava/lang/String;
    .end local v21    # "primaryProduct":Ltv/ouya/console/api/Product;
    .end local v22    # "rating":D
    .end local v24    # "ratingCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 35
    .restart local v16    # "founder":Ljava/lang/Boolean;
    .restart local v17    # "developer":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 36
    .restart local v18    # "premium":Ljava/lang/Boolean;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 39
    .restart local v19    # "inAppPurchases":Ljava/lang/Boolean;
    .restart local v20    # "videoUrl":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails$1;->newArray(I)[Ltv/ouya/console/api/store/AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/AppDetails;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 54
    new-array v0, p1, [Ltv/ouya/console/api/store/AppDetails;

    return-object v0
.end method
