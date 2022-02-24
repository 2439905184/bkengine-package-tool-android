.class Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;
.super Landroid/os/AsyncTask;
.source "UnityAdsWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsUrlLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _baseUrl:Ljava/lang/String;

.field private _binput:Ljava/io/BufferedInputStream;

.field private _connection:Ljava/net/HttpURLConnection;

.field private _done:Ljava/lang/Boolean;

.field private _downloadLength:I

.field private _finalUrl:Ljava/lang/String;

.field private _httpMethod:Ljava/lang/String;

.field private _input:Ljava/io/InputStream;

.field private _postBody:Ljava/lang/String;

.field private _queryParams:Ljava/lang/String;

.field private _requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

.field private _retries:I

.field private _url:Ljava/net/URL;

.field private _urlData:Ljava/lang/String;

.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V
    .locals 4
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "queryParams"    # Ljava/lang/String;
    .param p4, "httpMethod"    # Ljava/lang/String;
    .param p5, "requestType"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;
    .param p6, "existingRetries"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 880
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .line 881
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 865
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    .line 866
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 867
    iput v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 868
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 869
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    .line 870
    const-string v1, ""

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 871
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 872
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 873
    iput v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 874
    const-string v1, "GET"

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 875
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 876
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 877
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 878
    iput-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 883
    :try_start_0
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 884
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 886
    const-string v1, "GET"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 890
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 897
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 898
    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$308(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total urlLoaders created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$300(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 900
    iput-object p5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 901
    iput p6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 902
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problems with url! Error-message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelInMainThread()V
    .locals 2

    .prologue
    .line 959
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1079
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1084
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_1
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problems closing streams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 946
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    .line 947
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 948
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 949
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 950
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 951
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 952
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 953
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 954
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 955
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 956
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 864
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 965
    :try_start_0
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 966
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 972
    :goto_0
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 973
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 974
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 975
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 976
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v7, "Content-type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :goto_1
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 982
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 983
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_3

    .line 992
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 994
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 995
    .local v3, "pout":Ljava/io/PrintWriter;
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 996
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    :goto_2
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1010
    .end local v3    # "pout":Ljava/io/PrintWriter;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1011
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 1012
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1020
    const-wide/16 v4, 0x0

    .line 1021
    .local v4, "total":J
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 1024
    :try_start_3
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$408(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I

    .line 1025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total urlLoaders that have started running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v7}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$400(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1026
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Content-length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x5000

    invoke-direct {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1029
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v1, 0x0

    .line 1031
    .local v1, "current":I
    :cond_2
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_7

    .line 1032
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1033
    int-to-byte v6, v1

    invoke-virtual {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 1035
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eqz v6, :cond_2

    .line 1049
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "current":I
    .end local v4    # "total":J
    :cond_3
    :goto_3
    return-object v9

    .line 969
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 985
    :catch_0
    move-exception v2

    .line 986
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems opening connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 987
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto :goto_3

    .line 978
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v7, "Content-type"

    const-string v8, "application/json"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 998
    .restart local v3    # "pout":Ljava/io/PrintWriter;
    :cond_6
    :try_start_6
    iget-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1002
    .end local v3    # "pout":Ljava/io/PrintWriter;
    :catch_1
    move-exception v2

    .line 1003
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems writing post-data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto :goto_3

    .line 1014
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1015
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems opening stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto/16 :goto_3

    .line 1039
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "current":I
    .restart local v4    # "total":J
    :cond_7
    :try_start_7
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read total of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 1042
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "current":I
    :catch_3
    move-exception v2

    .line 1043
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems loading url! Error-message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto/16 :goto_3
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 1055
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->closeAndFlushConnection()V

    .line 1056
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v0, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$500(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 1057
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 864
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 1063
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->closeAndFlushConnection()V

    .line 1064
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v0, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$600(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 1067
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1068
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1073
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 864
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setPostBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 933
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 936
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 943
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when creating adding query parameters to URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
