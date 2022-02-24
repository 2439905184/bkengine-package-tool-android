.class Lorg/cocos2dx/lib/GameControllerActivity$1;
.super Ljava/lang/Object;
.source "GameControllerActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/GameControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/GameControllerActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/GameControllerActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerActivity$1;->this$0:Lorg/cocos2dx/lib/GameControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAxisEvent(Ljava/lang/String;IIFZ)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "controller"    # I
    .param p3, "axisID"    # I
    .param p4, "value"    # F
    .param p5, "isAnalog"    # Z

    .prologue
    .line 137
    invoke-static {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/GameControllerAdapter;->onAxisEvent(Ljava/lang/String;IIFZ)V

    .line 138
    return-void
.end method

.method public onButtonEvent(Ljava/lang/String;IIZFZ)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "controller"    # I
    .param p3, "button"    # I
    .param p4, "isPressed"    # Z
    .param p5, "value"    # F
    .param p6, "isAnalog"    # Z

    .prologue
    .line 131
    invoke-static/range {p1 .. p6}, Lorg/cocos2dx/lib/GameControllerAdapter;->onButtonEvent(Ljava/lang/String;IIZFZ)V

    .line 132
    return-void
.end method

.method public onConnected(Ljava/lang/String;I)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "controller"    # I

    .prologue
    .line 142
    invoke-static {p1, p2}, Lorg/cocos2dx/lib/GameControllerAdapter;->onConnected(Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;I)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "controller"    # I

    .prologue
    .line 147
    invoke-static {p1, p2}, Lorg/cocos2dx/lib/GameControllerAdapter;->onDisconnected(Ljava/lang/String;I)V

    .line 148
    return-void
.end method
