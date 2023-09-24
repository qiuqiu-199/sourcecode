.class public Lorg/bouncycastle/crypto/modes/SICBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SkippingStreamCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 38
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 39
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 40
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 41
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private checkCounter()V
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 143
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 113
    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 115
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 117
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    :cond_1
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_4

    .line 52
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 53
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 55
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 p1, p1, 0x2

    const/16 v0, 0x8

    if-le v0, p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v0, p1, 0x2

    .line 62
    :cond_1
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v1

    sub-int/2addr p1, v1

    if-le p1, v0, :cond_2

    .line 64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 73
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    return-void

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 94
    iget v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 96
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 238
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 240
    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method
