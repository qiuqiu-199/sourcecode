.class public abstract Lorg/bouncycastle/math/raw/Nat128;
.super Ljava/lang/Object;
.source "Nat128.java"


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
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 24
    aput p0, p2, v5

    ushr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 32
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

    .line 33
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 35
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

    .line 36
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

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

    const/4 v5, 0x3

    .line 41
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

    .line 42
    aput v1, p2, v5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x4

    .line 121
    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0x8

    .line 131
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/4 v0, 0x4

    .line 136
    new-array v0, v0, [J

    return-object v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    .line 157
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

.method public static eq64([J[J)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 169
    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 188
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 189
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 181
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 5

    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    .line 203
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 205
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    const/16 v1, 0x40

    .line 206
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 198
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

    .line 215
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 223
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

    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 230
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 231
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

    .line 256
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 262
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isOne64([J)Z
    .locals 8

    const/4 v0, 0x0

    .line 272
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 278
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 290
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

.method public static isZero64([J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 302
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([I[I[I)V
    .locals 27

    const/4 v3, 0x0

    .line 312
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    const/4 v4, 0x1

    .line 313
    aget v5, p1, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    const/4 v5, 0x2

    .line 314
    aget v10, p1, v5

    int-to-long v10, v10

    and-long v14, v10, v6

    const/4 v10, 0x3

    .line 315
    aget v1, p1, v10

    int-to-long v10, v1

    and-long v16, v10, v6

    .line 318
    aget v1, p0, v3

    int-to-long v10, v1

    and-long v18, v10, v6

    mul-long v10, v18, v8

    const-wide/16 v20, 0x0

    add-long v6, v10, v20

    long-to-int v1, v6

    .line 320
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    mul-long v10, v18, v12

    move-wide/from16 v24, v12

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 323
    aput v3, p2, v4

    ushr-long v6, v12, v1

    mul-long v10, v18, v14

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 326
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v18, v18, v16

    add-long v10, v5, v18

    long-to-int v3, v10

    const/4 v5, 0x3

    .line 329
    aput v3, p2, v5

    ushr-long v5, v10, v1

    long-to-int v3, v5

    const/4 v5, 0x4

    .line 331
    aput v3, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 336
    aget v3, p0, v4

    int-to-long v6, v3

    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    mul-long v6, v12, v8

    add-int/lit8 v3, v4, 0x0

    .line 337
    aget v5, p2, v3

    int-to-long v1, v5

    and-long v18, v1, v10

    add-long v1, v6, v18

    add-long v5, v1, v20

    long-to-int v1, v5

    .line 338
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v18, v12, v24

    add-int/lit8 v3, v4, 0x1

    .line 340
    aget v7, p2, v3

    int-to-long v1, v7

    and-long v22, v1, v10

    add-long v1, v18, v22

    add-long v10, v5, v1

    long-to-int v1, v10

    .line 341
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long v5, v10, v1

    mul-long v10, v12, v14

    add-int/lit8 v7, v4, 0x2

    .line 343
    aget v1, p2, v7

    int-to-long v0, v1

    const-wide v18, 0xffffffffL

    and-long v22, v0, v18

    add-long v0, v10, v22

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 344
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v12, v12, v16

    add-int/lit8 v1, v4, 0x3

    .line 346
    aget v7, p2, v1

    int-to-long v10, v7

    and-long v22, v10, v18

    add-long v10, v12, v22

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 347
    aput v5, p2, v1

    ushr-long v5, v12, v0

    add-int/lit8 v4, v4, 0x4

    long-to-int v1, v5

    .line 349
    aput v1, p2, v4

    move v4, v3

    const/16 v1, 0x20

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mulAddTo([I[I[I)I
    .locals 29

    const/4 v2, 0x0

    .line 399
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x1

    .line 400
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/4 v3, 0x2

    .line 401
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/4 v3, 0x3

    .line 402
    aget v0, p1, v3

    int-to-long v3, v0

    and-long v13, v3, v5

    const-wide/16 v15, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 407
    aget v3, p0, v2

    int-to-long v3, v3

    and-long v18, v3, v5

    mul-long v3, v18, v7

    add-int/lit8 v20, v2, 0x0

    .line 408
    aget v0, p2, v20

    move-wide/from16 v21, v7

    int-to-long v7, v0

    and-long v23, v7, v5

    add-long v7, v3, v23

    const-wide/16 v3, 0x0

    add-long v5, v7, v3

    long-to-int v0, v5

    .line 409
    aput v0, p2, v20

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v7, v18, v9

    add-int/lit8 v17, v2, 0x1

    .line 411
    aget v3, p2, v17

    int-to-long v3, v3

    const-wide v23, 0xffffffffL

    and-long v25, v3, v23

    add-long v3, v7, v25

    add-long v7, v5, v3

    long-to-int v3, v7

    .line 412
    aput v3, p2, v17

    ushr-long v3, v7, v0

    mul-long v5, v18, v11

    add-int/lit8 v7, v2, 0x2

    .line 414
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v25, v0, v23

    add-long v0, v5, v25

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 415
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v18, v18, v13

    add-int/lit8 v5, v2, 0x3

    .line 417
    aget v6, p2, v5

    int-to-long v6, v6

    and-long v25, v6, v23

    add-long v6, v18, v25

    move-wide/from16 v27, v9

    add-long v8, v3, v6

    long-to-int v3, v8

    .line 418
    aput v3, p2, v5

    ushr-long v3, v8, v0

    add-int/lit8 v2, v2, 0x4

    .line 420
    aget v5, p2, v2

    int-to-long v5, v5

    and-long v7, v5, v23

    move-wide v5, v15

    add-long v15, v5, v7

    add-long v5, v3, v15

    long-to-int v3, v5

    .line 421
    aput v3, p2, v2

    ushr-long v15, v5, v0

    move/from16 v2, v17

    move-wide/from16 v7, v21

    move-wide/from16 v5, v23

    move-wide/from16 v9, v27

    goto :goto_0

    :cond_0
    move-wide v5, v15

    long-to-int v0, v5

    return v0
.end method

.method public static square([I[I)V
    .locals 24

    const/4 v1, 0x0

    .line 590
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v3, -0x1

    .line 598
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

    .line 600
    aput v3, p1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    ushr-long v11, v13, v3

    long-to-int v11, v11

    .line 601
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

    .line 609
    aput v8, p1, v1

    const/16 v1, 0x20

    ushr-long v8, v12, v1

    long-to-int v8, v8

    and-int/2addr v8, v3

    .line 614
    aget v9, p0, v3

    int-to-long v12, v9

    and-long v14, v12, v4

    const/4 v9, 0x2

    .line 615
    aget v12, p1, v9

    int-to-long v12, v12

    and-long v16, v12, v4

    mul-long v12, v14, v6

    add-long v4, v10, v12

    long-to-int v10, v4

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v8, v11

    .line 620
    aput v8, p1, v3

    ushr-int/lit8 v8, v10, 0x1f

    ushr-long/2addr v4, v1

    add-long v10, v16, v4

    .line 625
    aget v4, p0, v9

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long v16, v4, v12

    .line 626
    aget v4, p1, v2

    int-to-long v4, v4

    and-long v18, v4, v12

    const/4 v4, 0x4

    .line 627
    aget v5, p1, v4

    int-to-long v3, v5

    and-long v20, v3, v12

    mul-long v3, v16, v6

    add-long v12, v10, v3

    long-to-int v3, v12

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v8

    .line 631
    aput v4, p1, v9

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long v4, v12, v1

    mul-long v8, v16, v14

    add-long v10, v4, v8

    add-long v4, v18, v10

    ushr-long v8, v4, v1

    add-long v10, v20, v8

    const-wide v8, 0xffffffffL

    and-long v12, v4, v8

    .line 638
    aget v0, p0, v2

    int-to-long v4, v0

    and-long v18, v4, v8

    const/4 v0, 0x5

    .line 639
    aget v4, p1, v0

    int-to-long v4, v4

    and-long v20, v4, v8

    const/4 v4, 0x6

    .line 640
    aget v5, p1, v4

    int-to-long v4, v5

    and-long v22, v4, v8

    mul-long v6, v6, v18

    add-long v4, v12, v6

    long-to-int v6, v4

    shl-int/lit8 v7, v6, 0x1

    or-int/2addr v3, v7

    .line 644
    aput v3, p1, v2

    ushr-int/lit8 v2, v6, 0x1f

    ushr-long v3, v4, v1

    mul-long v14, v14, v18

    add-long v5, v3, v14

    add-long v3, v10, v5

    ushr-long v5, v3, v1

    mul-long v18, v18, v16

    add-long v7, v5, v18

    add-long v5, v20, v7

    ushr-long v7, v5, v1

    add-long v9, v22, v7

    const-wide v12, 0xffffffffL

    and-long v7, v5, v12

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    const/4 v4, 0x4

    .line 653
    aput v2, p1, v4

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v7

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 656
    aput v2, p1, v0

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v2, v9

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/4 v3, 0x6

    .line 659
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    const/4 v2, 0x7

    .line 661
    aget v3, p1, v2

    shr-long v4, v9, v1

    long-to-int v1, v4

    add-int/2addr v3, v1

    const/4 v1, 0x1

    shl-int/lit8 v1, v3, 0x1

    or-int/2addr v0, v1

    .line 662
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

    .line 744
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

    .line 745
    aput v1, p2, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 747
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 748
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 750
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 751
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 753
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    sub-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 754
    aput p0, p2, v5

    shr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 798
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

    .line 799
    aput v1, p1, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 801
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 802
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 804
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 805
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 807
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    sub-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 808
    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x10

    .line 833
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 836
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x2

    .line 839
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 8

    const/16 v0, 0x10

    .line 847
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 850
    aget-wide v4, p0, v1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    sub-int/2addr v3, v1

    shl-int/lit8 v2, v3, 0x3

    .line 853
    invoke-static {v4, v5, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 861
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 862
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 863
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 864
    aput v0, p0, v1

    return-void
.end method
