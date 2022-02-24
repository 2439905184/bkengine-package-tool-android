.class public Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;
.super Ljava/lang/Object;
.source "SystemUtility.java"


# static fields
.field private static sArmArchitecture:I

.field protected static sTempPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    sput v0, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    .line 116
    const-string v0, "/data/local/tmp"

    sput-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sTempPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArmArchitecture()I
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, -0x1

    .line 32
    sget v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    if-eq v10, v12, :cond_0

    .line 33
    sget v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    .line 63
    .local v3, "is":Ljava/io/InputStream;
    :goto_0
    return v10

    .line 35
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v10, "/proc/cpuinfo"

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 36
    .restart local v3    # "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v2, "ir":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v7, "CPU architecture"

    .line 41
    .local v7, "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "line":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "pair":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 45
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    .line 48
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "n":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 55
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 57
    sget v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    if-ne v10, v12, :cond_2

    .line 58
    const/4 v10, 0x6

    sput v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pair":[Ljava/lang/String;
    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    :goto_1
    sget v10, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    goto :goto_0

    .line 54
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "ir":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 55
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 57
    sget v11, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    if-ne v11, v12, :cond_3

    .line 58
    const/4 v11, 0x6

    sput v11, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    :cond_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 60
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    sput v13, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sArmArchitecture:I

    goto :goto_1
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v2, -0x1

    .line 84
    .local v2, "result":I
    :try_start_0
    const-class v3, Lcn/bakery/BKEngine/R$drawable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "clz":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v3, Lcn/bakery/BKEngine/R$drawable;

    invoke-direct {v3}, Lcn/bakery/BKEngine/R$drawable;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 87
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    .local v0, "exists":Z
    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/"

    goto :goto_0
.end method

.method public static getSDKVersionCode()I
    .locals 1

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getStringHash(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 156
    .local v2, "target":[B
    const v0, 0x4e67c6a7    # 9.7213894E8f

    .line 157
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 158
    aget-byte v3, v2, v1

    .line 159
    .local v3, "val":B
    shl-int/lit8 v4, v0, 0x5

    add-int/2addr v4, v3

    shr-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    xor-int/2addr v0, v4

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3    # "val":B
    :cond_0
    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 162
    return v0
.end method

.method public static getTempPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->sTempPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 8
    .param p0, "msec"    # I

    .prologue
    const/4 v7, 0x0

    .line 105
    if-gez p0, :cond_0

    .line 106
    const-string v4, "--:--:--"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 113
    :goto_0
    return-object v4

    .line 108
    :cond_0
    div-int/lit16 v3, p0, 0x3e8

    .line 109
    .local v3, "total":I
    div-int/lit16 v0, v3, 0xe10

    .line 110
    .local v0, "hour":I
    rem-int/lit16 v3, v3, 0xe10

    .line 111
    div-int/lit8 v1, v3, 0x3c

    .line 112
    .local v1, "minute":I
    rem-int/lit8 v2, v3, 0x3c

    .line 113
    .local v2, "second":I
    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static realloc(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p0, "oldArray"    # Ljava/lang/Object;
    .param p1, "newSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 95
    .local v2, "oldSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "elementType":Ljava/lang/Class;
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "newArray":Ljava/lang/Object;
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 99
    .local v3, "preserveLength":I
    if-lez v3, :cond_0

    .line 100
    invoke-static {p0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_0
    return-object v1
.end method

.method public static native setenv(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static simpleHttpGet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 124
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v9, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 127
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 128
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_0

    .line 151
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return v11

    .line 131
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 132
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 133
    .local v2, "contentEncoding":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 134
    .local v6, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "gzip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 136
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    .line 138
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 139
    .local v8, "os":Ljava/io/OutputStream;
    const/16 v12, 0x1000

    new-array v0, v12, [B

    .line 141
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 142
    .local v3, "count":I
    if-gtz v3, :cond_2

    .line 146
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 147
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 151
    const/4 v11, 0x1

    goto :goto_0

    .line 144
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v8, v0, v12, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v0    # "buffer":[B
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "count":I
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/IOException;
    goto :goto_0
.end method
