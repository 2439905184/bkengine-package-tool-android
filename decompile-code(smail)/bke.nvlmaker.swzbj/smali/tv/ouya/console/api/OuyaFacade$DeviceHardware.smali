.class public Ltv/ouya/console/api/OuyaFacade$DeviceHardware;
.super Ljava/lang/Object;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceHardware"
.end annotation


# instance fields
.field private mDeviceEnum:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

.field private mDeviceName:Ljava/lang/String;

.field private mIsSupported:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ltv/ouya/console/api/OuyaFacade$DeviceEnum;)V
    .locals 0
    .param p1, "isSupported"    # Z
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceEnum"    # Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean p1, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mIsSupported:Z

    .line 147
    iput-object p2, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mDeviceName:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mDeviceEnum:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .line 149
    return-void
.end method


# virtual methods
.method public deviceEnum()Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mDeviceEnum:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    return-object v0
.end method

.method public deviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade$DeviceHardware;->mIsSupported:Z

    return v0
.end method
