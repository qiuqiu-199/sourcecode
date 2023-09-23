.class public abstract Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
.super Ljava/lang/Object;
.source "SecurityProblem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;,
        Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 34
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;->isIdentifiable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    const-string v1, "SHA1"

    .line 44
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 45
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;--->getIdentifier()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isIdentifiable()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;--->isIdentifiable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
