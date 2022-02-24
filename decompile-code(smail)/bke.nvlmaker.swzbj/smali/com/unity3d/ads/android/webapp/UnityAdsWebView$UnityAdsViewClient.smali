.class Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;
.super Landroid/webkit/WebViewClient;
.source "UnityAdsWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
    .param p2, "x1"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->access$300(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->access$302(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Z)Z

    .line 367
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;->onWebAppLoaded()V

    .line 369
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 380
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to load url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    return v0
.end method
