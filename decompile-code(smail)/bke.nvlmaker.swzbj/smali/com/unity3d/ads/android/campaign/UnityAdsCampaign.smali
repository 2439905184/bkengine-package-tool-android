.class public Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
.super Ljava/lang/Object;
.source "UnityAdsCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    }
.end annotation


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

.field private _requiredKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_requiredKeys:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "fromJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_requiredKeys:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 49
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 50
    return-void
.end method

.method private checkDataIntegrity()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v5, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 324
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_requiredKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 325
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 332
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 324
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allowCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "allowCache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for campaign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public allowStreamingVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v1, "allowStreaming"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 318
    return-void
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "clickUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEndScreenUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "endScreen"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "gameId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "gameName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_STOREID_KEY but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_ITUNESID_KEY but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "tagLine"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFileExpectedSize()J
    .locals 8

    .prologue
    .line 239
    const-wide/16 v2, -0x1

    .line 240
    .local v2, "size":J
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    :try_start_0
    iget-object v6, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v7, "trailerSize"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 245
    .local v1, "fileSize":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    move-wide v4, v2

    .line 260
    .end local v1    # "fileSize":Ljava/lang/String;
    .end local v2    # "size":J
    .local v4, "size":J
    :goto_0
    return-wide v4

    .line 247
    .end local v4    # "size":J
    .restart local v1    # "fileSize":Ljava/lang/String;
    .restart local v2    # "size":J
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v4, v2

    .line 249
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileSize":Ljava/lang/String;
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :catch_1
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "Not found, returning -1"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-wide v4, v2

    .line 256
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :cond_0
    move-wide v4, v2

    .line 260
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v3, "trailerDownloadable"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "videoFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 235
    .end local v1    # "videoFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "This should not happen!"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVideoStreamUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerStreaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerDownloadable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v0

    return v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    if-ne v0, v1, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 303
    return-void
.end method

.method public shouldBypassAppSheet()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "bypassAppSheet"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for campaign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "cacheVideo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for campaign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 61
    .local v1, "retObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "retObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 63
    .restart local v1    # "retObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error creating campaign JSON"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
