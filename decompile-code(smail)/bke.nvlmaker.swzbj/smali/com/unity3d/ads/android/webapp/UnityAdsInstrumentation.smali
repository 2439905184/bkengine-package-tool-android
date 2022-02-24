.class public Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;
.super Ljava/lang/Object;
.source "UnityAdsInstrumentation.java"


# static fields
.field private static _unsentEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gaInstrumentationVideoAbort(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V
    .locals 2
    .param p0, "campaignPlaying"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "additionalValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->getBasicGAVideoProperties(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->handleUnsentEvents()V

    .line 194
    const-string v1, "videoAnalyticsEventAbort"

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 195
    return-void
.end method

.method public static gaInstrumentationVideoCaching(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V
    .locals 2
    .param p0, "campaignPlaying"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "additionalValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->getBasicGAVideoProperties(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->handleUnsentEvents()V

    .line 201
    const-string v1, "videoAnalyticsEventCaching"

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 202
    return-void
.end method

.method public static gaInstrumentationVideoError(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V
    .locals 2
    .param p0, "campaignPlaying"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "additionalValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->getBasicGAVideoProperties(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->handleUnsentEvents()V

    .line 187
    const-string v1, "videoAnalyticsEventError"

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 188
    return-void
.end method

.method public static gaInstrumentationVideoPlay(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V
    .locals 2
    .param p0, "campaignPlaying"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "additionalValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->getBasicGAVideoProperties(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->handleUnsentEvents()V

    .line 180
    const-string v1, "videoAnalyticsEventPlay"

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 181
    return-void
.end method

.method private static getBasicGAVideoProperties(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "campaignPlaying"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    const/4 v4, 0x0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    const-string v3, "stream"

    .line 78
    .local v3, "videoPlayType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    const-string v3, "cached"

    .line 82
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "connectionType":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v2, "retJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "videoPlaybackType"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "connectionType"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v5, "campaignId"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v2    # "retJsonObject":Lorg/json/JSONObject;
    .end local v3    # "videoPlayType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 91
    .restart local v0    # "connectionType":Ljava/lang/String;
    .restart local v2    # "retJsonObject":Lorg/json/JSONObject;
    .restart local v3    # "videoPlayType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Could not create instrumentation JSON"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v2, v4

    .line 93
    goto :goto_0

    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "retJsonObject":Lorg/json/JSONObject;
    .end local v3    # "videoPlayType":Ljava/lang/String;
    :cond_1
    move-object v2, v4

    .line 99
    goto :goto_0
.end method

.method private static handleUnsentEvents()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->sendGAInstrumentationEvents()V

    .line 104
    return-void
.end method

.method private static mapToJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "mapWithValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 25
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v4, "retJsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 28
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 34
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not add value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "retJsonObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private static mergeJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "json1"    # Lorg/json/JSONObject;
    .param p1, "json2"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 52
    .local v2, "keyIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Problems creating JSON"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "keyIterator":Ljava/util/Iterator;
    :cond_0
    if-eqz p0, :cond_2

    .line 71
    .end local p0    # "json1":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object p0

    .line 68
    .restart local p0    # "json1":Lorg/json/JSONObject;
    :cond_2
    if-eqz p1, :cond_3

    move-object p0, p1

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static sendGAInstrumentationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v2, "finalData":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v4, "wrapArray":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v1, "events":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "eventType"

    invoke-virtual {v2, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v5, "data"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    const-string v5, "events"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const-string v5, "Sending to webapp"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 161
    sget-object v5, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v6, "googleAnalyticsEvent"

    invoke-virtual {v5, v6, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 174
    :goto_1
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Couldn\'t create final data"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "WebApp not initialized, could not send event!"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 166
    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    .line 170
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v3, "tmpData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v5, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static sendGAInstrumentationEvents()V
    .locals 10

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "finalData":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v7, "wrapArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v4, "finalEvents":Lorg/json/JSONObject;
    sget-object v8, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 112
    sget-object v8, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 113
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "finalData":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .restart local v3    # "finalData":Lorg/json/JSONObject;
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "eventType":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 118
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "eventType"

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v8, "data"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    :try_start_1
    const-string v8, "events"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v8

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 134
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "eventType":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    :cond_0
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v8, v8, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v8, v8, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v8}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    const-string v8, "Sending to webapp"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 136
    sget-object v8, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v8, v8, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v9, "googleAnalyticsEvent"

    invoke-virtual {v8, v9, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 137
    sget-object v8, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 138
    const/4 v8, 0x0

    sput-object v8, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->_unsentEvents:Ljava/util/ArrayList;

    .line 141
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
