.class public Lcn/bakery/BakeryEngine/BKEngine;
.super Lorg/cocos2dx/lib/GameControllerActivity;
.source "BKEngine.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# static fields
.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "NOTIFICATION_DELETED"

.field static NOTIFY_ID:I


# instance fields
.field private _isShowingAds:Z

.field private _unityAdsReady:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const v0, 0xbfc23a

    sput v0, Lcn/bakery/BakeryEngine/BKEngine;->NOTIFY_ID:I

    .line 314
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 315
    const-string v0, "BKEngine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/cocos2dx/lib/GameControllerActivity;-><init>()V

    .line 134
    new-instance v0, Lcn/bakery/BakeryEngine/BKEngine$1;

    invoke-direct {v0, p0}, Lcn/bakery/BakeryEngine/BKEngine$1;-><init>(Lcn/bakery/BakeryEngine/BKEngine;)V

    iput-object v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->receiver:Landroid/content/BroadcastReceiver;

    .line 333
    iput-boolean v1, p0, Lcn/bakery/BakeryEngine/BKEngine;->_isShowingAds:Z

    .line 379
    iput-boolean v1, p0, Lcn/bakery/BakeryEngine/BKEngine;->_unityAdsReady:Z

    return-void
.end method


# virtual methods
.method public getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 169
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Cannot get the version of our own package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "sd_default":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getStoragesList()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 188
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "sd_default":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 190
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 193
    .local v9, "runtime":Ljava/lang/Runtime;
    const-string v11, "mount"

    invoke-virtual {v9, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 194
    .local v8, "proc":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 195
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 198
    .local v6, "mount":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 200
    const-string v11, "secure"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 202
    const-string v11, "asec"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 204
    const-string v11, "fat"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "fuse"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 205
    :cond_2
    const-string v11, "BKEngine"

    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "columns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v11, v1

    if-le v11, v13, :cond_1

    .line 208
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x1

    aget-object v11, v1, v11

    const-string v12, "/mnt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v1, v11

    const-string v12, "/storage"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 211
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 213
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    :cond_4
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 219
    .end local v1    # "columns":[Ljava/lang/String;
    :cond_5
    const-string v11, "\\*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 223
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "mount":Ljava/lang/String;
    .end local v8    # "proc":Ljava/lang/Process;
    .end local v9    # "runtime":Ljava/lang/Runtime;
    .end local v10    # "sd_default":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "BKEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getStoragesList() failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 231
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcn/bakery/BakeryEngine/BKEngine;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "deviceId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 233
    invoke-static {}, Lcn/bakery/BakeryEngine/BKEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 234
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "android_id"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "androidId":Ljava/lang/String;
    const-string v5, "9774d56d682e549c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    const-string v5, "utf8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v4

    .line 243
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .local v4, "uuid":Ljava/util/UUID;
    :goto_0
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v4    # "uuid":Ljava/util/UUID;
    :goto_1
    return-object v5

    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "deviceId":Ljava/lang/String;
    :cond_0
    move-object v5, v6

    .line 238
    goto :goto_1

    .line 241
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v5, "utf8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "uuid":Ljava/util/UUID;
    goto :goto_0

    .line 244
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v4    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BKEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUuid() failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 246
    goto :goto_1
.end method

.method public hideTaskbarNotification()V
    .locals 2

    .prologue
    .line 161
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcn/bakery/BakeryEngine/BKEngine;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 162
    .local v0, "NotificationManager":Landroid/app/NotificationManager;
    sget v1, Lcn/bakery/BakeryEngine/BKEngine;->NOTIFY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 163
    return-void
.end method

.method public initUnityAds(Ljava/lang/String;)V
    .locals 3
    .param p1, "gameid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    const-string v0, "BKEngine"

    const-string v1, "Init UnityAds Debug"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "16"

    invoke-static {p0, v0, p0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 325
    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 326
    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAds;->setTestMode(Z)V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "BKEngine"

    const-string v1, "Init UnityAds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {p0, p1, p0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    goto :goto_0
.end method

.method public isNetworkConnected()Z
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcn/bakery/BakeryEngine/BKEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 254
    .local v2, "mManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 255
    .local v1, "mInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    .line 257
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUnityAdsReady()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->_unityAdsReady:Z

    return v0
.end method

.method public native nativeInitCallbacks()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 303
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/GameControllerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 304
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/GameControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 75
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->nativeInitCallbacks()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/BKEngine;->connectController(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/BKEngine;->connectController(I)V

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/BKEngine;->connectController(I)V

    .line 82
    return-void
.end method

.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->_unityAdsReady:Z

    .line 382
    const-string v0, "BKEngine"

    const-string v1, "UnityAds onFetchCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method public onFetchFailed()V
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->_unityAdsReady:Z

    .line 387
    const-string v0, "BKEngine"

    const-string v1, "UnityAds onFetchFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/GameControllerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->_isShowingAds:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bakery/BakeryEngine/BKEngine;->_isShowingAds:Z

    .line 284
    const-string v0, " 播放广告中"

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/BKEngine;->showTaskbarNotification(Ljava/lang/String;)V

    .line 289
    :goto_0
    invoke-super {p0}, Lorg/cocos2dx/lib/GameControllerActivity;->onPause()V

    .line 290
    return-void

    .line 286
    :cond_0
    const-string v0, " 已暂停"

    invoke-virtual {p0, v0}, Lcn/bakery/BakeryEngine/BKEngine;->showTaskbarNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->hideTaskbarNotification()V

    .line 296
    invoke-super {p0}, Lorg/cocos2dx/lib/GameControllerActivity;->onResume()V

    .line 297
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 298
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 375
    const-string v0, "BKEngine"

    const-string v1, "UnityAds onVideoCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "BKEngine"

    const-string v1, "UnityAds onVideoStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v1, "web":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcn/bakery/BakeryEngine/BKEngine;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public playVideo(Ljava/lang/String;III)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "location"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 86
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 87
    const-string v3, "BKEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVideo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v2, "in":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "file"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v3, "offset"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v3, "length"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    const-class v3, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v2}, Lcn/bakery/BakeryEngine/BKEngine;->startActivity(Landroid/content/Intent;)V

    .line 99
    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcn/bakery/BakeryEngine/BKEngine;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BKEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVideo error:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/GameControllerActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public showTaskbarNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "applicationName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BKEngine v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 点击恢复\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcn/bakery/BakeryEngine/BKEngine;->showTaskbarNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public showTaskbarNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ticker"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v3, "NOTIFICATION_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "deleteIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcn/bakery/BakeryEngine/BKEngine;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "NOTIFICATION_DELETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcn/bakery/BakeryEngine/BKEngine;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcn/bakery/BakeryEngine/BKEngine;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    .local v0, "NotificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020008

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 154
    .local v2, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcn/bakery/BakeryEngine/BKEngine;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p0, p2, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 156
    sget v3, Lcn/bakery/BakeryEngine/BKEngine;->NOTIFY_ID:I

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 157
    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/GameControllerActivity;->showToastLong(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public showToastShort(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/GameControllerActivity;->showToastShort(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public showUnityAds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "zoneid"    # Ljava/lang/String;
    .param p2, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 337
    const-string v1, "BKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to show UnityAds z["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] , i["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {p1, p2}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    :cond_0
    :goto_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "BKEngine"

    const-string v2, "Show UnityAds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput-boolean v4, p0, Lcn/bakery/BakeryEngine/BKEngine;->_isShowingAds:Z

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v0, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "noOfferScreen"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v1, "openAnimated"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "muteVideoSounds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "useDeviceOrientationForVideo"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    .line 356
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 339
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const-string v1, "BKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to show UnityAds z["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    goto :goto_0
.end method
