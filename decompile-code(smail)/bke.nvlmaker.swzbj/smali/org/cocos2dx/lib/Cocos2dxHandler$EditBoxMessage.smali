.class public Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "inputMode"    # I
    .param p4, "inputFlag"    # I
    .param p5, "returnType"    # I
    .param p6, "maxLength"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 140
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    .line 141
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    .line 142
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->returnType:I

    .line 143
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    .line 144
    return-void
.end method
