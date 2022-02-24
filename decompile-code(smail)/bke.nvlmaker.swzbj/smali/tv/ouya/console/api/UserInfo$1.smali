.class final Ltv/ouya/console/api/UserInfo$1;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltv/ouya/console/api/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/UserInfo$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 19
    new-instance v2, Ltv/ouya/console/api/UserInfo;

    invoke-direct {v2}, Ltv/ouya/console/api/UserInfo;-><init>()V

    .line 21
    .local v2, "info":Ltv/ouya/console/api/UserInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$002(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$102(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$202(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 25
    .local v0, "birthTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 26
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$302(Ltv/ouya/console/api/UserInfo;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 27
    invoke-static {v2}, Ltv/ouya/console/api/UserInfo;->access$300(Ltv/ouya/console/api/UserInfo;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$402(Ltv/ouya/console/api/UserInfo;I)I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Ltv/ouya/console/api/UserInfo;->access$502(Ltv/ouya/console/api/UserInfo;Z)Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-static {v2, v4}, Ltv/ouya/console/api/UserInfo;->access$602(Ltv/ouya/console/api/UserInfo;Z)Z

    .line 33
    return-object v2

    :cond_1
    move v3, v5

    .line 30
    goto :goto_0

    :cond_2
    move v4, v5

    .line 31
    goto :goto_1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/UserInfo$1;->newArray(I)[Ltv/ouya/console/api/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/UserInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    new-array v0, p1, [Ltv/ouya/console/api/UserInfo;

    return-object v0
.end method
