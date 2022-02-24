.class public Lcom/unity3d/ads/android/view/UnityAdsMainView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsMainView.java"

# interfaces
.implements Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/view/UnityAdsMainView$1;,
        Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;,
        Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;
    }
.end annotation


# static fields
.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

.field private _listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

.field private _webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

.field public videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

.field public webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 50
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 55
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 68
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 50
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 55
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 73
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 50
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 55
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 79
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;
    .param p3, "webBridgeListener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 50
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 55
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 60
    iput-object p2, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 61
    iput-object p3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 62
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->init()V

    .line 63
    return-void
.end method

.method private createVideoPlayerView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 196
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 197
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setId(I)V

    .line 199
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 203
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_webBridgeListener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;-><init>(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;-><init>(Landroid/app/Activity;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 204
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setId(I)V

    .line 205
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void
.end method

.method private destroyVideoPlayerView()V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 188
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->removeFromMainView(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 193
    return-void
.end method

.method private focusToView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 225
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 181
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setId(I)V

    .line 182
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->createWebView()V

    .line 183
    return-void
.end method

.method private removeFromMainView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 211
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V
    .locals 1
    .param p1, "action"    # Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_listener:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;->onMainViewAction(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public afterVideoPlaybackOperations()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->destroyVideoPlayerView()V

    .line 153
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 155
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 157
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 159
    :cond_1
    return-void
.end method

.method public closeAds(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->destroyVideoPlayerView()V

    .line 117
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 118
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->destroy()V

    .line 119
    iput-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 120
    return-void
.end method

.method public fixActivityAttachment()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 103
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method public getViewState()Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 174
    invoke-direct {p0, p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->focusToView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public onBackButtonClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 243
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 248
    :cond_3
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->BackButtonPressed:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_4
    const-string v0, "Prevented back-button"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 309
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 310
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 311
    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 313
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "campaignId"

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    iget-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v2, v3, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 323
    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoEnd:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v2}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 324
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not create JSON"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
    .locals 2
    .param p1, "position"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    .prologue
    .line 303
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z

    .line 305
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->onBackButtonClicked(Landroid/view/View;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoHidden()V
    .locals 8

    .prologue
    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 385
    .restart local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v4, :cond_0

    .line 386
    const-string v4, "bufferingDuration"

    iget-object v5, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getBufferingDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    const-string v4, "eventValue"

    const-string v5, "hidden"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v4, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoAbort(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 391
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v4, :cond_1

    .line 392
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 393
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideVideo()V

    .line 394
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 397
    :cond_1
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 399
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 400
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 401
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 404
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 406
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "campaignId"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "videoCompleted"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 413
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v4}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 414
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackError()V
    .locals 7

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 329
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 330
    sget-object v4, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    const-string v5, "videoError"

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4, v5, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 332
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 333
    .local v1, "errorParams":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v3, "spinnerParams":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 337
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "textKey"

    const-string v5, "videoPlaybackError"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v4, "textKey"

    const-string v5, "buffering"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v4, "campaignId"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 348
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "showError"

    invoke-virtual {v4, v5, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 349
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "videoCompleted"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 350
    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "hideSpinner"

    invoke-virtual {v4, v5, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 353
    :cond_0
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v4, :cond_1

    .line 354
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v5, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 355
    const/4 v4, 0x0

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 357
    :cond_1
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 8

    .prologue
    .line 258
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 260
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .local v3, "params":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 264
    .local v4, "spinnerParams":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "campaignId"

    sget-object v7, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v7}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v6, "textKey"

    const-string v7, "buffering"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    sget-object v6, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoStart:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v6}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 272
    iget-object v6, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 275
    const/4 v5, 0x6

    .line 277
    .local v5, "targetOrientation":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-ge v6, v7, :cond_0

    .line 278
    const/4 v5, 0x0

    .line 280
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 281
    .local v1, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->useDeviceOrientationForVideo()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 285
    const/4 v5, -0x1

    .line 288
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 293
    :cond_2
    iget-object v6, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0, v6}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->focusToView(Landroid/view/View;)V

    .line 295
    iget-object v6, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v6, :cond_3

    .line 296
    iget-object v6, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v7, "hideSpinner"

    invoke-virtual {v6, v7, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 297
    iget-object v6, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v7, "completed"

    invoke-virtual {v6, v7, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 299
    :cond_3
    return-void

    .line 267
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .end local v1    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    .end local v5    # "targetOrientation":I
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Could not create JSON"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoSkip()V
    .locals 6

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
    .restart local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getBufferingDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v3, "eventValue"

    const-string v4, "skip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v3, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoAbort(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 366
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 370
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaignId"

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v4, "videoCompleted"

    invoke-virtual {v3, v4, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 377
    sget-object v3, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v3}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->sendActionToListener(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 378
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Could not create JSON"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWebAppLoaded()V
    .locals 11

    .prologue
    .line 420
    :try_start_0
    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v9}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v8

    .line 421
    .local v8, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v9}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v5

    .line 422
    .local v5, "initData":Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "campaigns"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 423
    .local v1, "campaignArray":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 424
    .local v7, "viewableCampaignArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 425
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 426
    .local v0, "campaign":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "campaignId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 428
    .local v6, "viewableCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v6}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v2, :cond_0

    .line 429
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 435
    .end local v0    # "campaign":Lorg/json/JSONObject;
    .end local v1    # "campaignArray":Lorg/json/JSONArray;
    .end local v2    # "campaignId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "initData":Lorg/json/JSONObject;
    .end local v6    # "viewableCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v7    # "viewableCampaignArray":Lorg/json/JSONArray;
    .end local v8    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :catch_0
    move-exception v9

    .line 436
    :goto_2
    return-void

    .line 424
    .restart local v0    # "campaign":Lorg/json/JSONObject;
    .restart local v1    # "campaignArray":Lorg/json/JSONArray;
    .restart local v2    # "campaignId":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "initData":Lorg/json/JSONObject;
    .restart local v7    # "viewableCampaignArray":Lorg/json/JSONArray;
    .restart local v8    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "campaign":Lorg/json/JSONObject;
    .end local v2    # "campaignId":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "campaigns"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    iget-object v9, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v9, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->initWebApp(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public openAds(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 89
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_2
    const-string v0, "Cannot open, wrong activity"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V
    .locals 3
    .param p1, "state"    # Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .prologue
    const/4 v2, -0x1

    .line 123
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->_currentState:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 126
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$1;->$SwitchMap$com$unity3d$ads$android$view$UnityAdsMainView$UnityAdsMainViewState:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->removeFromMainView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->createVideoPlayerView()V

    .line 135
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
