.class Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsCancelUrlLoaderRunner"
.end annotation


# instance fields
.field private _loader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 1
    .param p2, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;->_loader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 851
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;->_loader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .line 852
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;->_loader:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling urlLoader got exception: "

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
