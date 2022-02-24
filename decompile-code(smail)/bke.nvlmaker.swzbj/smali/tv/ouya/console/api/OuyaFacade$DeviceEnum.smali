.class public final enum Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
.super Ljava/lang/Enum;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/ouya/console/api/OuyaFacade$DeviceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

.field public static final enum MOJO:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

.field public static final enum OUYA:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

.field public static final enum UNKNOWN:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    const-string v1, "OUYA"

    invoke-direct {v0, v1, v2}, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->OUYA:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .line 137
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    const-string v1, "MOJO"

    invoke-direct {v0, v1, v3}, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->MOJO:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .line 138
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->UNKNOWN:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    sget-object v1, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->OUYA:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    aput-object v1, v0, v2

    sget-object v1, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->MOJO:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    aput-object v1, v0, v3

    sget-object v1, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->UNKNOWN:Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    aput-object v1, v0, v4

    sput-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->$VALUES:[Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    return-object v0
.end method

.method public static values()[Ltv/ouya/console/api/OuyaFacade$DeviceEnum;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->$VALUES:[Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    invoke-virtual {v0}, [Ltv/ouya/console/api/OuyaFacade$DeviceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/ouya/console/api/OuyaFacade$DeviceEnum;

    return-object v0
.end method
