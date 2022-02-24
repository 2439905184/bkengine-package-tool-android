.class final enum Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
.super Ljava/lang/Enum;
.source "UnityAdsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/cache/UnityAdsDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnityAdsDownloadEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

.field public static final enum DownloadCancelled:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

.field public static final enum DownloadCompleted:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    const-string v1, "DownloadCompleted"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCompleted:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    new-instance v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    const-string v1, "DownloadCancelled"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCancelled:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCompleted:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->DownloadCancelled:Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->$VALUES:[Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->$VALUES:[Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/cache/UnityAdsDownloader$UnityAdsDownloadEventType;

    return-object v0
.end method
