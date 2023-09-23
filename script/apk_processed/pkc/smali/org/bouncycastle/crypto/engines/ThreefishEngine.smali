.class public Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.super Ljava/lang/Object;
.source "ThreefishEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
    }
.end annotation


# static fields
.field private static MOD17:[I

.field private static MOD3:[I

.field private static MOD5:[I

.field private static MOD9:[I


# instance fields
.field private blocksizeBytes:I

.field private blocksizeWords:I

.field private cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

.field private currentBlock:[J

.field private forEncryption:Z

.field private kw:[J

.field private t:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x50

    .line 69
    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    .line 70
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    .line 71
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    .line 72
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    const/4 v0, 0x0

    .line 76
    :goto_0
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    rem-int/lit8 v2, v0, 0x11

    aput v2, v1, v0

    .line 79
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    .line 80
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    .line 81
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 103
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    .line 125
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    .line 126
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    .line 127
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    .line 133
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;-><init>([J[J)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    goto :goto_0

    .line 141
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;-><init>([J[J)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;-><init>([J[J)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    :goto_0
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    return-object v0
.end method

.method public static bytesToWord([BI)J
    .locals 9

    add-int/lit8 v0, p1, 0x8

    .line 356
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 359
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 365
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0xff

    and-long v5, v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 366
    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v7, v0, v3

    const/16 v0, 0x8

    shl-long v0, v7, v0

    or-long v7, v5, v0

    add-int/lit8 v0, p1, 0x1

    .line 367
    aget-byte p1, p0, p1

    int-to-long v1, p1

    and-long v5, v1, v3

    const/16 p1, 0x10

    shl-long v1, v5, p1

    or-long v5, v7, v1

    add-int/lit8 p1, v0, 0x1

    .line 368
    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v7, v0, v3

    const/16 v0, 0x18

    shl-long v0, v7, v0

    or-long v7, v5, v0

    add-int/lit8 v0, p1, 0x1

    .line 369
    aget-byte p1, p0, p1

    int-to-long v1, p1

    and-long v5, v1, v3

    const/16 p1, 0x20

    shl-long v1, v5, p1

    or-long v5, v7, v1

    add-int/lit8 p1, v0, 0x1

    .line 370
    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v7, v0, v3

    const/16 v0, 0x28

    shl-long v0, v7, v0

    or-long v7, v5, v0

    add-int/lit8 v0, p1, 0x1

    .line 371
    aget-byte p1, p0, p1

    int-to-long v1, p1

    and-long v5, v1, v3

    const/16 p1, 0x30

    shl-long v1, v5, p1

    or-long v5, v7, v1

    .line 372
    aget-byte p0, p0, v0

    int-to-long p0, p0

    and-long v0, p0, v3

    const/16 p0, 0x38

    shl-long p0, v0, p0

    or-long v0, v5, p0

    return-wide v0
.end method

.method static rotlXor(JIJ)J
    .locals 4

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long v2, v0, p0

    xor-long p0, v2, p3

    return-wide p0
.end method

.method private setKey([J)V
    .locals 9

    .line 230
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v0, v1, :cond_0

    .line 232
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish key must be same size as block ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " words)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide v0, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v5, p1, v0

    aput-wide v5, v1, v0

    .line 248
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v5, v1, v0

    xor-long v7, v3, v5

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v7

    goto :goto_0

    .line 250
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aput-wide v3, p1, v0

    .line 251
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setTweak([J)V
    .locals 10

    .line 256
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 258
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tweak must be 2 words."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    aput-wide v3, v0, v2

    .line 265
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    aput-wide v4, v0, v3

    .line 266
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v6, v0, v3

    xor-long v8, v4, v6

    aput-wide v8, p1, v1

    .line 267
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v4, v1, v2

    aput-wide v4, p1, v0

    .line 268
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, v1, v3

    aput-wide v2, p1, v0

    return-void
.end method

.method public static wordToBytes(J[BI)V
    .locals 3

    add-int/lit8 v0, p3, 0x8

    .line 383
    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 386
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 390
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 391
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 392
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 393
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 394
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 395
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 396
    aput-byte v1, p2, p3

    const/16 p3, 0x38

    shr-long/2addr p0, p3

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 397
    aput-byte p0, p2, v0

    return-void
.end method

.method static xorRotr(JIJ)J
    .locals 2

    xor-long v0, p0, p3

    ushr-long p0, v0, p2

    neg-int p2, p2

    shl-long p2, v0, p2

    or-long v0, p0, p2

    return-wide v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 164
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    check-cast p2, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    .line 167
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 168
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getTweak()[B

    move-result-object p2

    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_6

    .line 172
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    move-object p2, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 186
    array-length v3, v0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-eq v3, v4, :cond_1

    .line 188
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Threefish key must be same size as block ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v3, v3, [J

    const/4 v4, 0x0

    .line 192
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    mul-int/lit8 v5, v4, 0x8

    .line 194
    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v1

    :cond_3
    if-eqz p2, :cond_5

    .line 199
    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    .line 201
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Threefish tweak must be 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x2

    .line 203
    new-array v1, v0, [J

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v4

    aput-wide v4, v1, v2

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v4

    const/4 p2, 0x1

    aput-wide v4, v1, p2

    .line 205
    :cond_5
    invoke-virtual {p0, p1, v3, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    return-void

    .line 177
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to Threefish init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
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

.method public init(Z[J[J)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setKey([J)V

    :cond_0
    if-eqz p3, :cond_1

    .line 224
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setTweak([J)V

    :cond_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 289
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 291
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 296
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ge v1, v2, :cond_2

    .line 301
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    shr-int/lit8 v3, v1, 0x3

    add-int v4, p2, v1

    invoke-static {p1, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 303
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    .line 304
    :goto_1
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ge v0, p1, :cond_3

    .line 306
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    shr-int/lit8 p2, v0, 0x3

    aget-wide v1, p1, p2

    add-int p1, p4, v0

    invoke-static {v1, v2, p3, p1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 309
    :cond_3
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return p1
.end method

.method public processBlock([J[J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 326
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Threefish engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_0
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v0, v1, :cond_1

    .line 331
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_1
    array-length v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v0, v1, :cond_2

    .line 335
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->encryptBlock([J[J)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->decryptBlock([J[J)V

    .line 347
    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
