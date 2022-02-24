.class Ltv/ouya/console/api/OuyaInputMapper$OuyaDeviceListener;
.super Ljava/lang/Object;
.source "OuyaInputMapper.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaInputMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OuyaDeviceListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 5
    .param p1, "deviceId"    # I

    .prologue
    .line 46
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$000()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    invoke-static {p1}, Ltv/ouya/console/api/OuyaController;->getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v1

    .line 48
    .local v1, "ouyaController":Ltv/ouya/console/api/OuyaController;
    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$100()Ltv/ouya/console/api/MappingParser;

    move-result-object v2

    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$100()Ltv/ouya/console/api/MappingParser;

    move-result-object v3

    invoke-virtual {v1}, Ltv/ouya/console/api/OuyaController;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltv/ouya/console/api/MappingParser;->getIdByString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ltv/ouya/console/api/MappingParser;->getController(I)Ltv/ouya/console/api/MappingParser$Controller;

    move-result-object v0

    .line 50
    .local v0, "controller":Ltv/ouya/console/api/MappingParser$Controller;
    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$000()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .end local v0    # "controller":Ltv/ouya/console/api/MappingParser$Controller;
    .end local v1    # "ouyaController":Ltv/ouya/console/api/OuyaController;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v1    # "ouyaController":Ltv/ouya/console/api/OuyaController;
    :cond_1
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInputDeviceAdded device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 67
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Ltv/ouya/console/api/OuyaInputMapper;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    :cond_0
    return-void
.end method
