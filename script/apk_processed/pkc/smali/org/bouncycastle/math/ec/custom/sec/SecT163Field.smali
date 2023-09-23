.class public Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;
.super Ljava/lang/Object;
.source "SecT163Field.java"


# static fields
.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x4924924924924950L    # -1.921780751074024E-44
        0x492492492492db6dL    # 2.293790934720842E44
        0x492492492L
    .end array-data
.end method

.method public static add([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 17
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 18
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 19
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long v3, v1, p0

    aput-wide v3, p2, v0

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 24
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 25
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 26
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x3

    .line 27
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x4

    .line 28
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x5

    .line 29
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long v3, v1, p0

    aput-wide v3, p2, v0

    return-void
.end method

.method public static addOne([J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 34
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long v5, v1, v3

    aput-wide v5, p1, v0

    const/4 v0, 0x1

    .line 35
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    .line 36
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    .line 41
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object p0

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce29([JI)V

    return-object p0
.end method

.method protected static implCompactExt([J)V
    .locals 22

    const/4 v0, 0x0

    .line 185
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 v15, 0x5

    aget-wide v16, p0, v15

    const/16 v18, 0x37

    shl-long v18, v4, v18

    xor-long v20, v1, v18

    .line 186
    aput-wide v20, p0, v0

    const/16 v0, 0x9

    ushr-long v0, v4, v0

    const/16 v2, 0x2e

    shl-long v4, v7, v2

    xor-long v18, v0, v4

    .line 187
    aput-wide v18, p0, v3

    const/16 v0, 0x12

    ushr-long v0, v7, v0

    const/16 v2, 0x25

    shl-long v2, v10, v2

    xor-long v4, v0, v2

    .line 188
    aput-wide v4, p0, v6

    const/16 v0, 0x1b

    ushr-long v0, v10, v0

    const/16 v2, 0x1c

    shl-long v2, v13, v2

    xor-long v4, v0, v2

    .line 189
    aput-wide v4, p0, v9

    const/16 v0, 0x24

    ushr-long v0, v13, v0

    const/16 v2, 0x13

    shl-long v2, v16, v2

    xor-long v4, v0, v2

    .line 190
    aput-wide v4, p0, v12

    const/16 v0, 0x2d

    ushr-long v0, v16, v0

    .line 191
    aput-wide v0, p0, v15

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 32

    const/4 v2, 0x0

    .line 200
    aget-wide v3, p0, v2

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    const/4 v8, 0x2

    aget-wide v9, p0, v8

    const/16 v0, 0x2e

    ushr-long v11, v6, v0

    const/16 v13, 0x12

    shl-long/2addr v9, v13

    xor-long v20, v11, v9

    const/16 v9, 0x37

    ushr-long v10, v3, v9

    const/16 v12, 0x9

    shl-long/2addr v6, v12

    xor-long v14, v10, v6

    const-wide v6, 0x7fffffffffffffL

    and-long v10, v14, v6

    and-long v22, v3, v6

    .line 205
    aget-wide v3, p1, v2

    aget-wide v14, p1, v5

    aget-wide v16, p1, v8

    ushr-long v0, v14, v0

    shl-long v16, v16, v13

    xor-long v24, v0, v16

    ushr-long v0, v3, v9

    shl-long v13, v14, v12

    xor-long v15, v0, v13

    and-long v0, v15, v6

    and-long v26, v3, v6

    const/16 v3, 0xa

    .line 210
    new-array v3, v3, [J

    const/16 v19, 0x0

    move-wide/from16 v14, v22

    move-wide/from16 v16, v26

    move-object/from16 v18, v3

    .line 212
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw(JJ[JI)V

    const/16 v19, 0x2

    move-wide/from16 v14, v20

    move-wide/from16 v16, v24

    .line 213
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw(JJ[JI)V

    xor-long v13, v22, v10

    xor-long v28, v13, v20

    xor-long v13, v26, v0

    xor-long v30, v13, v24

    const/16 v18, 0x4

    move-wide/from16 v13, v28

    move-wide/from16 v15, v30

    move-object/from16 v17, v3

    .line 218
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw(JJ[JI)V

    shl-long/2addr v10, v5

    shl-long v13, v20, v8

    xor-long v19, v10, v13

    shl-long/2addr v0, v5

    shl-long v10, v24, v8

    xor-long v24, v0, v10

    xor-long v13, v22, v19

    xor-long v15, v26, v24

    const/16 v18, 0x6

    .line 223
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw(JJ[JI)V

    xor-long v13, v28, v19

    xor-long v15, v30, v24

    const/16 v18, 0x8

    .line 224
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw(JJ[JI)V

    const/4 v0, 0x6

    .line 226
    aget-wide v10, v3, v0

    const/16 v1, 0x8

    aget-wide v13, v3, v1

    xor-long v15, v10, v13

    const/4 v4, 0x7

    .line 227
    aget-wide v10, v3, v4

    aget-wide v12, v3, v12

    xor-long v17, v10, v12

    shl-long v10, v15, v5

    .line 232
    aget-wide v12, v3, v0

    xor-long v19, v10, v12

    shl-long v10, v17, v5

    xor-long v12, v15, v10

    const/4 v0, 0x7

    .line 233
    aget-wide v10, v3, v0

    xor-long v14, v12, v10

    .line 237
    aget-wide v10, v3, v2

    .line 238
    aget-wide v12, v3, v5

    aget-wide v21, v3, v2

    xor-long v23, v12, v21

    const/4 v0, 0x4

    aget-wide v12, v3, v0

    xor-long v21, v23, v12

    .line 239
    aget-wide v12, v3, v5

    const/4 v4, 0x5

    aget-wide v23, v3, v4

    xor-long v25, v12, v23

    xor-long v12, v10, v19

    .line 242
    aget-wide v19, v3, v8

    shl-long v19, v19, v0

    xor-long v23, v12, v19

    aget-wide v12, v3, v8

    shl-long/2addr v12, v5

    xor-long v19, v23, v12

    xor-long v12, v21, v14

    const/4 v4, 0x3

    .line 243
    aget-wide v14, v3, v4

    shl-long/2addr v14, v0

    xor-long v23, v12, v14

    aget-wide v12, v3, v4

    shl-long/2addr v12, v5

    xor-long v14, v23, v12

    xor-long v12, v25, v17

    ushr-long v16, v19, v9

    xor-long v23, v14, v16

    and-long v14, v19, v6

    ushr-long v16, v23, v9

    xor-long v18, v12, v16

    and-long v12, v23, v6

    ushr-long/2addr v14, v5

    const-wide/16 v16, 0x1

    and-long v23, v12, v16

    const/16 v9, 0x36

    shl-long v16, v23, v9

    xor-long v23, v14, v16

    ushr-long/2addr v12, v5

    const-wide/16 v14, 0x1

    and-long v16, v18, v14

    shl-long v14, v16, v9

    xor-long v16, v12, v14

    ushr-long v12, v18, v5

    shl-long v14, v23, v5

    xor-long v18, v23, v14

    shl-long v14, v18, v8

    xor-long v23, v18, v14

    shl-long v14, v23, v0

    xor-long v18, v23, v14

    shl-long v14, v18, v1

    xor-long v23, v18, v14

    const/16 v14, 0x10

    shl-long v18, v23, v14

    xor-long v27, v23, v18

    const/16 v15, 0x20

    shl-long v18, v27, v15

    xor-long v23, v27, v18

    and-long v18, v23, v6

    ushr-long v23, v18, v9

    xor-long v27, v16, v23

    shl-long v16, v27, v5

    xor-long v23, v27, v16

    shl-long v16, v23, v8

    xor-long v27, v23, v16

    shl-long v16, v27, v0

    xor-long v23, v27, v16

    shl-long v16, v23, v1

    xor-long v27, v23, v16

    shl-long v16, v27, v14

    xor-long v23, v27, v16

    shl-long v16, v23, v15

    xor-long v27, v23, v16

    and-long v16, v27, v6

    ushr-long v6, v16, v9

    xor-long v23, v12, v6

    shl-long v6, v23, v5

    xor-long v12, v23, v6

    shl-long v6, v12, v8

    xor-long v23, v12, v6

    shl-long v6, v23, v0

    xor-long v12, v23, v6

    shl-long v6, v12, v1

    xor-long v23, v12, v6

    shl-long v6, v23, v14

    xor-long v12, v23, v6

    shl-long v6, v12, v15

    xor-long v14, v12, v6

    .line 287
    aput-wide v10, p2, v2

    xor-long v6, v21, v18

    .line 288
    aget-wide v9, v3, v8

    xor-long v11, v6, v9

    aput-wide v11, p2, v5

    xor-long v5, v25, v16

    xor-long v9, v5, v18

    .line 289
    aget-wide v5, v3, v4

    xor-long v11, v9, v5

    aput-wide v11, p2, v8

    xor-long v5, v14, v16

    .line 290
    aput-wide v5, p2, v4

    .line 291
    aget-wide v5, v3, v8

    xor-long v7, v14, v5

    aput-wide v7, p2, v0

    .line 292
    aget-wide v0, v3, v4

    const/4 v2, 0x5

    aput-wide v0, p2, v2

    .line 294
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulw(JJ[JI)V
    .locals 20

    move-wide/from16 v0, p0

    const/16 v5, 0x8

    .line 302
    new-array v5, v5, [J

    const/4 v6, 0x1

    aput-wide p2, v5, v6

    .line 305
    aget-wide v7, v5, v6

    shl-long/2addr v7, v6

    const/4 v9, 0x2

    aput-wide v7, v5, v9

    .line 306
    aget-wide v7, v5, v9

    xor-long v10, v7, p2

    const/4 v7, 0x3

    aput-wide v10, v5, v7

    .line 307
    aget-wide v8, v5, v9

    shl-long/2addr v8, v6

    const/4 v10, 0x4

    aput-wide v8, v5, v10

    .line 308
    aget-wide v8, v5, v10

    xor-long v10, v8, p2

    const/4 v8, 0x5

    aput-wide v10, v5, v8

    .line 309
    aget-wide v8, v5, v7

    shl-long/2addr v8, v6

    const/4 v10, 0x6

    aput-wide v8, v5, v10

    .line 310
    aget-wide v8, v5, v10

    xor-long v11, v8, p2

    const/4 v2, 0x7

    aput-wide v11, v5, v2

    long-to-int v3, v0

    and-int/2addr v3, v7

    .line 313
    aget-wide v8, v5, v3

    const-wide/16 v11, 0x0

    const/16 v3, 0x2f

    :goto_0
    ushr-long v13, v0, v3

    long-to-int v13, v13

    and-int/lit8 v14, v13, 0x7

    .line 318
    aget-wide v14, v5, v14

    ushr-int/lit8 v16, v13, 0x3

    and-int/lit8 v16, v16, 0x7

    aget-wide v16, v5, v16

    shl-long v16, v16, v7

    xor-long v18, v14, v16

    ushr-int/2addr v13, v10

    and-int/2addr v13, v2

    aget-wide v13, v5, v13

    shl-long/2addr v13, v10

    xor-long v15, v18, v13

    shl-long v13, v15, v3

    xor-long v17, v8, v13

    neg-int v8, v3

    ushr-long v8, v15, v8

    xor-long v13, v11, v8

    add-int/lit8 v3, v3, -0x9

    if-gtz v3, :cond_0

    const-wide v0, 0x7fffffffffffffL

    and-long v2, v17, v0

    .line 328
    aput-wide v2, p4, p5

    add-int/lit8 v0, p5, 0x1

    const/16 v1, 0x37

    ushr-long v1, v17, v1

    const/16 v3, 0x9

    shl-long v4, v13, v3

    xor-long v6, v1, v4

    .line 329
    aput-wide v6, p4, v0

    return-void

    :cond_0
    move-wide v11, v13

    move-wide/from16 v8, v17

    goto :goto_0
.end method

.method protected static implSquare([J[J)V
    .locals 6

    const/4 v0, 0x0

    .line 334
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    .line 335
    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 337
    aget-wide v0, p0, v2

    long-to-int p0, v0

    .line 338
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    const/4 p0, 0x4

    aput-wide v2, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    .line 339
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand8to16(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/4 p0, 0x5

    aput-wide v4, p1, p0

    return-void
.end method

.method public static invert([J[J)V
    .locals 2

    .line 48
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 55
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 56
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    .line 58
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->square([J[J)V

    const/4 p0, 0x1

    .line 61
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 62
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 63
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 64
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    const/4 p0, 0x3

    .line 67
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 68
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 69
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 70
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    const/16 p0, 0x9

    .line 73
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 74
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 75
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 76
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    const/16 p0, 0x1b

    .line 79
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 80
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 81
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 82
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    const/16 p0, 0x51

    .line 85
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 86
    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    .line 91
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 92
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMultiply([J[J[J)V

    .line 93
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    .line 98
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 99
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMultiply([J[J[J)V

    .line 100
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 26

    const/4 v1, 0x0

    .line 105
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const/4 v13, 0x4

    aget-wide v13, p0, v13

    const/4 v15, 0x5

    aget-wide v15, p0, v15

    const/16 v0, 0x1d

    shl-long v17, v15, v0

    const/16 v19, 0x20

    shl-long v20, v15, v19

    xor-long v22, v17, v20

    const/16 v17, 0x23

    shl-long v20, v15, v17

    xor-long v24, v22, v20

    const/16 v18, 0x24

    shl-long v20, v15, v18

    xor-long v22, v24, v20

    xor-long v20, v8, v22

    ushr-long v8, v15, v17

    ushr-long v22, v15, v19

    xor-long v24, v8, v22

    ushr-long v8, v15, v0

    xor-long v22, v24, v8

    const/16 v8, 0x1c

    ushr-long/2addr v15, v8

    xor-long v24, v22, v15

    xor-long v15, v11, v24

    shl-long v11, v13, v0

    shl-long v22, v13, v19

    xor-long v24, v11, v22

    shl-long v11, v13, v17

    xor-long v22, v24, v11

    shl-long v11, v13, v18

    xor-long v24, v22, v11

    xor-long v11, v5, v24

    ushr-long v5, v13, v17

    ushr-long v22, v13, v19

    xor-long v24, v5, v22

    ushr-long v5, v13, v0

    xor-long v22, v24, v5

    ushr-long v5, v13, v8

    xor-long v13, v22, v5

    xor-long v5, v20, v13

    shl-long v13, v15, v0

    shl-long v20, v15, v19

    xor-long v22, v13, v20

    shl-long v13, v15, v17

    xor-long v20, v22, v13

    shl-long v13, v15, v18

    xor-long v22, v20, v13

    xor-long v13, v2, v22

    ushr-long v2, v15, v17

    ushr-long v18, v15, v19

    xor-long v20, v2, v18

    ushr-long v2, v15, v0

    xor-long v18, v20, v2

    ushr-long v2, v15, v8

    xor-long v8, v18, v2

    xor-long v2, v11, v8

    ushr-long v8, v5, v17

    xor-long v11, v13, v8

    shl-long v13, v8, v10

    xor-long v15, v11, v13

    const/4 v0, 0x6

    shl-long v10, v8, v0

    xor-long v12, v15, v10

    const/4 v0, 0x7

    shl-long/2addr v8, v0

    xor-long v10, v12, v8

    .line 117
    aput-wide v10, p1, v1

    .line 118
    aput-wide v2, p1, v4

    const-wide v1, 0x7ffffffffL

    and-long v3, v5, v1

    .line 119
    aput-wide v3, p1, v7

    return-void
.end method

.method public static reduce29([JI)V
    .locals 13

    add-int/lit8 v0, p1, 0x2

    .line 124
    aget-wide v1, p0, v0

    const/16 v3, 0x23

    ushr-long v3, v1, v3

    .line 125
    aget-wide v5, p0, p1

    const/4 v7, 0x3

    shl-long v7, v3, v7

    xor-long v9, v3, v7

    const/4 v7, 0x6

    shl-long v7, v3, v7

    xor-long v11, v9, v7

    const/4 v7, 0x7

    shl-long/2addr v3, v7

    xor-long v7, v11, v3

    xor-long v3, v5, v7

    aput-wide v3, p0, p1

    const-wide v3, 0x7ffffffffL

    and-long v5, v1, v3

    .line 126
    aput-wide v5, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 18

    move-object/from16 v1, p1

    .line 131
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v2

    const/4 v3, 0x0

    .line 134
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    const/16 v13, 0x20

    shl-long v14, v7, v13

    or-long v16, v11, v14

    ushr-long/2addr v4, v13

    const-wide v11, -0x100000000L

    and-long v14, v7, v11

    or-long v7, v4, v14

    .line 136
    aput-wide v7, v2, v3

    const/4 v4, 0x2

    .line 138
    aget-wide v4, p0, v4

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    and-long v7, v4, v9

    ushr-long/2addr v4, v13

    .line 140
    aput-wide v4, v2, v6

    .line 142
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->ROOT_Z:[J

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 144
    aget-wide v4, v1, v3

    xor-long v9, v4, v16

    aput-wide v9, v1, v3

    .line 145
    aget-wide v2, v1, v6

    xor-long v4, v2, v7

    aput-wide v4, v1, v6

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    .line 150
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 151
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 152
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    .line 157
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 158
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 159
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    .line 166
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 167
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 168
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 172
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 173
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
