.class final enum Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
.super Ljava/lang/Enum;
.source "UnityAdsWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnityAdsWebEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum CloseView:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum InitComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum LoadComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum NavigateTo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum Orientation:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum PauseVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum PlayStore:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

.field public static final enum PlayVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "PlayVideo"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PlayVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "PauseVideo"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PauseVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "CloseView"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->CloseView:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "LoadComplete"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->LoadComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "InitComplete"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->InitComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "Orientation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->Orientation:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "PlayStore"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PlayStore:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const-string v1, "NavigateTo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->NavigateTo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PlayVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PauseVideo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->CloseView:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->LoadComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->InitComplete:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->Orientation:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->PlayStore:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->NavigateTo:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->$VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->$VALUES:[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "retVal":Ljava/lang/String;
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$1;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebBridge$UnityAdsWebEvent:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    const-string v0, "playVideo"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "pauseVideo"

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const-string v0, "close"

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const-string v0, "loadComplete"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_4
    const-string v0, "initComplete"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_5
    const-string v0, "orientation"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_6
    const-string v0, "appStore"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_7
    const-string v0, "navigateTo"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
