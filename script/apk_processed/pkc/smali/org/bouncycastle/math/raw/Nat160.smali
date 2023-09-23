.class public abstract Lorg/bouncycastle/math/raw/Nat160;
.super Ljava/lang/Object;
.source "Nat160.java"


# direct methods
.method public static add([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    add-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 15
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 17
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 18
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x2

    .line 20
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 21
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x3

    .line 23
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 24
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x4

    .line 26
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 27
    aput p0, p2, v5

    ushr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 35
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    add-long v1, v5, v7

    aget v5, p2, v0

    int-to-long v5, v5

    and-long v7, v5, v3

    add-long v5, v1, v7

    const-wide/16 v1, 0x0

    add-long v7, v5, v1

    long-to-int v1, v7

    .line 36
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 38
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 39
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    .line 41
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 42
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    .line 44
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 45
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    .line 47
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    aget v6, p2, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    add-long v3, p0, v8

    add-long p0, v1, v3

    long-to-int v1, p0

    .line 48
    aput v1, p2, v5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x5

    .line 132
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xa

    .line 137
    new-array v0, v0, [I

    return-object v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    .line 158
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 168
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 177
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 178
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 170
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 195
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 202
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 203
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 228
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    .line 234
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 246
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([I[I[I)V
    .locals 29

    const/4 v3, 0x0

    .line 256
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    const/4 v4, 0x1

    .line 257
    aget v5, p1, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    const/4 v5, 0x2

    .line 258
    aget v10, p1, v5

    int-to-long v10, v10

    and-long v14, v10, v6

    const/4 v10, 0x3

    .line 259
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v16, v10, v6

    const/4 v10, 0x4

    .line 260
    aget v1, p1, v10

    int-to-long v10, v1

    and-long v18, v10, v6

    .line 263
    aget v1, p0, v3

    int-to-long v10, v1

    and-long v20, v10, v6

    mul-long v10, v20, v8

    const-wide/16 v22, 0x0

    add-long v6, v10, v22

    long-to-int v1, v6

    .line 265
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    mul-long v10, v20, v12

    move-wide/from16 v26, v12

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 268
    aput v3, p2, v4

    ushr-long v6, v12, v1

    mul-long v10, v20, v14

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 271
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v20, v16

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x3

    .line 274
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v20, v20, v18

    add-long v10, v5, v20

    long-to-int v3, v10

    const/4 v5, 0x4

    .line 277
    aput v3, p2, v5

    ushr-long v5, v10, v1

    long-to-int v3, v5

    const/4 v5, 0x5

    .line 279
    aput v3, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 284
    aget v3, p0, v4

    int-to-long v6, v3

    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    mul-long v6, v12, v8

    add-int/lit8 v3, v4, 0x0

    .line 285
    aget v5, p2, v3

    int-to-long v1, v5

    and-long v20, v1, v10

    add-long v1, v6, v20

    add-long v5, v1, v22

    long-to-int v1, v5

    .line 286
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v20, v12, v26

    add-int/lit8 v3, v4, 0x1

    .line 288
    aget v7, p2, v3

    int-to-long v1, v7

    and-long v24, v1, v10

    add-long v1, v20, v24

    add-long v10, v5, v1

    long-to-int v1, v10

    .line 289
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long v5, v10, v1

    mul-long v10, v12, v14

    add-int/lit8 v7, v4, 0x2

    .line 291
    aget v1, p2, v7

    int-to-long v0, v1

    const-wide v20, 0xffffffffL

    and-long v24, v0, v20

    add-long v0, v10, v24

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 292
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v16

    add-int/lit8 v1, v4, 0x3

    .line 294
    aget v7, p2, v1

    move/from16 v28, v1

    int-to-long v0, v7

    and-long v24, v0, v20

    add-long v0, v10, v24

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 295
    aput v0, p2, v28

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v12, v12, v18

    add-int/lit8 v1, v4, 0x4

    .line 297
    aget v7, p2, v1

    int-to-long v10, v7

    and-long v24, v10, v20

    add-long v10, v12, v24

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 298
    aput v5, p2, v1

    ushr-long v5, v12, v0

    add-int/lit8 v4, v4, 0x5

    long-to-int v1, v5

    .line 300
    aput v1, p2, v4

    move v4, v3

    const/16 v1, 0x20

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 22

    move/from16 v4, p0

    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    add-int/lit8 v4, p2, 0x0

    .line 429
    aget v4, p1, v4

    int-to-long v5, v4

    and-long v11, v5, v7

    mul-long v5, v9, v11

    add-int/lit8 v4, p4, 0x0

    .line 430
    aget v4, p3, v4

    int-to-long v2, v4

    and-long v15, v2, v7

    add-long v2, v5, v15

    const-wide/16 v5, 0x0

    add-long v7, v2, v5

    add-int/lit8 v2, p6, 0x0

    long-to-int v3, v7

    .line 431
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v7, v2

    add-int/lit8 v3, p2, 0x1

    .line 433
    aget v3, p1, v3

    int-to-long v7, v3

    const-wide v15, 0xffffffffL

    and-long v17, v7, v15

    mul-long v7, v9, v17

    add-long v19, v7, v11

    add-int/lit8 v4, p4, 0x1

    .line 434
    aget v4, p3, v4

    int-to-long v11, v4

    and-long v13, v11, v15

    add-long v11, v19, v13

    add-long v2, v5, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v2

    .line 435
    aput v5, p5, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 437
    aget v4, p1, v4

    int-to-long v5, v4

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    mul-long v5, v9, v13

    add-long v15, v5, v17

    add-int/lit8 v5, p4, 0x2

    .line 438
    aget v5, p3, v5

    int-to-long v5, v5

    and-long v17, v5, v11

    add-long v5, v15, v17

    add-long v11, v2, v5

    add-int/lit8 v2, p6, 0x2

    long-to-int v3, v11

    .line 439
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x3

    .line 441
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x3

    .line 442
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x3

    long-to-int v3, v11

    .line 443
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v1, p2, 0x4

    .line 445
    aget v0, p1, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v11, v0, v2

    mul-long v9, v9, v11

    add-long v0, v9, v15

    add-int/lit8 v4, p4, 0x4

    .line 446
    aget v4, p3, v4

    int-to-long v7, v4

    and-long v9, v7, v2

    add-long v2, v0, v9

    add-long v0, v5, v2

    add-int/lit8 v2, p6, 0x4

    long-to-int v3, v0

    .line 447
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-long v2, v0, v11

    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 19

    move-object/from16 v2, p3

    move/from16 v3, p0

    move/from16 v4, p4

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    and-long v5, p1, v7

    mul-long v11, v9, v5

    add-int/lit8 v3, v4, 0x0

    .line 483
    aget v13, v2, v3

    int-to-long v13, v13

    and-long v15, v13, v7

    add-long v13, v11, v15

    const-wide/16 v11, 0x0

    add-long v7, v13, v11

    long-to-int v13, v7

    .line 484
    aput v13, v2, v3

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    ushr-long v0, p1, v3

    mul-long v9, v9, v0

    add-long v13, v9, v5

    add-int/lit8 v5, v4, 0x1

    .line 487
    aget v6, v2, v5

    int-to-long v9, v6

    const-wide v15, 0xffffffffL

    and-long v17, v9, v15

    add-long v9, v13, v17

    add-long v13, v7, v9

    long-to-int v6, v13

    .line 488
    aput v6, v2, v5

    ushr-long v5, v13, v3

    add-int/lit8 v7, v4, 0x2

    .line 490
    aget v8, v2, v7

    int-to-long v8, v8

    and-long v13, v8, v15

    add-long v8, v0, v13

    add-long v0, v5, v8

    long-to-int v5, v0

    .line 491
    aput v5, v2, v7

    ushr-long/2addr v0, v3

    add-int/lit8 v5, v4, 0x3

    .line 493
    aget v6, v2, v5

    int-to-long v6, v6

    and-long v8, v6, v15

    add-long v6, v0, v8

    long-to-int v0, v6

    .line 494
    aput v0, v2, v5

    ushr-long v0, v6, v3

    cmp-long v3, v0, v11

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 496
    invoke-static {v0, v2, v4, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    int-to-long p0, p1

    and-long v0, p0, v2

    mul-long v4, v4, v0

    add-int/lit8 p0, p3, 0x0

    .line 505
    aget p1, p2, p0

    int-to-long v6, p1

    and-long v8, v6, v2

    add-long v6, v4, v8

    const-wide/16 v4, 0x0

    add-long v8, v6, v4

    long-to-int p1, v8

    .line 506
    aput p1, p2, p0

    const/16 p0, 0x20

    ushr-long v6, v8, p0

    add-int/lit8 p1, p3, 0x1

    .line 508
    aget v8, p2, p1

    int-to-long v8, v8

    and-long v10, v8, v2

    add-long v8, v0, v10

    add-long v0, v6, v8

    long-to-int v6, v0

    .line 509
    aput v6, p2, p1

    ushr-long/2addr v0, p0

    add-int/lit8 p1, p3, 0x2

    .line 511
    aget v6, p2, p1

    int-to-long v6, v6

    and-long v8, v6, v2

    add-long v2, v0, v8

    long-to-int v0, v2

    .line 512
    aput v0, p2, p1

    ushr-long p0, v2, p0

    cmp-long v0, p0, v4

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x3

    .line 514
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 31

    const/4 v2, 0x0

    .line 357
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x1

    .line 358
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/4 v3, 0x2

    .line 359
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/4 v3, 0x3

    .line 360
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v13, v3, v5

    const/4 v3, 0x4

    .line 361
    aget v0, p1, v3

    int-to-long v3, v0

    and-long v15, v3, v5

    const-wide/16 v17, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 366
    aget v3, p0, v2

    int-to-long v3, v3

    and-long v20, v3, v5

    mul-long v3, v20, v7

    add-int/lit8 v22, v2, 0x0

    .line 367
    aget v0, p2, v22

    move-wide/from16 v23, v7

    int-to-long v7, v0

    and-long v25, v7, v5

    add-long v7, v3, v25

    const-wide/16 v3, 0x0

    add-long v5, v7, v3

    long-to-int v0, v5

    .line 368
    aput v0, p2, v22

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v7, v20, v9

    add-int/lit8 v19, v2, 0x1

    .line 370
    aget v3, p2, v19

    int-to-long v3, v3

    const-wide v25, 0xffffffffL

    and-long v27, v3, v25

    add-long v3, v7, v27

    add-long v7, v5, v3

    long-to-int v3, v7

    .line 371
    aput v3, p2, v19

    ushr-long v3, v7, v0

    mul-long v5, v20, v11

    add-int/lit8 v7, v2, 0x2

    .line 373
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v27, v0, v25

    add-long v0, v5, v27

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 374
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v20, v13

    add-int/lit8 v7, v2, 0x3

    .line 376
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v27, v0, v25

    add-long v0, v5, v27

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 377
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v20, v20, v15

    add-int/lit8 v5, v2, 0x4

    .line 379
    aget v6, p2, v5

    int-to-long v6, v6

    and-long v27, v6, v25

    add-long v6, v20, v27

    move-wide/from16 v29, v9

    add-long v8, v3, v6

    long-to-int v3, v8

    .line 380
    aput v3, p2, v5

    ushr-long v3, v8, v0

    add-int/lit8 v2, v2, 0x5

    .line 382
    aget v5, p2, v2

    int-to-long v5, v5

    and-long v7, v5, v25

    move-wide/from16 v5, v17

    add-long v17, v5, v7

    add-long v5, v3, v17

    long-to-int v3, v5

    .line 383
    aput v3, p2, v2

    ushr-long v17, v5, v0

    move/from16 v2, v19

    move-wide/from16 v7, v23

    move-wide/from16 v5, v25

    move-wide/from16 v9, v29

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v5, v17

    long-to-int v0, v5

    return v0
.end method

.method public static mulWordsAdd(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    int-to-long p0, p1

    and-long v0, p0, v2

    mul-long v0, v0, v4

    add-int/lit8 p0, p3, 0x0

    .line 538
    aget p1, p2, p0

    int-to-long v4, p1

    and-long v6, v4, v2

    add-long v4, v0, v6

    const-wide/16 v0, 0x0

    add-long v6, v4, v0

    long-to-int p1, v6

    .line 539
    aput p1, p2, p0

    const/16 p0, 0x20

    ushr-long v4, v6, p0

    add-int/lit8 p1, p3, 0x1

    .line 541
    aget v6, p2, p1

    int-to-long v6, v6

    and-long v8, v6, v2

    add-long v2, v4, v8

    long-to-int v4, v2

    .line 542
    aput v4, p2, p1

    ushr-long p0, v2, p0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x2

    .line 544
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static square([I[I)V
    .locals 28

    const/4 v1, 0x0

    .line 563
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/4 v3, 0x4

    const/16 v8, 0xa

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v3, -0x1

    .line 571
    aget v3, p0, v3

    int-to-long v11, v3

    and-long v13, v11, v4

    mul-long v13, v13, v13

    add-int/lit8 v8, v8, -0x1

    shl-int/lit8 v3, v9, 0x1f

    const/16 v9, 0x21

    ushr-long v11, v13, v9

    long-to-int v11, v11

    or-int/2addr v3, v11

    .line 573
    aput v3, p1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    ushr-long v11, v13, v3

    long-to-int v11, v11

    .line 574
    aput v11, p1, v8

    long-to-int v11, v13

    if-gtz v10, :cond_0

    mul-long v12, v6, v6

    shl-int/lit8 v8, v11, 0x1f

    int-to-long v10, v8

    and-long v14, v10, v4

    ushr-long v8, v12, v9

    or-long v10, v14, v8

    long-to-int v8, v12

    .line 582
    aput v8, p1, v1

    const/16 v1, 0x20

    ushr-long v8, v12, v1

    long-to-int v8, v8

    and-int/2addr v8, v3

    .line 587
    aget v9, p0, v3

    int-to-long v12, v9

    and-long v14, v12, v4

    const/4 v9, 0x2

    .line 588
    aget v12, p1, v9

    int-to-long v12, v12

    and-long v16, v12, v4

    mul-long v12, v14, v6

    add-long v4, v10, v12

    long-to-int v10, v4

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v8, v11

    .line 593
    aput v8, p1, v3

    ushr-int/lit8 v8, v10, 0x1f

    ushr-long/2addr v4, v1

    add-long v10, v16, v4

    .line 598
    aget v4, p0, v9

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long v16, v4, v12

    const/4 v4, 0x3

    .line 599
    aget v5, p1, v4

    int-to-long v3, v5

    and-long v20, v3, v12

    .line 600
    aget v3, p1, v2

    int-to-long v3, v3

    and-long v22, v3, v12

    mul-long v3, v16, v6

    add-long v12, v10, v3

    long-to-int v3, v12

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v8

    .line 604
    aput v4, p1, v9

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long v4, v12, v1

    mul-long v8, v16, v14

    add-long v10, v4, v8

    add-long v4, v20, v10

    ushr-long v8, v4, v1

    add-long v10, v22, v8

    const-wide v8, 0xffffffffL

    and-long v12, v4, v8

    const/4 v4, 0x3

    .line 611
    aget v5, p0, v4

    int-to-long v4, v5

    and-long v20, v4, v8

    const/4 v4, 0x5

    .line 612
    aget v5, p1, v4

    int-to-long v4, v5

    and-long v22, v4, v8

    const/4 v4, 0x6

    .line 613
    aget v5, p1, v4

    int-to-long v4, v5

    and-long v24, v4, v8

    mul-long v4, v20, v6

    add-long v8, v12, v4

    long-to-int v4, v8

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    const/4 v5, 0x3

    .line 617
    aput v3, p1, v5

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v4, v8, v1

    mul-long v8, v20, v14

    add-long v12, v4, v8

    add-long v4, v10, v12

    ushr-long v8, v4, v1

    mul-long v10, v20, v16

    add-long v12, v8, v10

    add-long v8, v22, v12

    const-wide v12, 0xffffffffL

    and-long v10, v4, v12

    ushr-long v4, v8, v1

    add-long v18, v24, v4

    and-long v4, v8, v12

    .line 626
    aget v0, p0, v2

    int-to-long v8, v0

    and-long v22, v8, v12

    const/4 v0, 0x7

    .line 627
    aget v8, p1, v0

    int-to-long v8, v8

    and-long v24, v8, v12

    const/16 v8, 0x8

    .line 628
    aget v9, p1, v8

    int-to-long v8, v9

    and-long v26, v8, v12

    mul-long v6, v6, v22

    add-long v8, v10, v6

    long-to-int v6, v8

    shl-int/lit8 v7, v6, 0x1

    or-int/2addr v3, v7

    .line 632
    aput v3, p1, v2

    ushr-int/lit8 v2, v6, 0x1f

    ushr-long v6, v8, v1

    mul-long v14, v14, v22

    add-long v8, v6, v14

    add-long v6, v4, v8

    ushr-long v3, v6, v1

    mul-long v16, v16, v22

    add-long v8, v3, v16

    add-long v3, v18, v8

    ushr-long v8, v3, v1

    mul-long v22, v22, v20

    add-long v10, v8, v22

    add-long v8, v24, v10

    ushr-long v10, v8, v1

    add-long v12, v26, v10

    long-to-int v5, v6

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    const/4 v6, 0x5

    .line 641
    aput v2, p1, v6

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    const/4 v4, 0x6

    .line 644
    aput v2, p1, v4

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v8

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 647
    aput v2, p1, v0

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/16 v3, 0x8

    .line 650
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    const/16 v2, 0x9

    .line 652
    aget v3, p1, v2

    shr-long v4, v12, v1

    long-to-int v1, v4

    add-int/2addr v3, v1

    const/4 v1, 0x1

    shl-int/lit8 v1, v3, 0x1

    or-int/2addr v0, v1

    .line 653
    aput v0, p1, v2

    return-void

    :cond_0
    move v3, v10

    move v9, v11

    goto/16 :goto_0
.end method

.method public static sub([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 754
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    sub-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 755
    aput v1, p2, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 757
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 758
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 760
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 761
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 763
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 764
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 766
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    sub-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 767
    aput p0, p2, v5

    shr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 817
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p0, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    sub-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 818
    aput v1, p1, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 820
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 821
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 823
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 824
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 826
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 827
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 829
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    sub-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 830
    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x14

    .line 858
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 861
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x4

    shl-int/lit8 v3, v3, 0x2

    .line 864
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 872
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 873
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 874
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 875
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 876
    aput v0, p0, v1

    return-void
.end method
