.class public Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "BufferedAsymmetricBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 64
    iget-object p2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p2

    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method

.method public processBytes([BII)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-gez p3, :cond_1

    .line 123
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 128
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "attempt to process message too long for cipher"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 165
    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method
