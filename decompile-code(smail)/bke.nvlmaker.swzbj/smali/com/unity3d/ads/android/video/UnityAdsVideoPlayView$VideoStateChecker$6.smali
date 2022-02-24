.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 722
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 724
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3, v8}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1202(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z

    .line 725
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackStarted()V

    .line 726
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3202(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J

    .line 727
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3302(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J

    .line 728
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 729
    .local v0, "bufferingDuration":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 730
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v3, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoPlay(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 734
    .end local v0    # "bufferingDuration":J
    .end local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$3000(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;->this$1:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    iget-object v3, v3, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v3, v4}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 739
    :cond_1
    return-void
.end method
