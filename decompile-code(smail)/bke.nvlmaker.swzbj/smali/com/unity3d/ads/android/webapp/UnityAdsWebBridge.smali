.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;
.super Ljava/lang/Object;
.source "UnityAdsWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$1;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    }
.end annotation


# instance fields
.field private _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 60
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 61
    return-void
.end method

.method private getEventType(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->values()[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    move-result-object v0

    .local v0, "arr$":[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 52
    .local v1, "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    .end local v1    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :goto_1
    return-object v1

    .line 51
    .restart local v1    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleWebEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 67
    iget-object v9, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v8

    .line 69
    :cond_1
    const/4 v5, 0x0

    .line 70
    .local v5, "jsonData":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 71
    .local v7, "parameters":Lorg/json/JSONObject;
    move-object v2, p1

    .line 74
    .local v2, "event":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .local v6, "jsonData":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "data"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    move-object v5, v6

    .line 81
    .end local v6    # "jsonData":Lorg/json/JSONObject;
    .restart local v5    # "jsonData":Lorg/json/JSONObject;
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 83
    invoke-direct {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->getEventType(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    move-result-object v3

    .line 85
    .local v3, "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    if-eqz v3, :cond_0

    .line 87
    sget-object v9, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$1;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebBridge$UnityAdsWebEvent:[I

    invoke-virtual {v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 136
    :cond_2
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while parsing parameters: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :pswitch_0
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onPlayVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 92
    :pswitch_1
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onPauseVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 95
    :pswitch_2
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onCloseAdsView(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 98
    :pswitch_3
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onWebAppLoadComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 101
    :pswitch_4
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onWebAppInitComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 104
    :pswitch_5
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onOrientationRequest(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 107
    :pswitch_6
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onOpenPlayStore(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 110
    :pswitch_7
    const-string v9, "clickUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "clickUrl":Ljava/lang/String;
    :try_start_2
    const-string v9, "clickUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, "i":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 127
    .end local v4    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 128
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not start activity for opening URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maybe malformed URL?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "Error fetching clickUrl"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    .end local v0    # "clickUrl":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .restart local v6    # "jsonData":Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "jsonData":Lorg/json/JSONObject;
    .restart local v5    # "jsonData":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
