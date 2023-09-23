.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$RIPEMD256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$RIPEMD128;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$RIPEMD160;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$MD5;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$MD4;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$MD2;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA512_256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA512_224;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA384;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA224;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$SHA1;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 36
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->initSign(Ljava/security/PrivateKey;)V

    .line 55
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->initVerify(Ljava/security/PublicKey;)V

    .line 46
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->update([B)V

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 91
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->update([B)V

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;->engine:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;->verify([B)Z

    move-result p1

    return p1
.end method
