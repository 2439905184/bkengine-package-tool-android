.class Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;
.super Landroid/os/Handler;
.source "InputManagerV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PollingMessageHandler"
.end annotation


# instance fields
.field private final mInputManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)V
    .locals 1
    .param p1, "im"    # Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;->mInputManager:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0xbb8

    const/4 v10, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v5, p0, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;->mInputManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;

    .line 59
    .local v2, "imv":Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;
    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 61
    .local v6, "time":J
    invoke-static {v2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->access$000(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 62
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 63
    invoke-static {v2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->access$000(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 64
    .local v3, "lastContact":[J
    if-eqz v3, :cond_1

    .line 65
    aget-wide v8, v3, v10

    sub-long v8, v6, v8

    cmp-long v5, v8, v12

    if-lez v5, :cond_1

    .line 68
    invoke-static {v2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->access$000(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 69
    .local v1, "id":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-nez v5, :cond_2

    .line 71
    const/4 v5, 0x2

    invoke-static {v2, v5, v1}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->access$100(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;II)V

    .line 72
    invoke-static {v2}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;->access$000(Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    .end local v1    # "id":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .restart local v1    # "id":I
    :cond_2
    aput-wide v6, v3, v10

    goto :goto_2

    .line 79
    .end local v1    # "id":I
    .end local v3    # "lastContact":[J
    :cond_3
    const/16 v5, 0x65

    invoke-virtual {p0, v5, v12, v13}, Lorg/cocos2dx/lib/inputmanagercompat/InputManagerV9$PollingMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
