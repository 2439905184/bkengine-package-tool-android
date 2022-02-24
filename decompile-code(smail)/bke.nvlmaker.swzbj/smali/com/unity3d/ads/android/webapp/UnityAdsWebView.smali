.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
.super Landroid/webkit/WebView;
.source "UnityAdsWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;
    }
.end annotation


# instance fields
.field private _currentWebView:Ljava/lang/String;

.field private _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

.field private _url:Ljava/lang/String;

.field private _webAppLoadComplete:Z

.field private _webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

.field private _webAppLoadLock:Ljava/util/concurrent/locks/Lock;

.field private _webAppLoaded:Z

.field private _webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .param p3, "webBridge"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 39
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 46
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading WebView from URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .param p4, "webBridge"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 39
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 46
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 39
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 46
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 39
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 46
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 39
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 46
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return p1
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .param p4, "webBridge"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .prologue
    .line 228
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 229
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 231
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setupUnityAdsView()V

    .line 232
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->loadUrl(Ljava/lang/String;)V

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 235
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setLongClickable(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method private setupUnityAdsView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 250
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    const-string v3, "_raw.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 252
    const-string v2, "LOAD_NO_CACHE"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 263
    :goto_0
    const/4 v1, 0x0

    .line 264
    .local v1, "appCachePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 271
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 274
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 275
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setVerticalScrollBarEnabled(Z)V

    .line 277
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setClickable(Z)V

    .line 278
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusable(Z)V

    .line 279
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusableInTouchMode(Z)V

    .line 280
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setInitialScale(I)V

    .line 282
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundColor(I)V

    .line 283
    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundResource(I)V

    .line 286
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;

    invoke-direct {v2, p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 287
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;

    invoke-direct {v2, p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 289
    if-eqz v1, :cond_2

    .line 290
    const/4 v0, 0x1

    .line 292
    .local v0, "appCache":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    .line 293
    const/4 v0, 0x0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-wide/32 v4, 0xa00000

    invoke-virtual {v2, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 299
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 302
    .end local v0    # "appCache":Z
    :cond_2
    const-string v2, "Adding javascript interface"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    const-string v3, "unityadsnativebridge"

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    return-void

    .line 255
    .end local v1    # "appCachePath":Ljava/lang/String;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearWebView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 74
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 75
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 77
    return-void
.end method

.method public getWebViewCurrentView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    return-object v0
.end method

.method public initWebApp(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v3, "initData":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "campaignData"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v5, "platform"

    const-string v8, "android"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "advertisingId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 179
    const-string v8, "trackingEnabled"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "advertisingIdMd5":Ljava/lang/String;
    const-string v5, "advertisingTrackingId"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v5, "rawAdvertisingTrackingId"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    .end local v1    # "advertisingIdMd5":Ljava/lang/String;
    :goto_1
    const-string v5, "sdkVersion"

    const-string v8, "1401"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v5, "gameId"

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v5, "screenDensity"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string v5, "screenSize"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v5, "zones"

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getZonesJson()Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 206
    const-string v5, "unityVersion"

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_0
    const-string v5, "softwareVersion"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v5, "deviceType"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const-string v5, "%s%s(%s);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "javascript:unityads."

    aput-object v9, v8, v6

    const-string v6, "init"

    aput-object v6, v8, v7

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "initString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing WebView with JS call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 220
    new-instance v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v5, p0, v4, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    .end local v0    # "advertisingId":Ljava/lang/String;
    .end local v3    # "initData":Lorg/json/JSONObject;
    .end local v4    # "initString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "advertisingId":Ljava/lang/String;
    .restart local v3    # "initData":Lorg/json/JSONObject;
    :cond_2
    move v5, v7

    .line 179
    goto/16 :goto_0

    .line 185
    :cond_3
    :try_start_1
    const-string v5, "deviceId"

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v5, "unknown"

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 188
    const-string v5, "androidId"

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v5, "rawAndroidId"

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_4
    const-string v5, "unknown"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 193
    const-string v5, "serialId"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_5
    const-string v5, "macAddress"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 213
    .end local v0    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Error creating webview init params"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isWebAppLoadComplete()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    return v0
.end method

.method public isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 326
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 328
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string v0, "{}"

    .line 159
    .local v0, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    const-string v2, "%s%s(\"%s\", %s);"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "javascript:unityads."

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "handleNativeEvent"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "javascriptString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send native event to WebApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 164
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v2, p0, v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 311
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 312
    .local v1, "layertype":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1    # "layertype":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not invoke setLayerType"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebAppLoadComplete()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadComplete:Z

    .line 101
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setWebViewCurrentView(Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 113
    return-void
.end method

.method public setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    const-string v1, "{}"

    .line 119
    .local v1, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    const-string v3, "%s%s(\"%s\", %s);"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "javascript:unityads."

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "setView"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "javascriptString":Ljava/lang/String;
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_currentWebView:Ljava/lang/String;

    .line 124
    new-instance v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v3, p0, v2, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send change view to WebApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 127
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    const-string v0, "test"

    .line 130
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v3, "action"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataHasApiActionKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionEqualsWebViewApiOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "open"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDebuggable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runWebViewTests="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testJavaScriptContents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 141
    const-string v3, "action"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-string v3, "open"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running test-javascript: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 148
    new-instance v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-direct {v3, p0, v4, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 153
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void

    .line 132
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "dataString":Ljava/lang/String;
    .restart local v2    # "javascriptString":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public waitForWebAppLoadComplete()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
