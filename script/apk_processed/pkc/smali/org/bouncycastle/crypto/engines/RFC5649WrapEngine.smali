.class public Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;
.super Ljava/lang/Object;
.source "RFC5649WrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private extractedAIV:[B

.field private forWrapping:Z

.field private highOrderIV:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private preIV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->highOrderIV:[B

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->highOrderIV:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        0x59t
        0x59t
        -0x5at
    .end array-data
.end method

.method private padPlaintext([B)[B
    .locals 4

    .line 77
    array-length v0, p1

    .line 78
    rem-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    add-int v2, v0, v1

    .line 79
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 80
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_0

    .line 85
    new-array p1, v1, [B

    .line 86
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v2
.end method

.method private rfc3394UnwrapNoIvCheck([BII)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v4, 0x8

    .line 258
    new-array v5, v4, [B

    .line 259
    array-length v6, v5

    sub-int v6, p3, v6

    new-array v6, v6, [B

    .line 260
    array-length v7, v5

    new-array v7, v7, [B

    .line 261
    array-length v8, v5

    add-int/2addr v8, v4

    new-array v8, v8, [B

    .line 263
    array-length v9, v5

    const/4 v10, 0x0

    invoke-static {v1, v2, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    array-length v9, v5

    add-int/2addr v2, v9

    array-length v9, v5

    sub-int v9, p3, v9

    invoke-static {v1, v2, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1, v10, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 268
    div-int/lit8 v1, p3, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x5

    :goto_0
    if-ltz v3, :cond_2

    move v9, v1

    :goto_1
    if-lt v9, v2, :cond_1

    .line 275
    array-length v11, v5

    invoke-static {v7, v10, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v9, -0x1

    mul-int/lit8 v11, v11, 0x8

    .line 276
    array-length v12, v5

    invoke-static {v6, v11, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v12, v1, v3

    add-int/2addr v12, v9

    const/4 v13, 0x1

    :goto_2
    if-eqz v12, :cond_0

    int-to-byte v14, v12

    .line 283
    array-length v15, v5

    sub-int/2addr v15, v13

    aget-byte v16, v8, v15

    xor-int v14, v16, v14

    int-to-byte v14, v14

    aput-byte v14, v8, v15

    ushr-int/lit8 v12, v12, 0x8

    add-int/2addr v13, v2

    goto :goto_2

    .line 288
    :cond_0
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v8, v10, v8, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 289
    invoke-static {v8, v10, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    invoke-static {v8, v4, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 295
    :cond_2
    iput-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    return-object v6
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    .line 43
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 45
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 48
    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_1

    .line 50
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 52
    :cond_1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_2

    .line 54
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    .line 55
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 56
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length p1, p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV length not equal to 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public unwrap([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_0
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v1, v0, 0x8

    if-eq v1, p3, :cond_1

    .line 153
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 158
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "unwrap data must be at least 16 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_2
    new-array v1, p3, [B

    const/4 v2, 0x0

    .line 162
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    new-array v3, p3, [B

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 170
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1, v2, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    .line 171
    :goto_0
    array-length p2, v1

    if-ge p1, p2, :cond_3

    .line 173
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2, v1, p1, v3, p1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 171
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    .line 177
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    .line 178
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length p2, p2

    invoke-static {v3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length p1, v3

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length p2, p2

    sub-int/2addr p1, p2

    new-array p1, p1, [B

    .line 180
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length p2, p2

    array-length p3, p1

    invoke-static {v3, p2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 185
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->rfc3394UnwrapNoIvCheck([BII)[B

    move-result-object p1

    :goto_1
    const/4 p2, 0x4

    .line 190
    new-array p3, p2, [B

    .line 191
    new-array p2, p2, [B

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v1, p3

    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v1, p3

    array-length v3, p2

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    invoke-static {p2, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    invoke-static {p3, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p3

    .line 207
    array-length v0, p1

    add-int/lit8 v1, v0, -0x8

    if-gt p2, v1, :cond_5

    const/4 p3, 0x0

    :cond_5
    if-le p2, v0, :cond_6

    const/4 p3, 0x0

    :cond_6
    sub-int/2addr v0, p2

    .line 220
    array-length v1, p1

    if-lt v0, v1, :cond_7

    .line 223
    array-length v0, p1

    const/4 p3, 0x0

    .line 226
    :cond_7
    new-array v1, v0, [B

    .line 227
    new-array v3, v0, [B

    .line 228
    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {p1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p3, 0x0

    :cond_8
    if-nez p3, :cond_9

    .line 236
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "checksum failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_9
    new-array p2, p2, [B

    .line 241
    array-length p3, p2

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public wrap([BII)[B
    .locals 6

    .line 93
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-nez v0, :cond_0

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v0, 0x8

    .line 97
    new-array v1, v0, [B

    .line 100
    invoke-static {p3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v2

    .line 102
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length v3, v3

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    new-array v2, p3, [B

    .line 108
    invoke-static {p1, p2, v2, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->padPlaintext([B)[B

    move-result-object p1

    .line 111
    array-length p2, p1

    const/4 p3, 0x1

    if-ne p2, v0, :cond_2

    .line 117
    array-length p2, p1

    array-length v0, v1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 118
    array-length v0, v1

    invoke-static {v1, v5, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v5, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1, p3, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 122
    :goto_0
    array-length p1, p2

    if-ge v5, p1, :cond_1

    .line 124
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, p2, v5, p2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 122
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    add-int/2addr v5, p1

    goto :goto_0

    :cond_1
    return-object p2

    .line 133
    :cond_2
    new-instance p2, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {p2, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 134
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 135
    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 136
    array-length p3, p1

    invoke-interface {p2, p1, v5, p3}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    return-object p1
.end method
