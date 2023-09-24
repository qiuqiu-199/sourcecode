.class public Lorg/bouncycastle/crypto/modes/OCBBlockCipher;
.super Ljava/lang/Object;
.source "OCBBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private Checksum:[B

.field private KtopInput:[B

.field private L:Ljava/util/Vector;

.field private L_Asterisk:[B

.field private L_Dollar:[B

.field private OffsetHASH:[B

.field private OffsetMAIN:[B

.field private OffsetMAIN_0:[B

.field private Stretch:[B

.field private Sum:[B

.field private forEncryption:Z

.field private hashBlock:[B

.field private hashBlockCount:J

.field private hashBlockPos:I

.field private hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private mainBlock:[B

.field private mainBlockCount:J

.field private mainBlockPos:I

.field private mainCipher:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    const/16 v0, 0x18

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    const/16 v0, 0x10

    .line 55
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    .line 65
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' must have a block size of 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'mainCipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2
    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'mainCipher\' must have a block size of 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' and \'mainCipher\' must be the same algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_4
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 99
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method

.method protected static OCB_double([B)[B
    .locals 4

    const/16 v0, 0x10

    .line 542
    new-array v0, v0, [B

    .line 543
    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->shiftLeft([B[B)I

    move-result p0

    const/16 v1, 0xf

    .line 548
    aget-byte v2, v0, v1

    rsub-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x3

    const/16 v3, 0x87

    ushr-int p0, v3, p0

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method protected static OCB_extend([BI)V
    .locals 1

    const/16 v0, -0x80

    .line 555
    aput-byte v0, p0, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 558
    aput-byte v0, p0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static OCB_ntz(J)I
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/16 p0, 0x40

    return p0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v3, v5, v0

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    ushr-long/2addr p0, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected static shiftLeft([B[B)I
    .locals 4

    const/16 v0, 0x10

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 584
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 585
    aput-byte v1, p1, v0

    ushr-int/lit8 v1, v2, 0x7

    and-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected static xor([B[B)V
    .locals 3

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    .line 595
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected clear([B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 447
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 347
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 349
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v0, v2, :cond_0

    .line 351
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 354
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 355
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 361
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    if-lez v2, :cond_2

    .line 363
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 364
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    .line 370
    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    if-lez v2, :cond_5

    .line 372
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_3

    .line 374
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 375
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 378
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    const/16 v2, 0x10

    .line 380
    new-array v2, v2, [B

    .line 381
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-interface {v3, v4, v1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 383
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 385
    array-length v2, p1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_4

    .line 387
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v2, :cond_5

    .line 393
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 394
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 401
    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 402
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 403
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 404
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 406
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 407
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 414
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_7

    .line 416
    array-length v0, p1

    add-int/2addr p2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v3, p2

    if-ge v0, v3, :cond_6

    .line 418
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v2, p1

    goto :goto_1

    .line 427
    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_8

    .line 429
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "mac check in OCB failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->reset(Z)V

    return v2
.end method

.method protected getLSub(I)[B
    .locals 2

    .line 453
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 262
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/2addr p1, v0

    .line 263
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1

    .line 267
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    .line 272
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/2addr p1, v0

    .line 273
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v0, :cond_1

    .line 275
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    .line 281
    :cond_1
    rem-int/lit8 v0, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    .line 116
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 122
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/16 v3, 0x10

    if-eqz v2, :cond_2

    .line 124
    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 126
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 127
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 129
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_1

    const/16 v5, 0x80

    if-gt v4, v5, :cond_1

    .line 130
    rem-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 136
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for MAC size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_2
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_b

    .line 140
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 142
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 143
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 144
    iput v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 145
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 152
    :goto_1
    new-array v4, v3, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    if-eqz p1, :cond_3

    const/16 v4, 0x10

    goto :goto_2

    .line 153
    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v4, v3

    :goto_2
    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 157
    new-array v2, v4, [B

    .line 160
    :cond_4
    array-length v5, v2

    const/16 v6, 0xf

    if-le v5, v6, :cond_5

    .line 162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV must be no more than 15 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v5, 0x1

    if-eqz p2, :cond_6

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v5, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 174
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    goto :goto_3

    :cond_6
    if-eq v0, p1, :cond_7

    .line 178
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot change encrypting state without providing key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_7
    :goto_3
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    .line 182
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-interface {p1, p2, v4, v0, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 184
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    .line 186
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    .line 187
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    invoke-static {p2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processNonce([B)I

    move-result p1

    .line 195
    rem-int/lit8 p2, p1, 0x8

    div-int/lit8 p1, p1, 0x8

    if-nez p2, :cond_8

    .line 198
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    invoke-static {p2, p1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_8
    move v0, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v3, :cond_9

    .line 204
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 205
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    add-int/2addr v0, v5

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 206
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    shl-int/2addr v1, p2

    rsub-int/lit8 v7, p2, 0x8

    ushr-int/2addr v2, v7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 210
    :cond_9
    :goto_5
    iput v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 211
    iput v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    const-wide/16 p1, 0x0

    .line 213
    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 214
    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 216
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    .line 217
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    .line 218
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {p1, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    .line 221
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_a

    .line 223
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    array-length p2, p2

    invoke-virtual {p0, p1, v4, p2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    :cond_a
    return-void

    .line 149
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to OCB"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADBytes([BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 297
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 298
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processHashBlock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    aput-byte p1, v0, v1

    .line 309
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 311
    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    const/16 p1, 0x10

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 320
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 322
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 328
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 329
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    add-int v2, p5, v1

    .line 331
    invoke-virtual {p0, p4, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    add-int/lit8 v1, v1, 0x10

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected processHashBlock()V
    .locals 6

    .line 465
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    return-void
.end method

.method protected processMainBlock([BI)V
    .locals 8

    .line 471
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    .line 473
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 483
    iput v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 488
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 489
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 490
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 492
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez p1, :cond_2

    .line 496
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 497
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {p1, v2, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    :cond_2
    return-void
.end method

.method protected processNonce([B)I
    .locals 6

    const/16 v0, 0x10

    .line 229
    new-array v1, v0, [B

    .line 230
    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macSize:I

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 232
    array-length p1, p1

    const/16 v2, 0xf

    rsub-int/lit8 p1, p1, 0xf

    aget-byte v3, v1, p1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 234
    aget-byte p1, v1, v2

    and-int/lit8 p1, p1, 0x3f

    .line 235
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 240
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    new-array v2, v0, [B

    .line 243
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    .line 244
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    invoke-interface {v1, v3, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 245
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    add-int/lit8 v1, v4, 0x10

    aget-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v2, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected reset(Z)V
    .locals 4

    .line 504
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 505
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 507
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 508
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 511
    iput v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    const-wide/16 v1, 0x0

    .line 513
    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 514
    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 516
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 517
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 518
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    const/16 v3, 0x10

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 523
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 526
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_1

    .line 528
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    :cond_1
    return-void
.end method

.method protected updateHASH([B)V
    .locals 3

    .line 534
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 535
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 536
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 537
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    return-void
.end method
