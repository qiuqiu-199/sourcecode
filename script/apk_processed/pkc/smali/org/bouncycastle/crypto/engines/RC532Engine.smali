.class public Lorg/bouncycastle/crypto/engines/RC532Engine;
.super Ljava/lang/Object;
.source "RC532Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private _S:[I

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 50
    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    .line 273
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private decryptBlock([BI[BI)I
    .locals 4

    .line 217
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x4

    .line 218
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result p1

    .line 220
    iget p2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    :goto_0
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    .line 222
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    sub-int/2addr p1, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result p1

    xor-int/2addr p1, v0

    .line 223
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v0

    xor-int/2addr v0, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v2, 0x0

    aget p2, p2, v2

    sub-int/2addr v0, p2

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    .line 227
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget p2, p2, v1

    sub-int/2addr p1, p2

    add-int/lit8 p4, p4, 0x4

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 p1, 0x8

    return p1
.end method

.method private encryptBlock([BI[BI)I
    .locals 4

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    .line 197
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v1, 0x1

    aget p2, p2, v1

    add-int/2addr p1, p2

    move p2, p1

    const/4 p1, 0x1

    .line 199
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    if-gt p1, v2, :cond_0

    xor-int/2addr v0, p2

    .line 201
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    add-int/2addr v0, v2

    xor-int/2addr p2, v0

    .line 202
    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result p2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    add-int/2addr v3, v1

    aget v2, v2, v3

    add-int/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    add-int/lit8 p4, p4, 0x4

    .line 206
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 p1, 0x8

    return p1
.end method

.method private rotateLeft(II)I
    .locals 1

    and-int/lit8 p2, p2, 0x1f

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private rotateRight(II)I
    .locals 1

    and-int/lit8 p2, p2, 0x1f

    ushr-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private setKey([B)V
    .locals 10

    .line 132
    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 134
    :goto_0
    array-length v4, p1

    if-eq v3, v4, :cond_0

    .line 136
    div-int/lit8 v4, v3, 0x4

    aget v5, v0, v4

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    rem-int/lit8 v7, v3, 0x4

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    .line 147
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const v4, -0x481eae9d

    aput v4, p1, v2

    const/4 p1, 0x1

    .line 148
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    .line 150
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    const v6, -0x61c88647

    add-int/2addr v5, v6

    aput v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    array-length p1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v4, v4

    if-le p1, v4, :cond_2

    .line 162
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x3

    goto :goto_2

    .line 166
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v2, p1, :cond_3

    .line 174
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v9, v9, v4

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    invoke-direct {p0, v9, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v5

    aput v5, v8, v4

    .line 175
    aget v8, v0, v7

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    add-int/2addr v6, v5

    invoke-direct {p0, v8, v6}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v6

    aput v6, v0, v7

    add-int/2addr v4, v3

    .line 176
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v8, v8

    rem-int/2addr v4, v8

    add-int/2addr v7, v3

    .line 177
    array-length v8, v0

    rem-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    int-to-byte v0, p1

    .line 282
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 283
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 284
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 285
    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5-32"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 76
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    .line 78
    check-cast p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    .line 80
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    .line 82
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 86
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 88
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    .line 95
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC532 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->decryptBlock([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method