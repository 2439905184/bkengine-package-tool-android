.class public Ltv/ouya/console/api/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOB_FORMAT:Ljava/text/DateFormat;

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private dateOfBirth:Ljava/util/Calendar;

.field private email:Ljava/lang/String;

.field private emailOptOut:Z

.field private founder:Z

.field private gender:I

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ltv/ouya/console/api/UserInfo$1;

    invoke-direct {v0}, Ltv/ouya/console/api/UserInfo$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltv/ouya/console/api/UserInfo;->DOB_FORMAT:Ljava/text/DateFormat;

    .line 49
    sget-object v0, Ltv/ouya/console/api/UserInfo;->DOB_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "founder"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    .line 66
    iput-boolean p3, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "founder"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "password2"    # Ljava/lang/String;
    .param p6, "emailOptOut"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Ltv/ouya/console/api/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    iput-object p4, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    .line 72
    iput-boolean p6, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    .line 73
    return-void
.end method

.method static synthetic access$002(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltv/ouya/console/api/UserInfo;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;

    .prologue
    .line 12
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$302(Ltv/ouya/console/api/UserInfo;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 12
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$402(Ltv/ouya/console/api/UserInfo;I)I
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    return p1
.end method

.method static synthetic access$502(Ltv/ouya/console/api/UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    return p1
.end method

.method static synthetic access$602(Ltv/ouya/console/api/UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Ltv/ouya/console/api/UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 147
    check-cast v0, Ltv/ouya/console/api/UserInfo;

    .line 149
    .local v0, "userInfo":Ltv/ouya/console/api/UserInfo;
    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 150
    :cond_6
    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 151
    :cond_9
    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 152
    :cond_c
    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    iget-object v4, v0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    if-nez v3, :cond_d

    .line 153
    :cond_f
    iget-boolean v3, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/UserInfo;->founder:Z

    if-eq v3, v4, :cond_10

    move v1, v2

    goto :goto_0

    .line 154
    :cond_10
    iget-boolean v3, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDateOfBirth()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    return v0
.end method

.method public getGenderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Ltv/ouya/console/api/UserInfo;->getGender()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "male"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v0, "female"

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 162
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 163
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 161
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 162
    goto :goto_1

    :cond_3
    move v2, v1

    .line 163
    goto :goto_2
.end method

.method public isEmailOptOut()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    return v0
.end method

.method public isFounder()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    return v0
.end method

.method public setDateOfBirth(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "dateOfBirth"    # Ljava/util/Calendar;

    .prologue
    .line 119
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    .line 120
    return-void
.end method

.method public setEmail(Ljava/lang/String;)Ltv/ouya/console/api/UserInfo;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setEmailOptOut(Z)V
    .locals 0
    .param p1, "emailOptOut"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    .line 112
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 139
    iput p1, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    .line 140
    return-void
.end method

.method public setPassword(Ljava/lang/String;)Ltv/ouya/console/api/UserInfo;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Ltv/ouya/console/api/UserInfo;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x27

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserInfo{username=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", email=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", password=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", dateOfBirth=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", gender=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", founder=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", emailOptOut=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget v0, p0, Ltv/ouya/console/api/UserInfo;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Ltv/ouya/console/api/UserInfo;->founder:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    iget-boolean v0, p0, Ltv/ouya/console/api/UserInfo;->emailOptOut:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->dateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 196
    goto :goto_1

    :cond_2
    move v2, v3

    .line 197
    goto :goto_2
.end method
