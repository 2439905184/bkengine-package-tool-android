.class Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;
.super Landroid/os/AsyncTask;
.source "UnityAdsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/cache/UnityAdsDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheDownload"
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
.field private _campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

.field private _cancelled:Z

.field private _downloadLength:I

.field private _downloadUrl:Ljava/net/URL;

.field private _input:Ljava/io/InputStream;

.field private _output:Ljava/io/OutputStream;

.field private _urlConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 2
    .param p1, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 184
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    .line 185
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    .line 186
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    .line 187
    iput v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadLength:I

    .line 188
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    .line 189
    iput-boolean v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_cancelled:Z

    .line 190
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 193
    iput-object p1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 194
    return-void
.end method

.method private cancelDownload()V
    .locals 3

    .prologue
    .line 317
    const-string v0, "ERROR"

    .line 318
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download cancelled for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->closeAndFlushConnection()V

    .line 323
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$200(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 325
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$300(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V

    .line 326
    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCancelled:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$400(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 308
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 309
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problems closing connection: "

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
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 199
    .local v8, "startTime":J
    const-wide/16 v4, 0x0

    .line 202
    .local v4, "duration":J
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v7, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    .line 212
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    const/16 v12, 0x2710

    invoke-virtual {v7, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    const/16 v12, 0x2710

    invoke-virtual {v7, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    if-eqz v7, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadLength:I

    .line 224
    :try_start_2
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_input:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v7}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$000(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    .line 231
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    if-nez v7, :cond_0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->onCancelled()V

    .line 234
    :cond_0
    const/16 v7, 0x400

    new-array v3, v7, [B

    .line 235
    .local v3, "data":[B
    const-wide/16 v10, 0x0

    .line 236
    .local v10, "total":J
    const/4 v2, 0x0

    .line 239
    .local v2, "count":I
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_input:Ljava/io/InputStream;

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 240
    int-to-long v12, v2

    add-long/2addr v10, v12

    .line 241
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadLength:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->publishProgress([Ljava/lang/Object;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_output:Ljava/io/OutputStream;

    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_cancelled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v7, :cond_1

    .line 245
    const/4 v7, 0x0

    .line 266
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v10    # "total":J
    :goto_2
    return-object v7

    .line 204
    :catch_0
    move-exception v6

    .line 205
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problems with url: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->onCancelled()V

    .line 207
    const/4 v7, 0x0

    goto :goto_2

    .line 216
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 217
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problems opening connection: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 227
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problems opening stream: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 249
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v10    # "total":J
    :catch_3
    move-exception v6

    .line 250
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problems downloading file: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->cancelDownload()V

    .line 252
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$100()V

    .line 253
    const/4 v7, 0x0

    goto :goto_2

    .line 256
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->closeAndFlushConnection()V

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v4, v12, v8

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v12}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " of size: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " downloaded in: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "ms"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 260
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-lez v7, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_3

    .line 262
    div-long v12, v10, v4

    sput-wide v12, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    .line 266
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v10    # "total":J
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_cancelled:Z

    .line 273
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->cancelDownload()V

    .line 274
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_cancelled:Z

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_campaign:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$200(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 280
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$300(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;)V

    .line 281
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$100()V

    .line 283
    const-string v0, "ERROR"

    .line 284
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->_downloadUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCompleted:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->access$400(Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;Ljava/lang/String;)V

    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 290
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 295
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 301
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 303
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$CacheDownload;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
