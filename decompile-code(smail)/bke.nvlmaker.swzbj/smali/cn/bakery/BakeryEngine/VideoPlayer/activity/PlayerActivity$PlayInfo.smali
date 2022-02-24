.class Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;
.super Ljava/lang/Object;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayInfo"
.end annotation


# instance fields
.field public mFile:Ljava/lang/String;

.field public mLength:I

.field public mOffset:I

.field public mType:I

.field final synthetic this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;


# direct methods
.method public constructor <init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Ljava/lang/String;III)V
    .locals 0
    .param p2, "f"    # Ljava/lang/String;
    .param p3, "t"    # I
    .param p4, "o"    # I
    .param p5, "l"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    .line 76
    iput p3, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mType:I

    .line 77
    iput p4, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mOffset:I

    .line 78
    iput p5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mLength:I

    .line 79
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mFile:Ljava/lang/String;

    .line 85
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mOffset:I

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$PlayInfo;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method
