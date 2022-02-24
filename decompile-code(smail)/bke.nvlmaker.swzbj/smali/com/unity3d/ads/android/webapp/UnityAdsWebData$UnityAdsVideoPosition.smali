.class public final enum Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
.super Ljava/lang/Enum;
.source "UnityAdsWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsVideoPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "Start"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "FirstQuartile"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "MidPoint"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "ThirdQuartile"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "End"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->$VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->$VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "output":Ljava/lang/String;
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsVideoPosition:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    const-string v0, "first_quartile"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "mid_point"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "third_quartile"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "video_end"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_4
    const-string v0, "video_start"

    .line 91
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
