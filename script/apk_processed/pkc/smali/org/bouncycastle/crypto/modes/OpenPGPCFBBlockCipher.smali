.class public Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;
.super Ljava/lang/Object;
.source "OpenPGPCFBBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 39
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    .line 40
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    .line 41
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    .line 42
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 243
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 245
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 250
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_2

    .line 255
    aget-byte v0, p1, p2

    .line 256
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v2

    aput-byte v0, v1, v5

    .line 257
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, p4

    add-int/lit8 v0, p2, 0x1

    .line 259
    aget-byte v0, p1, v0

    .line 260
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v4

    aput-byte v0, v1, v5

    add-int/lit8 v1, p4, 0x1

    .line 261
    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, v1

    .line 263
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v3, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 265
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v2, v0, :cond_6

    add-int v0, p2, v2

    .line 267
    aget-byte v0, p1, v0

    .line 268
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v3, v2, -0x2

    aput-byte v0, v1, v3

    add-int v1, p4, v2

    .line 269
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v0, :cond_4

    .line 274
    iget-object p4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {p4, v0, v3, v1, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 276
    :goto_1
    iget p4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, p4, :cond_3

    .line 278
    iget-object p4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v0, p2, v3

    aget-byte v1, p1, v0

    aput-byte v1, p4, v3

    .line 279
    aget-byte p4, p1, v0

    invoke-direct {p0, p4, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result p4

    aput-byte p4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_3
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_3

    .line 284
    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v0, v1, :cond_6

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v3, v5, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 288
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 289
    aget-byte v1, p1, v1

    .line 290
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, p4

    add-int/lit8 v5, p4, 0x1

    .line 291
    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v6

    aput-byte v6, p3, v5

    .line 293
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v7, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v7, v2

    invoke-static {v5, v2, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v6, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v6, v2

    aput-byte v0, v5, v6

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v4

    aput-byte v1, v0, v5

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v3, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    :goto_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v2, v0, :cond_5

    add-int v0, p2, v2

    .line 302
    aget-byte v0, p1, v0

    .line 303
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v3, v2, -0x2

    aput-byte v0, v1, v3

    add-int v1, p4, v2

    .line 304
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    :cond_5
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 310
    :cond_6
    :goto_3
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return p1
.end method

.method private encryptBlock([BI[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 167
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 172
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v1, v3

    aget-byte v5, p1, p2

    iget v6, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v6, v3

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, p4

    aput-byte v5, v0, v1

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v1, v2

    add-int/lit8 v5, p4, 0x1

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    iget v7, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v7, v2

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v5

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 182
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, v0, :cond_6

    .line 184
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v1, v3, -0x2

    add-int v2, p4, v3

    add-int v4, p2, v3

    aget-byte v4, p1, v4

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v2

    aput-byte v4, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 191
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v4, v0, :cond_3

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v1, p4, v4

    add-int v2, p2, v4

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    aput-byte v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    :cond_3
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_3

    .line 198
    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v0, v1, :cond_6

    .line 200
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v4, v5, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 202
    aget-byte v0, p1, p2

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, p4

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 203
    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v1, v3

    invoke-static {p3, p4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 213
    :goto_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, v0, :cond_5

    .line 215
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v1, v3, -0x2

    add-int v2, p4, v3

    add-int v4, p2, v3

    aget-byte v4, p1, v4

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v2

    aput-byte v4, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 218
    :cond_5
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 221
    :cond_6
    :goto_3
    iget p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return p1
.end method

.method private encryptByte(BI)B
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    aget-byte p2, v0, p2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/OpenPGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 128
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    .line 130
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->reset()V

    .line 132
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 107
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method