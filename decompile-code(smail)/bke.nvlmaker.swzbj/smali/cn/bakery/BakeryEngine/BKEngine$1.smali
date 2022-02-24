.class Lcn/bakery/BakeryEngine/BKEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "BKEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bakery/BakeryEngine/BKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bakery/BakeryEngine/BKEngine;


# direct methods
.method constructor <init>(Lcn/bakery/BakeryEngine/BKEngine;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcn/bakery/BakeryEngine/BKEngine$1;->this$0:Lcn/bakery/BakeryEngine/BKEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    const-string v0, "BKEngine"

    const-string v1, "Terminate Process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->terminateProcess()V

    .line 139
    return-void
.end method
