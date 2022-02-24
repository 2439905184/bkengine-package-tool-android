.class public abstract Ltv/ouya/console/internal/IUserServiceDefinition$Stub;
.super Landroid/os/Binder;
.source "IUserServiceDefinition.java"

# interfaces
.implements Ltv/ouya/console/internal/IUserServiceDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/internal/IUserServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "tv.ouya.console.internal.IUserServiceDefinition"

.field static final TRANSACTION_requestAddLike:I = 0x5

.field static final TRANSACTION_requestRedeemVoucher:I = 0x9

.field static final TRANSACTION_requestRedeemVoucherForce:I = 0xa

.field static final TRANSACTION_requestRemoveLike:I = 0x6

.field static final TRANSACTION_requestUserAddCreditCard:I = 0x3

.field static final TRANSACTION_requestUserAddCreditCardWithZIP:I = 0x8

.field static final TRANSACTION_requestUserAddsAccount:I = 0x2

.field static final TRANSACTION_requestUserGetCreditCard:I = 0x4

.field static final TRANSACTION_requestUserLikes:I = 0x7

.field static final TRANSACTION_requestUsername:I = 0x1

.field static final TRANSACTION_uploadLogFiles:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p0, p0, v0}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IUserServiceDefinition;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/ouya/console/internal/IUserServiceDefinition;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ltv/ouya/console/internal/IUserServiceDefinition;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v2

    .line 52
    .local v2, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUsername(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    move v0, v9

    .line 53
    goto :goto_0

    .line 57
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_2
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 60
    .local v1, "_arg0":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddsAccount(Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 61
    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_3
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v7

    .local v7, "_arg6":Ltv/ouya/console/internal/IVoidListener;
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v7}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 81
    goto :goto_0

    .line 85
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_4
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/ICreditCardInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/ICreditCardInfoListener;

    move-result-object v1

    .line 88
    .local v1, "_arg0":Ltv/ouya/console/internal/ICreditCardInfoListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserGetCreditCard(Ltv/ouya/console/internal/ICreditCardInfoListener;)V

    move v0, v9

    .line 89
    goto :goto_0

    .line 93
    .end local v1    # "_arg0":Ltv/ouya/console/internal/ICreditCardInfoListener;
    :sswitch_5
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v2

    .line 98
    .local v2, "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestAddLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 99
    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_6
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v2

    .line 108
    .restart local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestRemoveLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 109
    goto/16 :goto_0

    .line 113
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_7
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 116
    .local v1, "_arg0":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserLikes(Ltv/ouya/console/internal/IStringListener;)V

    move v0, v9

    .line 117
    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":Ltv/ouya/console/internal/IStringListener;
    :sswitch_8
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v8

    .local v8, "_arg7":Ltv/ouya/console/internal/IVoidListener;
    move-object v0, p0

    .line 138
    invoke-virtual/range {v0 .. v8}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddCreditCardWithZIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_9
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v2

    .line 148
    .local v2, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestRedeemVoucher(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    move v0, v9

    .line 149
    goto/16 :goto_0

    .line 153
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_a
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestRedeemVoucherForce(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    move v0, v9

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_b
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 166
    .local v1, "_arg0":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->uploadLogFiles(Ltv/ouya/console/internal/IVoidListener;)V

    move v0, v9

    .line 167
    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
