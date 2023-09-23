.class public abstract Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;
.super Ljava/lang/Object;
.source "PBESecretKeyEncryptor.java"


# instance fields
.field protected encAlgorithm:I

.field protected passPhrase:[C

.field protected random:Ljava/security/SecureRandom;

.field protected s2k:Lorg/bouncycastle/bcpg/S2K;

.field protected s2kCount:I

.field protected s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    .line 26
    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->passPhrase:[C

    .line 27
    iput-object p4, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_1

    const/16 p1, 0xff

    if-le p3, p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iput p3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kCount:I

    return-void

    .line 32
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2kCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encryptKeyData([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 78
    new-array v0, v0, [B

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 82
    new-instance v1, Lorg/bouncycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kCount:I

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/bcpg/S2K;-><init>(I[BI)V

    iput-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract encryptKeyData([B[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public encryptKeyData([B[B[BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 100
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "encryption of version 3 keys not supported."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithm()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    return v0
.end method

.method public abstract getCipherIV()[B
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getKey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iget v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->passPhrase:[C

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object v0

    return-object v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    return-object v0
.end method
