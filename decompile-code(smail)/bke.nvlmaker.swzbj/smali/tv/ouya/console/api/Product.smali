.class public Ltv/ouya/console/api/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT_PRODUCT_VERSION:I = 0x5

.field public static final INITIAL_PRODUCT_VERSION:I = 0x1


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private developerName:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private localPrice:D

.field private name:Ljava/lang/String;

.field private originalPrice:D

.field private percentOff:D

.field private priceInCents:I

.field private productVersionToBundle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ltv/ouya/console/api/Product$1;

    invoke-direct {v0}, Ltv/ouya/console/api/Product$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priceInCents"    # I
    .param p4, "localPrice"    # D
    .param p6, "currencyCode"    # Ljava/lang/String;
    .param p7, "originalPrice"    # D
    .param p9, "percentOff"    # D
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "developerName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    .line 78
    iput-object p1, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    .line 80
    iput p3, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    .line 81
    iput-wide p4, p0, Ltv/ouya/console/api/Product;->localPrice:D

    .line 82
    iput-object p6, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    .line 83
    iput-wide p7, p0, Ltv/ouya/console/api/Product;->originalPrice:D

    .line 84
    iput-wide p9, p0, Ltv/ouya/console/api/Product;->percentOff:D

    .line 85
    iput-object p11, p0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    .line 86
    iput-object p12, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    .line 66
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Product;->readFromJSONObject(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    if-ne p0, p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/Product;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 223
    check-cast v0, Ltv/ouya/console/api/Product;

    .line 225
    .local v0, "product":Ltv/ouya/console/api/Product;
    iget v3, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    iget v4, v0, Ltv/ouya/console/api/Product;->priceInCents:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 226
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 227
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 228
    :cond_5
    iget-wide v4, p0, Ltv/ouya/console/api/Product;->localPrice:D

    iget-wide v6, v0, Ltv/ouya/console/api/Product;->localPrice:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 229
    :cond_6
    iget-object v3, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 230
    :cond_7
    iget-wide v4, p0, Ltv/ouya/console/api/Product;->originalPrice:D

    iget-wide v6, v0, Ltv/ouya/console/api/Product;->originalPrice:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 231
    :cond_8
    iget-wide v4, p0, Ltv/ouya/console/api/Product;->percentOff:D

    iget-wide v6, v0, Ltv/ouya/console/api/Product;->percentOff:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 232
    :cond_9
    iget-object v3, p0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 233
    :cond_a
    iget-object v3, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 145
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 149
    :goto_0
    iget-wide v2, p0, Ltv/ouya/console/api/Product;->localPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "df":Ljava/text/DecimalFormat;
    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPrice()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->localPrice:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()D
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->originalPrice:D

    return-wide v0
.end method

.method public getPercentOff()D
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->percentOff:D

    return-wide v0
.end method

.method public getPriceInCents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 246
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 247
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    add-int v0, v1, v2

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltv/ouya/console/api/Product;->localPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 249
    iget-object v1, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 252
    :cond_0
    return v0
.end method

.method public readFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    .line 262
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    .line 263
    const-string v0, "priceInCents"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    .line 264
    const-string v0, "localPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ltv/ouya/console/api/Product;->localPrice:D

    .line 265
    const-string v0, "currency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    .line 266
    const-string v0, "originalPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ltv/ouya/console/api/Product;->originalPrice:D

    .line 267
    const-string v0, "percentOff"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ltv/ouya/console/api/Product;->percentOff:D

    .line 268
    const-string v0, "description"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    .line 269
    const-string v0, "developerName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDeveloperName(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setProductVersionToBundle(I)V
    .locals 0
    .param p1, "productVersionToBundle"    # I

    .prologue
    .line 172
    iput p1, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    .line 173
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 192
    iget-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 197
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->localPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 198
    iget-object v0, p0, Ltv/ouya/console/api/Product;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 201
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->originalPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 202
    iget-wide v0, p0, Ltv/ouya/console/api/Product;->percentOff:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 204
    :cond_1
    iget v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Ltv/ouya/console/api/Product;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    :cond_2
    iget v0, p0, Ltv/ouya/console/api/Product;->productVersionToBundle:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    .line 208
    iget-object v0, p0, Ltv/ouya/console/api/Product;->developerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    :cond_3
    return-void
.end method
