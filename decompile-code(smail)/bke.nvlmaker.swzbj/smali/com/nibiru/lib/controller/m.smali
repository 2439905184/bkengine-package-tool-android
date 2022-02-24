.class final Lcom/nibiru/lib/controller/m;
.super Ljava/lang/Object;


# instance fields
.field private bt:Z

.field private mContext:Landroid/content/Context;

.field versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nibiru/lib/controller/m;->versionCode:I

    iput-object p1, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "modulus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    const-string v2, "\\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "public"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "\\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/nibiru/lib/controller/m;->versionCode:I

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/controller/m;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nibiru/lib/BTUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "413e35df915ee8544609b85cab6fb4d8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.nibiru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "922169d4a8d08ca1b6a7d392bbdd6863"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/m;->bt:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NIBIRU SDK"

    const-string v1, "NO PASS VALIDATION SERVICE: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "NIBIRU SDK"

    const-string v1, "NO PASS VALIDATION SERVICE: 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    goto :goto_0

    :cond_3
    const-string v0, "NIBIRU SDK"

    const-string v1, "PASS VALIDATION SERVICE: 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nibiru/lib/controller/m;->bt:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.nibiru"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.nibiru.play"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/m;->a(Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "com.nibiru can\'t find"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "com.nibiru.play can\'t find"

    invoke-static {v1}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "com.nibiru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/nibiru/lib/controller/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nibiru/lib/controller/m;->a(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "com.nibiru.play can\'t find"

    invoke-static {v0}, Lcom/nibiru/lib/controller/GlobalLog;->d(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/nibiru/lib/controller/m;->bt:Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
