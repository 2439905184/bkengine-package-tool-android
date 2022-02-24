.class Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;
.super Ljava/lang/Object;
.source "UnityAdsWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsJavascriptRunner"
.end annotation


# instance fields
.field private _jsString:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1
    .param p2, "jsString"    # Ljava/lang/String;
    .param p3, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x0

    .line 397
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_jsString:Ljava/lang/String;

    .line 395
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_webView:Landroid/webkit/WebView;

    .line 398
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_jsString:Ljava/lang/String;

    .line 399
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_webView:Landroid/webkit/WebView;

    .line 400
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 404
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_jsString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 406
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 409
    :try_start_1
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/ValueCallback;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 410
    .local v1, "evaluateJavascript":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_webView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_jsString:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    .end local v1    # "evaluateJavascript":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Could not invoke evaluateJavascript"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 420
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Error while processing JavaScriptString!"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;->_jsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 424
    :cond_1
    const-string v2, "Could not process JavaScript, the string is NULL"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
