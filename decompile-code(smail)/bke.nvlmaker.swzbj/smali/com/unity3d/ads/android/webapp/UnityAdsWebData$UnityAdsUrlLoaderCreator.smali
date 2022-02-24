.class Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
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
    name = "UnityAdsUrlLoaderCreator"
.end annotation


# instance fields
.field private _postBody:Ljava/lang/String;

.field private _queryParams:Ljava/lang/String;

.field private _requestMethod:Ljava/lang/String;

.field private _requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

.field private _retries:I

.field private _url:Ljava/lang/String;

.field final synthetic this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V
    .locals 2
    .param p2, "urlPart1"    # Ljava/lang/String;
    .param p3, "urlPart2"    # Ljava/lang/String;
    .param p4, "requestMethod"    # Ljava/lang/String;
    .param p5, "requestType"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;
    .param p6, "retries"    # I

    .prologue
    const/4 v1, 0x0

    .line 821
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 815
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 816
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 817
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 818
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    .line 819
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    .line 822
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 823
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 824
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 825
    iput-object p5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 826
    iput p6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    .line 827
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 834
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    iget v6, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 835
    .local v0, "loader":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->setPostBody(Ljava/lang/String;)V

    .line 841
    :cond_0
    iget v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 842
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$100(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->this$0:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    .line 845
    return-void
.end method

.method public setPostBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    .line 831
    return-void
.end method
