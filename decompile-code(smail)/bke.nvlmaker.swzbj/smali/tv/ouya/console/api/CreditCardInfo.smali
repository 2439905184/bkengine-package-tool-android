.class public Ltv/ouya/console/api/CreditCardInfo;
.super Ljava/lang/Object;
.source "CreditCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/CreditCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private balance:D

.field private currencyCode:Ljava/lang/String;

.field private expiresAt:Ljava/lang/String;

.field private infoRequired:Z

.field private lastFourDigits:Ljava/lang/String;

.field private provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ltv/ouya/console/api/CreditCardInfo$1;

    invoke-direct {v0}, Ltv/ouya/console/api/CreditCardInfo$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/CreditCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "balance"    # D
    .param p3, "lastFourDigits"    # Ljava/lang/String;
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "expiresAt"    # Ljava/lang/String;
    .param p6, "currencyCode"    # Ljava/lang/String;
    .param p7, "infoRequired"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    .line 50
    iput-object p3, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    .line 54
    iput-boolean p7, p0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    .line 55
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Ltv/ouya/console/api/CreditCardInfo;->readFromJSONObject(Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method

.method private readFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v1, "balance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    .line 138
    const-string v1, "currency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    .line 139
    const-string v1, "requiresPaymentMethod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    .line 141
    const-string v1, "credit_card"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "credit_card"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    .local v0, "cardObj":Lorg/json/JSONObject;
    const-string v1, "last_four"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    .line 146
    const-string v1, "provider"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    .line 147
    const-string v1, "expires_at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/CreditCardInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 106
    check-cast v0, Ltv/ouya/console/api/CreditCardInfo;

    .line 108
    .local v0, "creditCardInfo":Ltv/ouya/console/api/CreditCardInfo;
    iget-wide v4, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    iget-wide v6, v0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 110
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 111
    :cond_5
    iget-object v3, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 112
    :cond_6
    iget-object v3, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 113
    :cond_7
    iget-boolean v3, p0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBalance()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    return-wide v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFourDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 120
    iget-wide v2, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 121
    .local v0, "result":I
    iget-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 124
    :cond_0
    iget-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 125
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 127
    :cond_1
    iget-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 130
    :cond_2
    iget-object v1, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 131
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 133
    :cond_3
    return v0
.end method

.method public isInfoRequired()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-wide v0, p0, Ltv/ouya/console/api/CreditCardInfo;->balance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->lastFourDigits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->expiresAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Ltv/ouya/console/api/CreditCardInfo;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Ltv/ouya/console/api/CreditCardInfo;->infoRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
