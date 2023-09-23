.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;
.source "SecT571Field.java"


# static fields
.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 15
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method private static add([JI[JI[JI)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    add-int v2, p1, v0

    .line 30
    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long v6, v2, v4

    aput-wide v6, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 22
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addBothTo([JI[JI[JI)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    .line 38
    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long v8, v4, v6

    xor-long v4, v2, v8

    aput-wide v4, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 46
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 52
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long v5, v1, v3

    aput-wide v5, p1, v0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 55
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    .line 61
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat576;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object p0

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    return-object p0
.end method

.method protected static implMultiply([J[J[J)V
    .locals 12

    const/16 v0, 0x90

    .line 232
    new-array v0, v0, [J

    const/4 v9, 0x0

    const/16 v10, 0x9

    .line 233
    invoke-static {p1, v9, v0, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x7

    const/4 v1, 0x0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v8, v1, 0x12

    const/16 v1, 0x9

    ushr-int/lit8 v3, v8, 0x1

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v6, v0

    move v7, v8

    .line 239
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit64(I[JIJ[JI)J

    .line 240
    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    const/16 v2, 0x9

    add-int/lit8 v6, v8, 0x9

    move-object v1, v0

    move-object v3, v0

    move v4, v8

    move-object v5, v0

    .line 241
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([JI[JI[JI)V

    add-int/lit8 p1, p1, -0x1

    move v1, v8

    goto :goto_0

    .line 247
    :cond_0
    array-length p1, v0

    new-array p1, p1, [J

    .line 248
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    const/16 v7, 0x38

    const/16 v8, 0x38

    :goto_1
    if-ltz v8, :cond_2

    const/4 v1, 0x1

    const/4 v11, 0x1

    :goto_2
    if-ge v11, v10, :cond_1

    .line 260
    aget-wide v1, p0, v11

    ushr-long/2addr v1, v8

    long-to-int v1, v1

    and-int/lit8 v2, v1, 0xf

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v2, v2, 0x9

    mul-int/lit8 v4, v1, 0x9

    add-int/lit8 v6, v11, -0x1

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    .line 263
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    :cond_1
    const/16 v1, 0x10

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    move-object v2, p2

    .line 265
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    add-int/lit8 v8, v8, -0x8

    goto :goto_1

    :cond_2
    :goto_3
    if-ltz v7, :cond_5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_3

    .line 272
    aget-wide v1, p0, v8

    ushr-long/2addr v1, v7

    long-to-int v1, v1

    and-int/lit8 v2, v1, 0xf

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v2, v2, 0x9

    mul-int/lit8 v4, v1, 0x9

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    move v6, v8

    .line 275
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_3
    if-lez v7, :cond_4

    const/16 v1, 0x12

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    move-object v2, p2

    .line 279
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    :cond_4
    add-int/lit8 v7, v7, -0x8

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 332
    aget-wide v1, p0, v0

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p1, v3}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    .line 68
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 75
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    .line 77
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    .line 79
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 82
    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 83
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 84
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/4 p0, 0x2

    .line 85
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 86
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 87
    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/4 p0, 0x5

    .line 90
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 92
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 93
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0xf

    .line 96
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 97
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0x1e

    .line 100
    invoke-static {v2, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 101
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 102
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0x3c

    .line 105
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 106
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 107
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 108
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0xb4

    .line 111
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 112
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 113
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 114
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 116
    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    .line 121
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 122
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 123
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    .line 128
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 129
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 130
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 22

    const/16 v1, 0x9

    .line 135
    aget-wide v1, p0, v1

    const/16 v3, 0x11

    .line 136
    aget-wide v3, p0, v3

    const/16 v5, 0x3b

    ushr-long v6, v3, v5

    xor-long v8, v1, v6

    const/16 v1, 0x39

    ushr-long v6, v3, v1

    xor-long v10, v8, v6

    const/16 v2, 0x36

    ushr-long v6, v3, v2

    xor-long v8, v10, v6

    const/16 v6, 0x31

    ushr-long v10, v3, v6

    xor-long v12, v8, v10

    const/16 v7, 0x8

    .line 139
    aget-wide v8, p0, v7

    const/4 v10, 0x5

    shl-long v14, v3, v10

    xor-long v16, v8, v14

    const/4 v8, 0x7

    shl-long v14, v3, v8

    xor-long v18, v16, v14

    const/16 v9, 0xa

    shl-long v14, v3, v9

    xor-long v16, v18, v14

    const/16 v11, 0xf

    shl-long/2addr v3, v11

    xor-long v14, v16, v3

    const/16 v3, 0x10

    :goto_0
    if-lt v3, v9, :cond_0

    .line 143
    aget-wide v16, p0, v3

    add-int/lit8 v4, v3, -0x8

    ushr-long v18, v16, v5

    xor-long v20, v14, v18

    ushr-long v14, v16, v1

    xor-long v18, v20, v14

    ushr-long v14, v16, v2

    xor-long v20, v18, v14

    ushr-long v14, v16, v6

    xor-long v18, v20, v14

    .line 144
    aput-wide v18, p1, v4

    add-int/lit8 v4, v3, -0x9

    .line 145
    aget-wide v14, p0, v4

    shl-long v18, v16, v10

    xor-long v20, v14, v18

    shl-long v14, v16, v8

    xor-long v18, v20, v14

    shl-long v14, v16, v9

    xor-long v20, v18, v14

    shl-long v14, v16, v11

    xor-long v16, v20, v14

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v14, v16

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    ushr-long v16, v12, v5

    xor-long v18, v14, v16

    ushr-long v14, v12, v1

    xor-long v16, v18, v14

    ushr-long v1, v12, v2

    xor-long v14, v16, v1

    ushr-long v1, v12, v6

    xor-long v16, v14, v1

    .line 149
    aput-wide v16, p1, v3

    const/4 v1, 0x0

    .line 150
    aget-wide v2, p0, v1

    shl-long v14, v12, v10

    xor-long v16, v2, v14

    shl-long v2, v12, v8

    xor-long v14, v16, v2

    shl-long v2, v12, v9

    xor-long v16, v14, v2

    shl-long v2, v12, v11

    xor-long v11, v16, v2

    .line 152
    aget-wide v2, p1, v7

    ushr-long v4, v2, v5

    xor-long v13, v11, v4

    const/4 v0, 0x2

    shl-long v11, v4, v0

    xor-long v15, v13, v11

    shl-long v10, v4, v10

    xor-long v12, v15, v10

    shl-long/2addr v4, v9

    xor-long v8, v12, v4

    .line 154
    aput-wide v8, p1, v1

    const-wide v4, 0x7ffffffffffffffL

    and-long v8, v2, v4

    .line 155
    aput-wide v8, p1, v7

    return-void
.end method

.method public static reduce5([JI)V
    .locals 13

    add-int/lit8 v0, p1, 0x8

    .line 160
    aget-wide v1, p0, v0

    const/16 v3, 0x3b

    ushr-long v3, v1, v3

    .line 161
    aget-wide v5, p0, p1

    const/4 v7, 0x2

    shl-long v7, v3, v7

    xor-long v9, v3, v7

    const/4 v7, 0x5

    shl-long v7, v3, v7

    xor-long v11, v9, v7

    const/16 v7, 0xa

    shl-long/2addr v3, v7

    xor-long v7, v11, v3

    xor-long v3, v5, v7

    aput-wide v3, p0, p1

    const-wide v3, 0x7ffffffffffffffL

    and-long v5, v1, v3

    .line 162
    aput-wide v5, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 18

    move-object/from16 v1, p1

    .line 167
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    const/4 v9, 0x4

    if-ge v4, v9, :cond_0

    add-int/lit8 v9, v5, 0x1

    .line 172
    aget-wide v10, p0, v5

    invoke-static {v10, v11}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    add-int/lit8 v5, v9, 0x1

    .line 173
    aget-wide v12, p0, v9

    invoke-static {v12, v13}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v12

    and-long v14, v10, v6

    shl-long v6, v12, v8

    or-long v16, v14, v6

    .line 174
    aput-wide v16, v2, v4

    ushr-long v6, v10, v8

    const-wide v8, -0x100000000L

    and-long v10, v12, v8

    or-long v8, v6, v10

    .line 175
    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_0
    aget-wide v4, p0, v5

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    and-long v10, v4, v6

    .line 179
    aput-wide v10, v2, v9

    ushr-long/2addr v4, v8

    .line 180
    aput-wide v4, v3, v9

    .line 183
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 184
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    .line 189
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 190
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 191
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    .line 196
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 197
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 198
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    .line 205
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 206
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 207
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 211
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 212
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
