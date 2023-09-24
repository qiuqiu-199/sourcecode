.class public Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;
.super Ljava/lang/Object;
.source "SshPublicKey.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SshPublicKey"


# instance fields
.field private mPublicKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->mPublicKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;---><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encodeDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 88
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    .line 90
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;

    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 91
    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 92
    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 93
    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 95
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->getPublicKeyBlob()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;--->encodeDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encodeECKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 69
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    .line 71
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->mPublicKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ssh/utils/SshUtils;->getCurveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 74
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;->getPublicKeyBlob()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;--->encodeECKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encodeEdDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 80
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->getEdDSAEncodedPoint()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;-><init>([B)V

    .line 84
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;->getPublicKeyBlob()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;--->encodeEdDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encodeRSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 61
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 65
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;->getPublicKeyBlob()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;--->encodeRSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getEncodedKey()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 44
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->mPublicKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    .line 56
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Unknown key algorithm"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->encodeEdDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->encodeECKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_2
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->encodeDSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_3
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->encodeRSAKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;--->getEncodedKey()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
