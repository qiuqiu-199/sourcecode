.class public abstract Lorg/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


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
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 27
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x5

    .line 29
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 30
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x6

    .line 32
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 33
    aput p0, p2, v5

    ushr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 68
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

    .line 69
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 71
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

    .line 72
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    .line 74
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

    .line 75
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    .line 77
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

    .line 78
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    .line 80
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

    .line 81
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    .line 83
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

    .line 84
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    .line 86
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

    .line 87
    aput v1, p2, v5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static copy([I[I)V
    .locals 2

    const/4 v0, 0x0

    .line 209
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 210
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 211
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 212
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 213
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 214
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 215
    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x7

    .line 220
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xe

    .line 225
    new-array v0, v0, [I

    return-object v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    .line 246
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

    .line 256
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 266
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 258
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

    .line 275
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 283
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

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 290
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 291
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

    .line 316
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 322
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
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 334
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
    .locals 35

    const/4 v3, 0x0

    .line 344
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    const/4 v4, 0x1

    .line 345
    aget v5, p1, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    const/4 v5, 0x2

    .line 346
    aget v10, p1, v5

    int-to-long v10, v10

    and-long v14, v10, v6

    const/4 v10, 0x3

    .line 347
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v16, v10, v6

    const/4 v10, 0x4

    .line 348
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v18, v10, v6

    const/4 v10, 0x5

    .line 349
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v20, v10, v6

    const/4 v10, 0x6

    .line 350
    aget v1, p1, v10

    int-to-long v10, v1

    and-long v22, v10, v6

    .line 353
    aget v1, p0, v3

    int-to-long v10, v1

    and-long v24, v10, v6

    mul-long v10, v24, v8

    const-wide/16 v26, 0x0

    add-long v6, v10, v26

    long-to-int v1, v6

    .line 355
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    mul-long v10, v24, v12

    move-wide/from16 v30, v12

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 358
    aput v3, p2, v4

    ushr-long v6, v12, v1

    mul-long v10, v24, v14

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 361
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v24, v16

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x3

    .line 364
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v24, v18

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x4

    .line 367
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v24, v20

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x5

    .line 370
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v24, v24, v22

    add-long v10, v5, v24

    long-to-int v3, v10

    const/4 v5, 0x6

    .line 373
    aput v3, p2, v5

    ushr-long v5, v10, v1

    long-to-int v3, v5

    const/4 v5, 0x7

    .line 375
    aput v3, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 380
    aget v3, p0, v4

    int-to-long v6, v3

    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    mul-long v6, v12, v8

    add-int/lit8 v3, v4, 0x0

    .line 381
    aget v5, p2, v3

    int-to-long v1, v5

    and-long v24, v1, v10

    add-long v1, v6, v24

    add-long v5, v1, v26

    long-to-int v1, v5

    .line 382
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v24, v12, v30

    add-int/lit8 v3, v4, 0x1

    .line 384
    aget v7, p2, v3

    int-to-long v1, v7

    and-long v28, v1, v10

    add-long v1, v24, v28

    add-long v10, v5, v1

    long-to-int v1, v10

    .line 385
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long v5, v10, v1

    mul-long v10, v12, v14

    add-int/lit8 v7, v4, 0x2

    .line 387
    aget v1, p2, v7

    int-to-long v0, v1

    const-wide v24, 0xffffffffL

    and-long v28, v0, v24

    add-long v0, v10, v28

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 388
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v16

    add-int/lit8 v1, v4, 0x3

    .line 390
    aget v7, p2, v1

    move/from16 v32, v1

    int-to-long v0, v7

    and-long v28, v0, v24

    add-long v0, v10, v28

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 391
    aput v0, p2, v32

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v18

    add-int/lit8 v1, v4, 0x4

    .line 393
    aget v7, p2, v1

    move/from16 v33, v1

    int-to-long v0, v7

    and-long v28, v0, v24

    add-long v0, v10, v28

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 394
    aput v0, p2, v33

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v20

    add-int/lit8 v1, v4, 0x5

    .line 396
    aget v7, p2, v1

    move/from16 v34, v1

    int-to-long v0, v7

    and-long v28, v0, v24

    add-long v0, v10, v28

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 397
    aput v0, p2, v34

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v12, v12, v22

    add-int/lit8 v1, v4, 0x6

    .line 399
    aget v7, p2, v1

    int-to-long v10, v7

    and-long v28, v10, v24

    add-long v10, v12, v28

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 400
    aput v5, p2, v1

    ushr-long v5, v12, v0

    add-int/lit8 v4, v4, 0x7

    long-to-int v1, v5

    .line 402
    aput v1, p2, v4

    move v4, v3

    const/16 v1, 0x20

    const/4 v5, 0x7

    goto/16 :goto_0

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

    .line 561
    aget v4, p1, v4

    int-to-long v5, v4

    and-long v11, v5, v7

    mul-long v5, v9, v11

    add-int/lit8 v4, p4, 0x0

    .line 562
    aget v4, p3, v4

    int-to-long v2, v4

    and-long v15, v2, v7

    add-long v2, v5, v15

    const-wide/16 v5, 0x0

    add-long v7, v2, v5

    add-int/lit8 v2, p6, 0x0

    long-to-int v3, v7

    .line 563
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v7, v2

    add-int/lit8 v3, p2, 0x1

    .line 565
    aget v3, p1, v3

    int-to-long v7, v3

    const-wide v15, 0xffffffffL

    and-long v17, v7, v15

    mul-long v7, v9, v17

    add-long v19, v7, v11

    add-int/lit8 v4, p4, 0x1

    .line 566
    aget v4, p3, v4

    int-to-long v11, v4

    and-long v13, v11, v15

    add-long v11, v19, v13

    add-long v2, v5, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v2

    .line 567
    aput v5, p5, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 569
    aget v4, p1, v4

    int-to-long v5, v4

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    mul-long v5, v9, v13

    add-long v15, v5, v17

    add-int/lit8 v5, p4, 0x2

    .line 570
    aget v5, p3, v5

    int-to-long v5, v5

    and-long v17, v5, v11

    add-long v5, v15, v17

    add-long v11, v2, v5

    add-int/lit8 v2, p6, 0x2

    long-to-int v3, v11

    .line 571
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x3

    .line 573
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x3

    .line 574
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x3

    long-to-int v3, v11

    .line 575
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x4

    .line 577
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v13, v2, v11

    mul-long v2, v9, v13

    add-long v17, v2, v15

    add-int/lit8 v2, p4, 0x4

    .line 578
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v15, v2, v11

    add-long v2, v17, v15

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x4

    long-to-int v3, v11

    .line 579
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x5

    .line 581
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x5

    .line 582
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v11

    .line 583
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v1, p2, 0x6

    .line 585
    aget v0, p1, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v11, v0, v2

    mul-long v9, v9, v11

    add-long v0, v9, v15

    add-int/lit8 v4, p4, 0x6

    .line 586
    aget v4, p3, v4

    int-to-long v7, v4

    and-long v9, v7, v2

    add-long v2, v0, v9

    add-long v0, v5, v2

    add-int/lit8 v2, p6, 0x6

    long-to-int v3, v0

    .line 587
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

    .line 681
    aget v13, v2, v3

    int-to-long v13, v13

    and-long v15, v13, v7

    add-long v13, v11, v15

    const-wide/16 v11, 0x0

    add-long v7, v13, v11

    long-to-int v13, v7

    .line 682
    aput v13, v2, v3

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    ushr-long v0, p1, v3

    mul-long v9, v9, v0

    add-long v13, v9, v5

    add-int/lit8 v5, v4, 0x1

    .line 685
    aget v6, v2, v5

    int-to-long v9, v6

    const-wide v15, 0xffffffffL

    and-long v17, v9, v15

    add-long v9, v13, v17

    add-long v13, v7, v9

    long-to-int v6, v13

    .line 686
    aput v6, v2, v5

    ushr-long v5, v13, v3

    add-int/lit8 v7, v4, 0x2

    .line 688
    aget v8, v2, v7

    int-to-long v8, v8

    and-long v13, v8, v15

    add-long v8, v0, v13

    add-long v0, v5, v8

    long-to-int v5, v0

    .line 689
    aput v5, v2, v7

    ushr-long/2addr v0, v3

    add-int/lit8 v5, v4, 0x3

    .line 691
    aget v6, v2, v5

    int-to-long v6, v6

    and-long v8, v6, v15

    add-long v6, v0, v8

    long-to-int v0, v6

    .line 692
    aput v0, v2, v5

    ushr-long v0, v6, v3

    cmp-long v3, v0, v11

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 694
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

    .line 703
    aget p1, p2, p0

    int-to-long v6, p1

    and-long v8, v6, v2

    add-long v6, v4, v8

    const-wide/16 v4, 0x0

    add-long v8, v6, v4

    long-to-int p1, v8

    .line 704
    aput p1, p2, p0

    const/16 p0, 0x20

    ushr-long v6, v8, p0

    add-int/lit8 p1, p3, 0x1

    .line 706
    aget v8, p2, p1

    int-to-long v8, v8

    and-long v10, v8, v2

    add-long v8, v0, v10

    add-long v0, v6, v8

    long-to-int v6, v0

    .line 707
    aput v6, p2, p1

    ushr-long/2addr v0, p0

    add-int/lit8 p1, p3, 0x2

    .line 709
    aget v6, p2, p1

    int-to-long v6, v6

    and-long v8, v6, v2

    add-long v2, v0, v8

    long-to-int v0, v2

    .line 710
    aput v0, p2, p1

    ushr-long p0, v2, p0

    cmp-long v0, p0, v4

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    .line 712
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 35

    const/4 v2, 0x0

    .line 473
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x1

    .line 474
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/4 v3, 0x2

    .line 475
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/4 v3, 0x3

    .line 476
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v13, v3, v5

    const/4 v3, 0x4

    .line 477
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v15, v3, v5

    const/4 v3, 0x5

    .line 478
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v17, v3, v5

    const/4 v3, 0x6

    .line 479
    aget v0, p1, v3

    int-to-long v3, v0

    and-long v19, v3, v5

    const-wide/16 v21, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v2, v0, :cond_0

    .line 484
    aget v3, p0, v2

    int-to-long v3, v3

    and-long v24, v3, v5

    mul-long v3, v24, v7

    add-int/lit8 v26, v2, 0x0

    .line 485
    aget v0, p2, v26

    move-wide/from16 v27, v7

    int-to-long v7, v0

    and-long v29, v7, v5

    add-long v7, v3, v29

    const-wide/16 v3, 0x0

    add-long v5, v7, v3

    long-to-int v0, v5

    .line 486
    aput v0, p2, v26

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v7, v24, v9

    add-int/lit8 v23, v2, 0x1

    .line 488
    aget v3, p2, v23

    int-to-long v3, v3

    const-wide v29, 0xffffffffL

    and-long v31, v3, v29

    add-long v3, v7, v31

    add-long v7, v5, v3

    long-to-int v3, v7

    .line 489
    aput v3, p2, v23

    ushr-long v3, v7, v0

    mul-long v5, v24, v11

    add-int/lit8 v7, v2, 0x2

    .line 491
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v31, v0, v29

    add-long v0, v5, v31

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 492
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v24, v13

    add-int/lit8 v7, v2, 0x3

    .line 494
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v31, v0, v29

    add-long v0, v5, v31

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 495
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v24, v15

    add-int/lit8 v7, v2, 0x4

    .line 497
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v31, v0, v29

    add-long v0, v5, v31

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 498
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v24, v17

    add-int/lit8 v7, v2, 0x5

    .line 500
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v31, v0, v29

    add-long v0, v5, v31

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 501
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v24, v24, v19

    add-int/lit8 v5, v2, 0x6

    .line 503
    aget v6, p2, v5

    int-to-long v6, v6

    and-long v31, v6, v29

    add-long v6, v24, v31

    move-wide/from16 v33, v9

    add-long v8, v3, v6

    long-to-int v3, v8

    .line 504
    aput v3, p2, v5

    ushr-long v3, v8, v0

    add-int/lit8 v2, v2, 0x7

    .line 506
    aget v5, p2, v2

    int-to-long v5, v5

    and-long v7, v5, v29

    move-wide/from16 v5, v21

    add-long v21, v5, v7

    add-long v5, v3, v21

    long-to-int v3, v5

    .line 507
    aput v3, p2, v2

    ushr-long v21, v5, v0

    move/from16 v2, v23

    move-wide/from16 v7, v27

    move-wide/from16 v5, v29

    move-wide/from16 v9, v33

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v5, v21

    long-to-int v0, v5

    return v0
.end method

.method public static square([I[I)V
    .locals 38

    const/4 v1, 0x0

    .line 747
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/16 v3, 0xe

    const/4 v3, 0x6

    const/16 v8, 0xe

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v3, -0x1

    .line 755
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

    .line 757
    aput v3, p1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    ushr-long v11, v13, v3

    long-to-int v11, v11

    .line 758
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

    .line 766
    aput v8, p1, v1

    const/16 v1, 0x20

    ushr-long v8, v12, v1

    long-to-int v8, v8

    and-int/2addr v8, v3

    .line 771
    aget v9, p0, v3

    int-to-long v12, v9

    and-long v14, v12, v4

    const/4 v9, 0x2

    .line 772
    aget v12, p1, v9

    int-to-long v12, v12

    and-long v16, v12, v4

    mul-long v12, v14, v6

    add-long v4, v10, v12

    long-to-int v10, v4

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v8, v11

    .line 777
    aput v8, p1, v3

    ushr-int/lit8 v8, v10, 0x1f

    ushr-long/2addr v4, v1

    add-long v10, v16, v4

    .line 782
    aget v4, p0, v9

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long v16, v4, v12

    const/4 v4, 0x3

    .line 783
    aget v5, p1, v4

    int-to-long v2, v5

    and-long v20, v2, v12

    const/4 v2, 0x4

    .line 784
    aget v3, p1, v2

    int-to-long v2, v3

    and-long v22, v2, v12

    mul-long v2, v16, v6

    add-long v12, v10, v2

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v8

    .line 788
    aput v3, p1, v9

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v8, v12, v1

    mul-long v10, v16, v14

    add-long v12, v8, v10

    add-long v8, v20, v12

    ushr-long v10, v8, v1

    add-long v12, v22, v10

    const-wide v10, 0xffffffffL

    and-long v20, v8, v10

    .line 795
    aget v3, p0, v4

    int-to-long v8, v3

    and-long v22, v8, v10

    const/4 v3, 0x5

    .line 796
    aget v5, p1, v3

    int-to-long v8, v5

    and-long v24, v8, v10

    const/4 v5, 0x6

    .line 797
    aget v8, p1, v5

    int-to-long v8, v8

    and-long v26, v8, v10

    mul-long v8, v22, v6

    add-long v10, v20, v8

    long-to-int v5, v10

    shl-int/lit8 v8, v5, 0x1

    or-int/2addr v2, v8

    .line 801
    aput v2, p1, v4

    ushr-int/lit8 v2, v5, 0x1f

    ushr-long v4, v10, v1

    mul-long v8, v22, v14

    add-long v10, v4, v8

    add-long v4, v12, v10

    ushr-long v8, v4, v1

    mul-long v10, v22, v16

    add-long v12, v8, v10

    add-long v8, v24, v12

    const-wide v10, 0xffffffffL

    and-long v12, v4, v10

    ushr-long v4, v8, v1

    add-long v20, v26, v4

    and-long v4, v8, v10

    const/4 v8, 0x4

    .line 810
    aget v9, p0, v8

    int-to-long v8, v9

    and-long v24, v8, v10

    const/4 v8, 0x7

    .line 811
    aget v9, p1, v8

    int-to-long v8, v9

    and-long v26, v8, v10

    const/16 v8, 0x8

    .line 812
    aget v9, p1, v8

    int-to-long v8, v9

    and-long v28, v8, v10

    mul-long v8, v24, v6

    add-long v10, v12, v8

    long-to-int v8, v10

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v2, v9

    const/4 v9, 0x4

    .line 816
    aput v2, p1, v9

    ushr-int/lit8 v2, v8, 0x1f

    ushr-long v8, v10, v1

    mul-long v10, v24, v14

    add-long v12, v8, v10

    add-long v8, v4, v12

    ushr-long v4, v8, v1

    mul-long v10, v24, v16

    add-long v12, v4, v10

    add-long v4, v20, v12

    const-wide v10, 0xffffffffL

    and-long v12, v8, v10

    ushr-long v8, v4, v1

    mul-long v18, v24, v22

    add-long v20, v8, v18

    add-long v8, v26, v20

    and-long v20, v4, v10

    ushr-long v4, v8, v1

    add-long v26, v28, v4

    and-long v4, v8, v10

    .line 827
    aget v8, p0, v3

    int-to-long v8, v8

    and-long v28, v8, v10

    const/16 v8, 0x9

    .line 828
    aget v9, p1, v8

    int-to-long v8, v9

    and-long v30, v8, v10

    const/16 v8, 0xa

    .line 829
    aget v8, p1, v8

    int-to-long v8, v8

    and-long v32, v8, v10

    mul-long v8, v28, v6

    add-long v10, v12, v8

    long-to-int v8, v10

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v2, v9

    .line 833
    aput v2, p1, v3

    ushr-int/lit8 v2, v8, 0x1f

    ushr-long v8, v10, v1

    mul-long v10, v28, v14

    add-long v12, v8, v10

    add-long v8, v20, v12

    ushr-long v10, v8, v1

    mul-long v12, v28, v16

    add-long v20, v10, v12

    add-long v10, v4, v20

    const-wide v3, 0xffffffffL

    and-long v12, v8, v3

    ushr-long v8, v10, v1

    mul-long v18, v28, v22

    add-long v20, v8, v18

    add-long v8, v26, v20

    and-long v18, v10, v3

    ushr-long v10, v8, v1

    mul-long v20, v28, v24

    add-long v26, v10, v20

    add-long v10, v30, v26

    and-long v20, v8, v3

    ushr-long v8, v10, v1

    add-long v26, v32, v8

    and-long v8, v10, v3

    const/4 v5, 0x6

    .line 846
    aget v0, p0, v5

    int-to-long v10, v0

    and-long v30, v10, v3

    const/16 v0, 0xb

    .line 847
    aget v0, p1, v0

    int-to-long v10, v0

    and-long v32, v10, v3

    const/16 v0, 0xc

    .line 848
    aget v0, p1, v0

    int-to-long v10, v0

    and-long v34, v10, v3

    mul-long v6, v6, v30

    add-long v3, v12, v6

    long-to-int v0, v3

    shl-int/lit8 v5, v0, 0x1

    or-int/2addr v2, v5

    const/4 v5, 0x6

    .line 852
    aput v2, p1, v5

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v2, v3, v1

    mul-long v14, v14, v30

    add-long v4, v2, v14

    add-long v2, v18, v4

    ushr-long v4, v2, v1

    mul-long v16, v16, v30

    add-long v6, v4, v16

    add-long v4, v20, v6

    ushr-long v6, v4, v1

    mul-long v22, v22, v30

    add-long v10, v6, v22

    add-long v6, v8, v10

    ushr-long v8, v6, v1

    mul-long v24, v24, v30

    add-long v10, v8, v24

    add-long v8, v26, v10

    ushr-long v10, v8, v1

    mul-long v30, v30, v28

    add-long v12, v10, v30

    add-long v10, v32, v12

    ushr-long v12, v10, v1

    move-wide/from16 v36, v10

    add-long v10, v34, v12

    long-to-int v2, v2

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/4 v3, 0x7

    .line 863
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v4

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/16 v3, 0x8

    .line 866
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v6

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/16 v3, 0x9

    .line 869
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v8

    const/16 v3, 0xa

    shl-int/lit8 v4, v2, 0x1

    or-int/2addr v0, v4

    .line 872
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    move-wide/from16 v2, v36

    long-to-int v2, v2

    const/16 v3, 0xb

    shl-int/lit8 v4, v2, 0x1

    or-int/2addr v0, v4

    .line 875
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v10

    const/16 v3, 0xc

    shl-int/lit8 v4, v2, 0x1

    or-int/2addr v0, v4

    .line 878
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    const/16 v2, 0xd

    .line 880
    aget v2, p1, v2

    shr-long v3, v10, v1

    long-to-int v1, v3

    add-int/2addr v2, v1

    const/16 v1, 0xd

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 881
    aput v0, p1, v1

    return-void

    :cond_0
    move-wide v3, v4

    move-wide v4, v3

    move v3, v10

    move v9, v11

    goto/16 :goto_0
.end method

.method public static sub([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 1026
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

    .line 1027
    aput v1, p2, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 1029
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1030
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 1032
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1033
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 1035
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1036
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 1038
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1039
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 1041
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1042
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x6

    .line 1044
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    sub-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 1045
    aput p0, p2, v5

    shr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 1107
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

    .line 1108
    aput v1, p1, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 1110
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1111
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 1113
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1114
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 1116
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1117
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 1119
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1120
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 1122
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1123
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x6

    .line 1125
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    sub-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 1126
    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x1c

    .line 1160
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1163
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    .line 1166
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1174
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1175
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1176
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1177
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1178
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1179
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1180
    aput v0, p0, v1

    return-void
.end method
