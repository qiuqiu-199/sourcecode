.class public abstract Lorg/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


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
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 30
    aput p0, p2, v5

    ushr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 38
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

    .line 39
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

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

    const/4 v5, 0x2

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

    const/4 v5, 0x3

    .line 47
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

    .line 48
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    .line 50
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

    .line 51
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    .line 53
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

    .line 54
    aput v1, p2, v5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([II[III)I
    .locals 14

    move/from16 v2, p4

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    add-int/lit8 v2, p1, 0x0

    .line 86
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v8, v2, v4

    add-int/lit8 v2, p3, 0x0

    aget v3, p2, v2

    int-to-long v10, v3

    and-long v12, v10, v4

    add-long v10, v8, v12

    add-long v8, v6, v10

    long-to-int v3, v8

    .line 87
    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long v6, v8, v2

    add-int/lit8 v3, p1, 0x1

    .line 89
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x1

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 90
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x2

    .line 92
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x2

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 93
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x3

    .line 95
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x3

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 96
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x4

    .line 98
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x4

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 99
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v1, p1, 0x5

    .line 101
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v8, v0, v4

    add-int/lit8 v0, p3, 0x5

    aget v1, p2, v0

    int-to-long v10, v1

    and-long v12, v10, v4

    add-long v3, v8, v12

    add-long v8, v6, v3

    long-to-int v1, v8

    .line 102
    aput v1, p2, v0

    ushr-long v0, v8, v2

    long-to-int v0, v0

    return v0
.end method

.method public static addToEachOther([II[II)I
    .locals 17

    add-int/lit8 v3, p1, 0x0

    .line 110
    aget v4, p0, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    add-int/lit8 v4, p3, 0x0

    aget v5, p2, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    add-long v10, v8, v12

    const-wide/16 v8, 0x0

    add-long v12, v10, v8

    long-to-int v5, v12

    .line 111
    aput v5, p0, v3

    .line 112
    aput v5, p2, v4

    const/16 v3, 0x20

    ushr-long v4, v12, v3

    add-int/lit8 v8, p1, 0x1

    .line 114
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x1

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 115
    aput v4, p0, v8

    .line 116
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x2

    .line 118
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x2

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 119
    aput v4, p0, v8

    .line 120
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x3

    .line 122
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x3

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 123
    aput v4, p0, v8

    .line 124
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x4

    .line 126
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x4

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 127
    aput v4, p0, v8

    .line 128
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v1, p1, 0x5

    .line 130
    aget v8, p0, v1

    int-to-long v8, v8

    and-long v10, v8, v6

    add-int/lit8 v2, p3, 0x5

    aget v8, p2, v2

    int-to-long v8, v8

    and-long v12, v8, v6

    add-long v6, v10, v12

    add-long v8, v4, v6

    long-to-int v4, v8

    .line 131
    aput v4, p0, v1

    .line 132
    aput v4, p2, v2

    ushr-long v0, v8, v3

    long-to-int v0, v0

    return v0
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x6

    .line 156
    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x3

    .line 161
    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xc

    .line 166
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/4 v0, 0x6

    .line 171
    new-array v0, v0, [J

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 176
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    .line 183
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x5

    :goto_0
    if-ltz v0, :cond_1

    .line 192
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
    .locals 6

    const/4 v0, 0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 204
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

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

    .line 214
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 223
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 224
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 216
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 5

    .line 231
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 240
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    const/16 v1, 0x40

    .line 241
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 233
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

    .line 250
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 258
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 279
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 280
    aget v4, p2, v4

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

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 265
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 266
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

    .line 291
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 297
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

    .line 307
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 313
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
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 325
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
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 337
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

.method public static mul([II[II[II)V
    .locals 40

    add-int/lit8 v5, p3, 0x0

    .line 404
    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    add-int/lit8 v5, p3, 0x1

    .line 405
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v11, v5, v7

    add-int/lit8 v5, p3, 0x2

    .line 406
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v13, v5, v7

    add-int/lit8 v5, p3, 0x3

    .line 407
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v15, v5, v7

    add-int/lit8 v5, p3, 0x4

    .line 408
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v17, v5, v7

    add-int/lit8 v3, p3, 0x5

    .line 409
    aget v2, p2, v3

    int-to-long v2, v2

    and-long v5, v2, v7

    add-int/lit8 v2, p1, 0x0

    .line 412
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v19, v2, v7

    mul-long v2, v19, v9

    const-wide/16 v21, 0x0

    add-long v7, v2, v21

    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v7

    .line 414
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v25, v19, v11

    add-long v2, v7, v25

    add-int/lit8 v7, p5, 0x1

    long-to-int v8, v2

    .line 417
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    mul-long v25, v19, v13

    add-long v7, v2, v25

    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v7

    .line 420
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v25, v19, v15

    add-long v2, v7, v25

    add-int/lit8 v7, p5, 0x3

    long-to-int v8, v2

    .line 423
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    mul-long v25, v19, v17

    add-long v7, v2, v25

    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v7

    .line 426
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v19, v19, v5

    add-long v2, v7, v19

    add-int/lit8 v7, p5, 0x5

    long-to-int v8, v2

    .line 429
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    add-int/lit8 v7, p5, 0x6

    long-to-int v2, v2

    .line 431
    aput v2, p4, v7

    const/4 v2, 0x1

    move/from16 v4, p5

    const/4 v3, 0x1

    :goto_0
    const/4 v7, 0x6

    if-ge v3, v7, :cond_0

    add-int/2addr v4, v2

    add-int v7, p1, v3

    .line 437
    aget v7, p0, v7

    int-to-long v7, v7

    const-wide v19, 0xffffffffL

    and-long v23, v7, v19

    mul-long v7, v23, v9

    add-int/lit8 v25, v4, 0x0

    .line 438
    aget v2, p4, v25

    int-to-long v0, v2

    and-long v28, v0, v19

    add-long v0, v7, v28

    add-long v7, v0, v21

    long-to-int v0, v7

    .line 439
    aput v0, p4, v25

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v23, v11

    add-int/lit8 v25, v4, 0x1

    .line 441
    aget v0, p4, v25

    move-wide/from16 v30, v9

    int-to-long v9, v0

    and-long v26, v9, v19

    add-long v9, v7, v26

    add-long v7, v1, v9

    long-to-int v0, v7

    .line 442
    aput v0, p4, v25

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v23, v13

    add-int/lit8 v9, v4, 0x2

    .line 444
    aget v10, p4, v9

    move-wide/from16 v32, v1

    int-to-long v0, v10

    and-long v25, v0, v19

    add-long v0, v7, v25

    add-long v7, v32, v0

    long-to-int v0, v7

    .line 445
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v23, v15

    add-int/lit8 v9, v4, 0x3

    .line 447
    aget v10, p4, v9

    move-wide/from16 v34, v1

    int-to-long v0, v10

    and-long v25, v0, v19

    add-long v0, v7, v25

    add-long v7, v34, v0

    long-to-int v0, v7

    .line 448
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v23, v17

    add-int/lit8 v9, v4, 0x4

    .line 450
    aget v10, p4, v9

    move-wide/from16 v36, v1

    int-to-long v0, v10

    and-long v25, v0, v19

    add-long v0, v7, v25

    add-long v7, v36, v0

    long-to-int v0, v7

    .line 451
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v23, v23, v5

    add-int/lit8 v7, v4, 0x5

    .line 453
    aget v8, p4, v7

    int-to-long v8, v8

    and-long v25, v8, v19

    add-long v8, v23, v25

    move-wide/from16 v38, v5

    add-long v5, v1, v8

    long-to-int v1, v5

    .line 454
    aput v1, p4, v7

    ushr-long v1, v5, v0

    add-int/lit8 v5, v4, 0x6

    long-to-int v1, v1

    .line 456
    aput v1, p4, v5

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v30

    move-wide/from16 v5, v38

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 32

    const/4 v3, 0x0

    .line 347
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    const/4 v4, 0x1

    .line 348
    aget v5, p1, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    const/4 v5, 0x2

    .line 349
    aget v10, p1, v5

    int-to-long v10, v10

    and-long v14, v10, v6

    const/4 v10, 0x3

    .line 350
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v16, v10, v6

    const/4 v10, 0x4

    .line 351
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v18, v10, v6

    const/4 v10, 0x5

    .line 352
    aget v1, p1, v10

    int-to-long v10, v1

    and-long v20, v10, v6

    .line 355
    aget v1, p0, v3

    int-to-long v10, v1

    and-long v22, v10, v6

    mul-long v10, v22, v8

    const-wide/16 v24, 0x0

    add-long v6, v10, v24

    long-to-int v1, v6

    .line 357
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    mul-long v10, v22, v12

    move-wide/from16 v28, v12

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 360
    aput v3, p2, v4

    ushr-long v6, v12, v1

    mul-long v10, v22, v14

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 363
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v22, v16

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x3

    .line 366
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v22, v18

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x4

    .line 369
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v22, v22, v20

    add-long v10, v5, v22

    long-to-int v3, v10

    const/4 v5, 0x5

    .line 372
    aput v3, p2, v5

    ushr-long v5, v10, v1

    long-to-int v3, v5

    const/4 v5, 0x6

    .line 374
    aput v3, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 379
    aget v3, p0, v4

    int-to-long v6, v3

    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    mul-long v6, v12, v8

    add-int/lit8 v3, v4, 0x0

    .line 380
    aget v5, p2, v3

    int-to-long v1, v5

    and-long v22, v1, v10

    add-long v1, v6, v22

    add-long v5, v1, v24

    long-to-int v1, v5

    .line 381
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v22, v12, v28

    add-int/lit8 v3, v4, 0x1

    .line 383
    aget v7, p2, v3

    int-to-long v1, v7

    and-long v26, v1, v10

    add-long v1, v22, v26

    add-long v10, v5, v1

    long-to-int v1, v10

    .line 384
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long v5, v10, v1

    mul-long v10, v12, v14

    add-int/lit8 v7, v4, 0x2

    .line 386
    aget v1, p2, v7

    int-to-long v0, v1

    const-wide v22, 0xffffffffL

    and-long v26, v0, v22

    add-long v0, v10, v26

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 387
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v16

    add-int/lit8 v1, v4, 0x3

    .line 389
    aget v7, p2, v1

    move/from16 v30, v1

    int-to-long v0, v7

    and-long v26, v0, v22

    add-long v0, v10, v26

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 390
    aput v0, p2, v30

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v18

    add-int/lit8 v1, v4, 0x4

    .line 392
    aget v7, p2, v1

    move/from16 v31, v1

    int-to-long v0, v7

    and-long v26, v0, v22

    add-long v0, v10, v26

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 393
    aput v0, p2, v31

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v12, v12, v20

    add-int/lit8 v1, v4, 0x5

    .line 395
    aget v7, p2, v1

    int-to-long v10, v7

    and-long v26, v10, v22

    add-long v10, v12, v26

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 396
    aput v5, p2, v1

    ushr-long v5, v12, v0

    add-int/lit8 v4, v4, 0x6

    long-to-int v1, v5

    .line 398
    aput v1, p2, v4

    move v4, v3

    const/16 v1, 0x20

    const/4 v5, 0x6

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

    .line 542
    aget v4, p1, v4

    int-to-long v5, v4

    and-long v11, v5, v7

    mul-long v5, v9, v11

    add-int/lit8 v4, p4, 0x0

    .line 543
    aget v4, p3, v4

    int-to-long v2, v4

    and-long v15, v2, v7

    add-long v2, v5, v15

    const-wide/16 v5, 0x0

    add-long v7, v2, v5

    add-int/lit8 v2, p6, 0x0

    long-to-int v3, v7

    .line 544
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v7, v2

    add-int/lit8 v3, p2, 0x1

    .line 546
    aget v3, p1, v3

    int-to-long v7, v3

    const-wide v15, 0xffffffffL

    and-long v17, v7, v15

    mul-long v7, v9, v17

    add-long v19, v7, v11

    add-int/lit8 v4, p4, 0x1

    .line 547
    aget v4, p3, v4

    int-to-long v11, v4

    and-long v13, v11, v15

    add-long v11, v19, v13

    add-long v2, v5, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v2

    .line 548
    aput v5, p5, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 550
    aget v4, p1, v4

    int-to-long v5, v4

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    mul-long v5, v9, v13

    add-long v15, v5, v17

    add-int/lit8 v5, p4, 0x2

    .line 551
    aget v5, p3, v5

    int-to-long v5, v5

    and-long v17, v5, v11

    add-long v5, v15, v17

    add-long v11, v2, v5

    add-int/lit8 v2, p6, 0x2

    long-to-int v3, v11

    .line 552
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x3

    .line 554
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x3

    .line 555
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x3

    long-to-int v3, v11

    .line 556
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x4

    .line 558
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v13, v2, v11

    mul-long v2, v9, v13

    add-long v17, v2, v15

    add-int/lit8 v2, p4, 0x4

    .line 559
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v15, v2, v11

    add-long v2, v17, v15

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x4

    long-to-int v3, v11

    .line 560
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v1, p2, 0x5

    .line 562
    aget v0, p1, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v11, v0, v2

    mul-long v9, v9, v11

    add-long v0, v9, v13

    add-int/lit8 v4, p4, 0x5

    .line 563
    aget v4, p3, v4

    int-to-long v7, v4

    and-long v9, v7, v2

    add-long v2, v0, v9

    add-long v0, v5, v2

    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v0

    .line 564
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

    .line 603
    aget v13, v2, v3

    int-to-long v13, v13

    and-long v15, v13, v7

    add-long v13, v11, v15

    const-wide/16 v11, 0x0

    add-long v7, v13, v11

    long-to-int v13, v7

    .line 604
    aput v13, v2, v3

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    ushr-long v0, p1, v3

    mul-long v9, v9, v0

    add-long v13, v9, v5

    add-int/lit8 v5, v4, 0x1

    .line 607
    aget v6, v2, v5

    int-to-long v9, v6

    const-wide v15, 0xffffffffL

    and-long v17, v9, v15

    add-long v9, v13, v17

    add-long v13, v7, v9

    long-to-int v6, v13

    .line 608
    aput v6, v2, v5

    ushr-long v5, v13, v3

    add-int/lit8 v7, v4, 0x2

    .line 610
    aget v8, v2, v7

    int-to-long v8, v8

    and-long v13, v8, v15

    add-long v8, v0, v13

    add-long v0, v5, v8

    long-to-int v5, v0

    .line 611
    aput v5, v2, v7

    ushr-long/2addr v0, v3

    add-int/lit8 v5, v4, 0x3

    .line 613
    aget v6, v2, v5

    int-to-long v6, v6

    and-long v8, v6, v15

    add-long v6, v0, v8

    long-to-int v0, v6

    .line 614
    aput v0, v2, v5

    ushr-long v0, v6, v3

    cmp-long v3, v0, v11

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x4

    .line 616
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

    .line 625
    aget p1, p2, p0

    int-to-long v6, p1

    and-long v8, v6, v2

    add-long v6, v4, v8

    const-wide/16 v4, 0x0

    add-long v8, v6, v4

    long-to-int p1, v8

    .line 626
    aput p1, p2, p0

    const/16 p0, 0x20

    ushr-long v6, v8, p0

    add-int/lit8 p1, p3, 0x1

    .line 628
    aget v8, p2, p1

    int-to-long v8, v8

    and-long v10, v8, v2

    add-long v8, v0, v10

    add-long v0, v6, v8

    long-to-int v6, v0

    .line 629
    aput v6, p2, p1

    ushr-long/2addr v0, p0

    add-int/lit8 p1, p3, 0x2

    .line 631
    aget v6, p2, p1

    int-to-long v6, v6

    and-long v8, v6, v2

    add-long v2, v0, v8

    long-to-int v0, v2

    .line 632
    aput v0, p2, p1

    ushr-long p0, v2, p0

    cmp-long v0, p0, v4

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    const/4 p1, 0x3

    .line 634
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 33

    const/4 v2, 0x0

    .line 462
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x1

    .line 463
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/4 v3, 0x2

    .line 464
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/4 v3, 0x3

    .line 465
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v13, v3, v5

    const/4 v3, 0x4

    .line 466
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v15, v3, v5

    const/4 v3, 0x5

    .line 467
    aget v0, p1, v3

    int-to-long v3, v0

    and-long v17, v3, v5

    const-wide/16 v19, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_0

    .line 472
    aget v3, p0, v2

    int-to-long v3, v3

    and-long v22, v3, v5

    mul-long v3, v22, v7

    add-int/lit8 v24, v2, 0x0

    .line 473
    aget v0, p2, v24

    move-wide/from16 v25, v7

    int-to-long v7, v0

    and-long v27, v7, v5

    add-long v7, v3, v27

    const-wide/16 v3, 0x0

    add-long v5, v7, v3

    long-to-int v0, v5

    .line 474
    aput v0, p2, v24

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v7, v22, v9

    add-int/lit8 v21, v2, 0x1

    .line 476
    aget v3, p2, v21

    int-to-long v3, v3

    const-wide v27, 0xffffffffL

    and-long v29, v3, v27

    add-long v3, v7, v29

    add-long v7, v5, v3

    long-to-int v3, v7

    .line 477
    aput v3, p2, v21

    ushr-long v3, v7, v0

    mul-long v5, v22, v11

    add-int/lit8 v7, v2, 0x2

    .line 479
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v29, v0, v27

    add-long v0, v5, v29

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 480
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v22, v13

    add-int/lit8 v7, v2, 0x3

    .line 482
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v29, v0, v27

    add-long v0, v5, v29

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 483
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v22, v15

    add-int/lit8 v7, v2, 0x4

    .line 485
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v29, v0, v27

    add-long v0, v5, v29

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 486
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v22, v22, v17

    add-int/lit8 v5, v2, 0x5

    .line 488
    aget v6, p2, v5

    int-to-long v6, v6

    and-long v29, v6, v27

    add-long v6, v22, v29

    move-wide/from16 v31, v9

    add-long v8, v3, v6

    long-to-int v3, v8

    .line 489
    aput v3, p2, v5

    ushr-long v3, v8, v0

    add-int/lit8 v2, v2, 0x6

    .line 491
    aget v5, p2, v2

    int-to-long v5, v5

    and-long v7, v5, v27

    move-wide/from16 v5, v19

    add-long v19, v5, v7

    add-long v5, v3, v19

    long-to-int v3, v5

    .line 492
    aput v3, p2, v2

    ushr-long v19, v5, v0

    move/from16 v2, v21

    move-wide/from16 v7, v25

    move-wide/from16 v5, v27

    move-wide/from16 v9, v31

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v5, v19

    long-to-int v0, v5

    return v0
.end method

.method public static square([II[II)V
    .locals 40

    add-int/lit8 v3, p1, 0x0

    .line 785
    aget v3, p0, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v4, 0x0

    const/16 v9, 0xc

    const/4 v4, 0x5

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v4, -0x1

    add-int v4, p1, v4

    .line 793
    aget v4, p0, v4

    int-to-long v12, v4

    and-long v14, v12, v5

    mul-long v12, v14, v14

    add-int/lit8 v9, v9, -0x1

    add-int v4, p3, v9

    shl-int/lit8 v10, v10, 0x1f

    const/16 v14, 0x21

    ushr-long v5, v12, v14

    long-to-int v5, v5

    or-int/2addr v5, v10

    .line 795
    aput v5, p2, v4

    add-int/lit8 v9, v9, -0x1

    add-int v4, p3, v9

    const/4 v5, 0x1

    move/from16 v18, v9

    ushr-long v9, v12, v5

    long-to-int v6, v9

    .line 796
    aput v6, p2, v4

    long-to-int v10, v12

    if-gtz v11, :cond_0

    mul-long v11, v7, v7

    shl-int/lit8 v4, v10, 0x1f

    int-to-long v9, v4

    const-wide v15, 0xffffffffL

    and-long v18, v9, v15

    ushr-long v9, v11, v14

    or-long v13, v18, v9

    add-int/lit8 v4, p3, 0x0

    long-to-int v6, v11

    .line 804
    aput v6, p2, v4

    const/16 v4, 0x20

    ushr-long v9, v11, v4

    long-to-int v6, v9

    and-int/2addr v6, v5

    add-int/lit8 v9, p1, 0x1

    .line 809
    aget v9, p0, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long v18, v9, v11

    add-int/lit8 v9, p3, 0x2

    .line 810
    aget v10, p2, v9

    int-to-long v3, v10

    and-long v20, v3, v11

    mul-long v3, v18, v7

    add-long v10, v13, v3

    long-to-int v3, v10

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v12, v3, 0x1

    or-int/2addr v6, v12

    .line 815
    aput v6, p2, v4

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x20

    ushr-long/2addr v10, v4

    add-long v12, v20, v10

    add-int/lit8 v4, p1, 0x2

    .line 820
    aget v4, p0, v4

    int-to-long v10, v4

    const-wide v14, 0xffffffffL

    and-long v20, v10, v14

    add-int/lit8 v4, p3, 0x3

    .line 821
    aget v6, p2, v4

    int-to-long v10, v6

    and-long v22, v10, v14

    add-int/lit8 v6, p3, 0x4

    .line 822
    aget v10, p2, v6

    int-to-long v10, v10

    and-long v24, v10, v14

    mul-long v10, v20, v7

    move/from16 v26, v6

    add-long v5, v12, v10

    long-to-int v10, v5

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v3, v11

    .line 826
    aput v3, p2, v9

    ushr-int/lit8 v3, v10, 0x1f

    const/16 v9, 0x20

    ushr-long/2addr v5, v9

    mul-long v10, v20, v18

    add-long v12, v5, v10

    add-long v5, v22, v12

    ushr-long v10, v5, v9

    add-long v12, v24, v10

    const-wide v9, 0xffffffffL

    and-long v14, v5, v9

    add-int/lit8 v5, p1, 0x3

    .line 833
    aget v5, p0, v5

    int-to-long v5, v5

    and-long v22, v5, v9

    add-int/lit8 v5, p3, 0x5

    .line 834
    aget v6, p2, v5

    move/from16 v27, v5

    int-to-long v5, v6

    and-long v24, v5, v9

    add-int/lit8 v5, p3, 0x6

    .line 835
    aget v6, p2, v5

    move/from16 v28, v5

    int-to-long v5, v6

    and-long v29, v5, v9

    mul-long v5, v22, v7

    add-long v9, v14, v5

    long-to-int v5, v9

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v3, v6

    .line 839
    aput v3, p2, v4

    ushr-int/lit8 v3, v5, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v9, v4

    mul-long v9, v22, v18

    add-long v14, v5, v9

    add-long v5, v12, v14

    ushr-long v9, v5, v4

    mul-long v11, v22, v20

    add-long v13, v9, v11

    add-long v9, v24, v13

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    ushr-long v5, v9, v4

    add-long v24, v29, v5

    and-long v4, v9, v11

    add-int/lit8 v6, p1, 0x4

    .line 848
    aget v6, p0, v6

    int-to-long v9, v6

    and-long v29, v9, v11

    add-int/lit8 v6, p3, 0x7

    .line 849
    aget v9, p2, v6

    int-to-long v9, v9

    and-long v31, v9, v11

    add-int/lit8 v9, p3, 0x8

    .line 850
    aget v10, p2, v9

    move/from16 v33, v9

    int-to-long v9, v10

    and-long v34, v9, v11

    mul-long v9, v29, v7

    add-long v11, v13, v9

    long-to-int v9, v11

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v3, v10

    .line 854
    aput v3, p2, v26

    ushr-int/lit8 v3, v9, 0x1f

    const/16 v9, 0x20

    ushr-long v10, v11, v9

    mul-long v12, v29, v18

    add-long v14, v10, v12

    add-long v10, v4, v14

    ushr-long v4, v10, v9

    mul-long v12, v29, v20

    add-long v14, v4, v12

    add-long v4, v24, v14

    const-wide v12, 0xffffffffL

    and-long v14, v10, v12

    ushr-long v10, v4, v9

    mul-long v16, v29, v22

    add-long v24, v10, v16

    add-long v10, v31, v24

    and-long v16, v4, v12

    ushr-long v4, v10, v9

    add-long v24, v34, v4

    and-long v4, v10, v12

    const/4 v9, 0x5

    add-int/lit8 v1, p1, 0x5

    .line 865
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v9, v0, v12

    add-int/lit8 v0, p3, 0x9

    .line 866
    aget v1, p2, v0

    move/from16 v36, v0

    int-to-long v0, v1

    and-long v31, v0, v12

    add-int/lit8 v0, p3, 0xa

    .line 867
    aget v1, p2, v0

    move/from16 v37, v0

    int-to-long v0, v1

    and-long v34, v0, v12

    mul-long v7, v7, v9

    add-long v0, v14, v7

    long-to-int v7, v0

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v3, v8

    .line 871
    aput v3, p2, v27

    ushr-int/lit8 v3, v7, 0x1f

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    mul-long v18, v18, v9

    add-long v11, v0, v18

    add-long v0, v16, v11

    ushr-long v11, v0, v7

    mul-long v20, v20, v9

    add-long v13, v11, v20

    add-long v11, v4, v13

    ushr-long v4, v11, v7

    mul-long v22, v22, v9

    add-long v13, v4, v22

    add-long v4, v24, v13

    ushr-long v13, v4, v7

    mul-long v9, v9, v29

    add-long v15, v13, v9

    add-long v8, v31, v15

    ushr-long v13, v8, v7

    move-wide/from16 v38, v8

    add-long v7, v34, v13

    long-to-int v0, v0

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v3

    .line 881
    aput v1, p2, v28

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v1, v11

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 884
    aput v0, p2, v6

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v4

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 887
    aput v0, p2, v33

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v3, v38

    long-to-int v1, v3

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 890
    aput v0, p2, v36

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 893
    aput v0, p2, v37

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xb

    .line 895
    aget v2, p2, v1

    const/16 v3, 0x20

    shr-long v3, v7, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 896
    aput v0, p2, v1

    return-void

    :cond_0
    move v4, v11

    move/from16 v9, v18

    const-wide v5, 0xffffffffL

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 35

    const/4 v2, 0x0

    .line 669
    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/16 v4, 0xc

    const/4 v4, 0x5

    const/16 v9, 0xc

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v4, -0x1

    .line 677
    aget v4, p0, v4

    int-to-long v12, v4

    and-long v14, v12, v5

    mul-long v14, v14, v14

    add-int/lit8 v9, v9, -0x1

    shl-int/lit8 v4, v10, 0x1f

    const/16 v10, 0x21

    ushr-long v12, v14, v10

    long-to-int v12, v12

    or-int/2addr v4, v12

    .line 679
    aput v4, p1, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v4, 0x1

    ushr-long v12, v14, v4

    long-to-int v12, v12

    .line 680
    aput v12, p1, v9

    long-to-int v12, v14

    if-gtz v11, :cond_0

    mul-long v13, v7, v7

    shl-int/lit8 v9, v12, 0x1f

    int-to-long v11, v9

    and-long v15, v11, v5

    ushr-long v9, v13, v10

    or-long v11, v15, v9

    long-to-int v9, v13

    .line 688
    aput v9, p1, v2

    const/16 v2, 0x20

    ushr-long v9, v13, v2

    long-to-int v9, v9

    and-int/2addr v9, v4

    .line 693
    aget v10, p0, v4

    int-to-long v13, v10

    and-long v15, v13, v5

    const/4 v10, 0x2

    .line 694
    aget v13, p1, v10

    int-to-long v13, v13

    and-long v17, v13, v5

    mul-long v13, v15, v7

    add-long v5, v11, v13

    long-to-int v11, v5

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v9, v12

    .line 699
    aput v9, p1, v4

    ushr-int/lit8 v9, v11, 0x1f

    ushr-long/2addr v5, v2

    add-long v11, v17, v5

    .line 704
    aget v5, p0, v10

    int-to-long v5, v5

    const-wide v13, 0xffffffffL

    and-long v17, v5, v13

    const/4 v5, 0x3

    .line 705
    aget v6, p1, v5

    int-to-long v3, v6

    and-long v22, v3, v13

    const/4 v3, 0x4

    .line 706
    aget v4, p1, v3

    int-to-long v3, v4

    and-long v24, v3, v13

    mul-long v3, v17, v7

    add-long v13, v11, v3

    long-to-int v3, v13

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v9

    .line 710
    aput v4, p1, v10

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long v9, v13, v2

    mul-long v11, v17, v15

    add-long v13, v9, v11

    add-long v9, v22, v13

    ushr-long v11, v9, v2

    add-long v13, v24, v11

    const-wide v11, 0xffffffffL

    and-long v22, v9, v11

    .line 717
    aget v4, p0, v5

    int-to-long v9, v4

    and-long v24, v9, v11

    const/4 v4, 0x5

    .line 718
    aget v6, p1, v4

    int-to-long v9, v6

    and-long v26, v9, v11

    const/4 v4, 0x6

    .line 719
    aget v6, p1, v4

    int-to-long v9, v6

    and-long v28, v9, v11

    mul-long v9, v24, v7

    add-long v11, v22, v9

    long-to-int v6, v11

    shl-int/lit8 v9, v6, 0x1

    or-int/2addr v3, v9

    .line 723
    aput v3, p1, v5

    ushr-int/lit8 v3, v6, 0x1f

    ushr-long v5, v11, v2

    mul-long v9, v24, v15

    add-long v11, v5, v9

    add-long v5, v13, v11

    ushr-long v9, v5, v2

    mul-long v11, v24, v17

    add-long v13, v9, v11

    add-long v9, v26, v13

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    ushr-long v5, v9, v2

    add-long v22, v28, v5

    and-long v5, v9, v11

    const/4 v9, 0x4

    .line 732
    aget v10, p0, v9

    int-to-long v9, v10

    and-long v26, v9, v11

    const/4 v9, 0x7

    .line 733
    aget v10, p1, v9

    int-to-long v9, v10

    and-long v28, v9, v11

    const/16 v9, 0x8

    .line 734
    aget v10, p1, v9

    int-to-long v9, v10

    and-long v30, v9, v11

    mul-long v9, v26, v7

    add-long v11, v13, v9

    long-to-int v9, v11

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v3, v10

    const/4 v10, 0x4

    .line 738
    aput v3, p1, v10

    ushr-int/lit8 v3, v9, 0x1f

    ushr-long v9, v11, v2

    mul-long v11, v26, v15

    add-long v13, v9, v11

    add-long v9, v5, v13

    ushr-long v5, v9, v2

    mul-long v11, v26, v17

    add-long v13, v5, v11

    add-long v5, v22, v13

    const-wide v13, 0xffffffffL

    and-long v11, v9, v13

    ushr-long v9, v5, v2

    mul-long v19, v26, v24

    add-long v22, v9, v19

    add-long v9, v28, v22

    and-long v19, v5, v13

    ushr-long v5, v9, v2

    add-long v22, v30, v5

    and-long v5, v9, v13

    const/4 v9, 0x5

    .line 749
    aget v0, p0, v9

    int-to-long v9, v0

    and-long v28, v9, v13

    const/16 v0, 0x9

    .line 750
    aget v9, p1, v0

    int-to-long v9, v9

    and-long v30, v9, v13

    const/16 v9, 0xa

    .line 751
    aget v9, p1, v9

    int-to-long v9, v9

    and-long v32, v9, v13

    mul-long v7, v7, v28

    add-long v9, v11, v7

    long-to-int v7, v9

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v3, v8

    const/16 v21, 0x5

    .line 755
    aput v3, p1, v21

    ushr-int/lit8 v3, v7, 0x1f

    ushr-long v7, v9, v2

    mul-long v15, v15, v28

    add-long v9, v7, v15

    add-long v7, v19, v9

    ushr-long v9, v7, v2

    mul-long v17, v17, v28

    add-long v11, v9, v17

    add-long v9, v5, v11

    ushr-long v5, v9, v2

    mul-long v24, v24, v28

    add-long v11, v5, v24

    add-long v5, v22, v11

    ushr-long v11, v5, v2

    mul-long v28, v28, v26

    add-long v13, v11, v28

    add-long v11, v30, v13

    ushr-long v13, v11, v2

    add-long v0, v32, v13

    long-to-int v7, v7

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v3, v8

    move-wide v13, v0

    .line 765
    aput v3, p1, v4

    ushr-int/lit8 v0, v7, 0x1f

    long-to-int v3, v9

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v0, v4

    const/4 v4, 0x7

    .line 768
    aput v0, p1, v4

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v3, v5

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v0, v4

    const/16 v4, 0x8

    .line 771
    aput v0, p1, v4

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v3, v11

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v0, v4

    const/16 v4, 0x9

    .line 774
    aput v0, p1, v4

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v3, v13

    const/16 v4, 0xa

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v0, v5

    .line 777
    aput v0, p1, v4

    ushr-int/lit8 v0, v3, 0x1f

    const/16 v3, 0xb

    .line 779
    aget v3, p1, v3

    shr-long v4, v13, v2

    long-to-int v2, v4

    add-int/2addr v3, v2

    const/16 v2, 0xb

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 780
    aput v0, p1, v2

    return-void

    :cond_0
    move v4, v11

    move v10, v12

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 16

    add-int/lit8 v4, p1, 0x0

    .line 926
    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long v10, v4, v6

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    add-long v10, v4, v8

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v10

    .line 927
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long v8, v10, v4

    add-int/lit8 v5, p1, 0x1

    .line 929
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x1

    long-to-int v8, v12

    .line 930
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x2

    .line 932
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x2

    long-to-int v8, v12

    .line 933
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x3

    .line 935
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x3

    long-to-int v8, v12

    .line 936
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x4

    .line 938
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x4

    long-to-int v8, v12

    .line 939
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v1, p1, 0x5

    .line 941
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v10, v0, v6

    add-int/lit8 v0, p3, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    and-long v2, v0, v6

    sub-long v0, v10, v2

    add-long v2, v8, v0

    add-int/lit8 v0, p5, 0x5

    long-to-int v1, v2

    .line 942
    aput v1, p4, v0

    shr-long v0, v2, v4

    long-to-int v0, v0

    return v0
.end method

.method public static sub([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 902
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

    .line 903
    aput v1, p2, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 905
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 906
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 908
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 909
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 911
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 912
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 914
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 915
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 917
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    sub-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 918
    aput p0, p2, v5

    shr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 974
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

    .line 975
    aput v1, p1, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 977
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 978
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 980
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 981
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 983
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 984
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 986
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 987
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 989
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    sub-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 990
    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x18

    .line 1021
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 1024
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    .line 1027
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 8

    const/16 v0, 0x18

    .line 1035
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1038
    aget-wide v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    .line 1041
    invoke-static {v3, v4, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1049
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1050
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1051
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1052
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1053
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1054
    aput v0, p0, v1

    return-void
.end method