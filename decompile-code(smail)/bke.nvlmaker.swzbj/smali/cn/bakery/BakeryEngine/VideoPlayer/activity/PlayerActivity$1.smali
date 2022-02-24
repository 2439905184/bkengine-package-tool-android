.class Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;
.super Landroid/os/Handler;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->initializeEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 142
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v7}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    iget-object v7, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v7}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x64

    if-ge v8, v9, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    :cond_2
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-virtual {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->startMediaPlayer()V

    goto :goto_0

    .line 168
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x321

    if-ne v6, v7, :cond_0

    .line 169
    iget-object v6, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v6, v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$202(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Z)Z

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$300(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$002(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;Z)Z

    .line 179
    :cond_3
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    :cond_4
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-virtual {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->startMediaPlayer()V

    goto :goto_0

    .line 185
    :pswitch_5
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$400(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 186
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 187
    .local v1, "length":I
    if-ltz v1, :cond_5

    .line 188
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5, v1}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$502(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;I)I

    .line 189
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$600(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$500(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I

    move-result v6

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getTimeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$700(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$500(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 193
    :cond_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 194
    .local v4, "time":I
    if-ltz v4, :cond_0

    .line 195
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5, v4}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$802(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;I)I

    .line 196
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$900(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$800(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I

    move-result v6

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/helper/SystemUtility;->getTimeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$700(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v6}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$800(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 204
    .end local v1    # "length":I
    .end local v4    # "time":I
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;

    .line 205
    .local v2, "player":Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$1000(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    .line 206
    .local v3, "surface":Landroid/view/SurfaceView;
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-static {v5}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->access$1100(Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;)I

    move-result v0

    .line 207
    .local v0, "ar":I
    iget-object v5, p0, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity$1;->this$0:Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;

    invoke-virtual {v5, v2, v3, v0}, Lcn/bakery/BakeryEngine/VideoPlayer/activity/PlayerActivity;->changeSurfaceSize(Lcn/bakery/BakeryEngine/VideoPlayer/player/AbsMediaPlayer;Landroid/view/SurfaceView;I)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x4001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
