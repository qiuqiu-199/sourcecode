.class public Lorg/bouncycastle/crypto/signers/X931Signer;
.super Ljava/lang/Object;
.source "X931Signer.java"


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private keyBits:I

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/signers/X931Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 66
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    if-eqz p3, :cond_0

    const/16 p1, 0xbc

    .line 70
    iput p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no valid trailer for digest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearBlock([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 123
    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createSignatureBlock()V
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 178
    iget v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x44

    aput-byte v3, v0, v2

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    iget v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 192
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    const/4 v2, 0x0

    const/16 v3, 0x6b

    aput-byte v3, v0, v2

    add-int/lit8 v0, v1, -0x2

    :goto_1
    if-eqz v0, :cond_1

    .line 195
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    const/16 v3, -0x45

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    add-int/lit8 v1, v1, -0x1

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/X931Signer;->createSignatureBlock()V

    .line 164
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 165
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 104
    check-cast p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 106
    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 108
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->keyBits:I

    .line 110
    iget p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->keyBits:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    .line 112
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/X931Signer;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p1, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 219
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_1

    .line 236
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/X931Signer;->createSignatureBlock()V

    .line 238
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    .line 242
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 243
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    return v0

    :cond_1
    return v0

    :catch_0
    return v0
.end method
