.class Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;
.super Ljava/lang/Object;
.source "UnityAdsWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method
