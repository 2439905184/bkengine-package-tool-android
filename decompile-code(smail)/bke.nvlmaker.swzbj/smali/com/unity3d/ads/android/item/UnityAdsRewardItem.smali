.class public Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
.super Ljava/lang/Object;
.source "UnityAdsRewardItem.java"


# instance fields
.field private _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _pictureURL:Ljava/lang/String;

.field private _requiredKeys:[Ljava/lang/String;

.field private _rewardItemJSON:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "fromJSON"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_requiredKeys:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    .line 25
    invoke-direct {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->parseValues()V

    .line 26
    return-void
.end method

.method private checkDataIntegrity()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v5, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 74
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_requiredKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 75
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 74
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private parseValues()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Problem parsing campaign values"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_requiredKeys:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public getDetails()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "returnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "picture"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;

    return-object v0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->checkDataIntegrity()Z

    move-result v0

    return v0
.end method
