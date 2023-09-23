.class public Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;
.super Ljava/lang/Object;
.source "SecT131Field.java"


# static fields
.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x26bc4d789af13523L
        0x26bc4d789af135e2L    # 4.281425911902527E-122
        0x6
    .end array-data
.end method

.method public static add([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 18
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 19
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 20
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long v3, v1, p0

    aput-wide v3, p2, v0

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 25
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 26
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 27
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x3

    .line 28
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x4

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
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce61([JI)V

    return-object p0
.end method

.method protected static implCompactExt([J)V
    .locals 22

    const/4 v0, 0x0

    .line 173
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

    const/16 v18, 0x2c

    shl-long v18, v4, v18

    xor-long v20, v1, v18

    .line 174
    aput-wide v20, p0, v0

    const/16 v0, 0x14

    ushr-long v0, v4, v0

    const/16 v2, 0x18

    shl-long v4, v7, v2

    xor-long v18, v0, v4

    .line 175
    aput-wide v18, p0, v3

    const/16 v0, 0x28

    ushr-long v0, v7, v0

    shl-long v2, v10, v12

    xor-long v4, v0, v2

    const/16 v0, 0x30

    shl-long v0, v13, v0

    xor-long v2, v4, v0

    .line 176
    aput-wide v2, p0, v6

    const/16 v0, 0x3c

    ushr-long v0, v10, v0

    const/16 v2, 0x1c

    shl-long v2, v16, v2

    xor-long v4, v0, v2

    const/16 v0, 0x10

    ushr-long v0, v13, v0

    xor-long v2, v4, v0

    .line 178
    aput-wide v2, p0, v9

    const/16 v0, 0x24

    ushr-long v0, v16, v0

    .line 180
    aput-wide v0, p0, v12

    const-wide/16 v0, 0x0

    .line 181
    aput-wide v0, p0, v15

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 34

    const/4 v2, 0x0

    .line 190
    aget-wide v3, p0, v2

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    const/4 v8, 0x2

    aget-wide v9, p0, v8

    const/16 v0, 0x18

    ushr-long v11, v6, v0

    const/16 v13, 0x28

    shl-long/2addr v9, v13

    xor-long v14, v11, v9

    const-wide v9, 0xfffffffffffL

    and-long v11, v14, v9

    const/16 v14, 0x2c

    ushr-long v15, v3, v14

    const/16 v17, 0x14

    shl-long v6, v6, v17

    xor-long v18, v15, v6

    and-long v6, v18, v9

    and-long v24, v3, v9

    .line 195
    aget-wide v3, p1, v2

    aget-wide v15, p1, v5

    aget-wide v18, p1, v8

    ushr-long v0, v15, v0

    shl-long v18, v18, v13

    xor-long v20, v0, v18

    and-long v0, v20, v9

    ushr-long v18, v3, v14

    shl-long v15, v15, v17

    xor-long v20, v18, v15

    and-long v26, v20, v9

    and-long v28, v3, v9

    const/16 v3, 0xa

    .line 200
    new-array v3, v3, [J

    const/16 v23, 0x0

    move-wide/from16 v18, v24

    move-wide/from16 v20, v28

    move-object/from16 v22, v3

    .line 202
    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    const/16 v21, 0x2

    move-wide/from16 v16, v11

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    .line 203
    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    xor-long v15, v24, v6

    xor-long v21, v15, v11

    xor-long v15, v28, v26

    xor-long v30, v15, v0

    const/16 v20, 0x4

    move-wide/from16 v15, v21

    move-wide/from16 v17, v30

    move-object/from16 v19, v3

    .line 208
    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    shl-long/2addr v6, v5

    shl-long/2addr v11, v8

    xor-long v32, v6, v11

    shl-long v6, v26, v5

    shl-long/2addr v0, v8

    xor-long v11, v6, v0

    xor-long v15, v24, v32

    xor-long v17, v28, v11

    const/16 v20, 0x6

    .line 213
    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    xor-long v15, v21, v32

    xor-long v17, v30, v11

    const/16 v20, 0x8

    .line 214
    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    const/4 v0, 0x6

    .line 216
    aget-wide v6, v3, v0

    const/16 v1, 0x8

    aget-wide v11, v3, v1

    xor-long v15, v6, v11

    const/4 v4, 0x7

    .line 217
    aget-wide v6, v3, v4

    const/16 v4, 0x9

    aget-wide v11, v3, v4

    xor-long v17, v6, v11

    shl-long v6, v15, v5

    .line 222
    aget-wide v11, v3, v0

    xor-long v19, v6, v11

    shl-long v6, v17, v5

    xor-long v11, v15, v6

    const/4 v0, 0x7

    .line 223
    aget-wide v6, v3, v0

    xor-long v15, v11, v6

    .line 227
    aget-wide v6, v3, v2

    .line 228
    aget-wide v11, v3, v5

    aget-wide v21, v3, v2

    xor-long v23, v11, v21

    const/4 v0, 0x4

    aget-wide v11, v3, v0

    xor-long v21, v23, v11

    .line 229
    aget-wide v11, v3, v5

    const/4 v4, 0x5

    aget-wide v23, v3, v4

    xor-long v25, v11, v23

    xor-long v11, v6, v19

    .line 232
    aget-wide v19, v3, v8

    shl-long v19, v19, v0

    xor-long v23, v11, v19

    aget-wide v11, v3, v8

    shl-long/2addr v11, v5

    xor-long v19, v23, v11

    xor-long v11, v21, v15

    const/4 v4, 0x3

    .line 233
    aget-wide v15, v3, v4

    shl-long/2addr v15, v0

    xor-long v23, v11, v15

    aget-wide v11, v3, v4

    shl-long/2addr v11, v5

    xor-long v15, v23, v11

    xor-long v11, v25, v17

    ushr-long v17, v19, v14

    xor-long v23, v15, v17

    and-long v15, v19, v9

    ushr-long v13, v23, v14

    xor-long v17, v11, v13

    and-long v11, v23, v9

    ushr-long v13, v15, v5

    const-wide/16 v15, 0x1

    and-long v19, v11, v15

    const/16 v15, 0x2b

    shl-long v19, v19, v15

    xor-long v23, v13, v19

    ushr-long/2addr v11, v5

    const-wide/16 v13, 0x1

    and-long v19, v17, v13

    shl-long v13, v19, v15

    xor-long v19, v11, v13

    ushr-long v11, v17, v5

    shl-long v13, v23, v5

    xor-long v16, v23, v13

    shl-long v13, v16, v8

    xor-long v23, v16, v13

    shl-long v13, v23, v0

    xor-long v16, v23, v13

    shl-long v13, v16, v1

    xor-long v23, v16, v13

    const/16 v13, 0x10

    shl-long v16, v23, v13

    xor-long v27, v23, v16

    const/16 v14, 0x20

    shl-long v16, v27, v14

    xor-long v23, v27, v16

    and-long v16, v23, v9

    ushr-long v23, v16, v15

    xor-long v27, v19, v23

    shl-long v18, v27, v5

    xor-long v23, v27, v18

    shl-long v18, v23, v8

    xor-long v27, v23, v18

    shl-long v18, v27, v0

    xor-long v23, v27, v18

    shl-long v18, v23, v1

    xor-long v27, v23, v18

    shl-long v18, v27, v13

    xor-long v23, v27, v18

    shl-long v18, v23, v14

    xor-long v27, v23, v18

    and-long v18, v27, v9

    ushr-long v9, v18, v15

    xor-long v23, v11, v9

    shl-long v9, v23, v5

    xor-long v11, v23, v9

    shl-long v9, v11, v8

    xor-long v23, v11, v9

    shl-long v9, v23, v0

    xor-long v11, v23, v9

    shl-long v9, v11, v1

    xor-long v23, v11, v9

    shl-long v9, v23, v13

    xor-long v11, v23, v9

    shl-long v9, v11, v14

    xor-long v13, v11, v9

    .line 277
    aput-wide v6, p2, v2

    xor-long v6, v21, v16

    .line 278
    aget-wide v9, v3, v8

    xor-long v11, v6, v9

    aput-wide v11, p2, v5

    xor-long v5, v25, v18

    xor-long v9, v5, v16

    .line 279
    aget-wide v5, v3, v4

    xor-long v11, v9, v5

    aput-wide v11, p2, v8

    xor-long v5, v13, v18

    .line 280
    aput-wide v5, p2, v4

    .line 281
    aget-wide v5, v3, v8

    xor-long v7, v13, v5

    aput-wide v7, p2, v0

    .line 282
    aget-wide v0, v3, v4

    const/4 v2, 0x5

    aput-wide v0, p2, v2

    .line 284
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulw(JJ[JI)V
    .locals 20

    move-wide/from16 v0, p0

    const/16 v5, 0x8

    .line 292
    new-array v5, v5, [J

    const/4 v6, 0x1

    aput-wide p2, v5, v6

    .line 295
    aget-wide v7, v5, v6

    shl-long/2addr v7, v6

    const/4 v9, 0x2

    aput-wide v7, v5, v9

    .line 296
    aget-wide v7, v5, v9

    xor-long v10, v7, p2

    const/4 v7, 0x3

    aput-wide v10, v5, v7

    .line 297
    aget-wide v8, v5, v9

    shl-long/2addr v8, v6

    const/4 v10, 0x4

    aput-wide v8, v5, v10

    .line 298
    aget-wide v8, v5, v10

    xor-long v10, v8, p2

    const/4 v8, 0x5

    aput-wide v10, v5, v8

    .line 299
    aget-wide v8, v5, v7

    shl-long/2addr v8, v6

    const/4 v10, 0x6

    aput-wide v8, v5, v10

    .line 300
    aget-wide v8, v5, v10

    xor-long v11, v8, p2

    const/4 v2, 0x7

    aput-wide v11, v5, v2

    long-to-int v3, v0

    and-int/lit8 v8, v3, 0x7

    .line 303
    aget-wide v8, v5, v8

    ushr-int/lit8 v11, v3, 0x3

    and-int/2addr v11, v2

    aget-wide v11, v5, v11

    shl-long/2addr v11, v7

    xor-long v13, v8, v11

    ushr-int/2addr v3, v10

    and-int/2addr v3, v2

    aget-wide v8, v5, v3

    shl-long/2addr v8, v10

    xor-long v11, v13, v8

    const-wide/16 v8, 0x0

    const/16 v3, 0x21

    :goto_0
    ushr-long v13, v0, v3

    long-to-int v13, v13

    and-int/lit8 v14, v13, 0x7

    .line 310
    aget-wide v14, v5, v14

    ushr-int/lit8 v16, v13, 0x3

    and-int/lit8 v16, v16, 0x7

    aget-wide v16, v5, v16

    shl-long v16, v16, v7

    xor-long v18, v14, v16

    ushr-int/lit8 v14, v13, 0x6

    and-int/2addr v14, v2

    aget-wide v14, v5, v14

    shl-long/2addr v14, v10

    xor-long v16, v18, v14

    const/16 v14, 0x9

    ushr-int/2addr v13, v14

    and-int/2addr v13, v2

    aget-wide v18, v5, v13

    shl-long v13, v18, v14

    xor-long v18, v16, v13

    shl-long v13, v18, v3

    xor-long v15, v11, v13

    neg-int v11, v3

    ushr-long v11, v18, v11

    xor-long v13, v8, v11

    add-int/lit8 v3, v3, -0xc

    if-gtz v3, :cond_0

    const-wide v0, 0xfffffffffffL

    and-long v2, v15, v0

    .line 321
    aput-wide v2, p4, p5

    add-int/lit8 v0, p5, 0x1

    const/16 v1, 0x2c

    ushr-long v1, v15, v1

    const/16 v3, 0x14

    shl-long v4, v13, v3

    xor-long v6, v1, v4

    .line 322
    aput-wide v6, p4, v0

    return-void

    :cond_0
    move-wide v8, v13

    move-wide v11, v15

    goto :goto_0
.end method

.method protected static implSquare([J[J)V
    .locals 6

    const/4 v0, 0x0

    .line 327
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    .line 328
    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 330
    aget-wide v0, p0, v2

    long-to-int p0, v0

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand8to16(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/4 p0, 0x4

    aput-wide v4, p1, p0

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

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
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    .line 59
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/4 v2, 0x2

    .line 60
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 61
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/4 v2, 0x4

    .line 62
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 63
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x8

    .line 64
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 65
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x10

    .line 66
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 67
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x20

    .line 68
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 69
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 70
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    .line 71
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 p0, 0x41

    .line 72
    invoke-static {v1, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 73
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 74
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    .line 79
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 80
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    .line 81
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    .line 86
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 87
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    .line 88
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 23

    const/4 v1, 0x0

    .line 93
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const/4 v13, 0x4

    aget-wide v13, p0, v13

    const/16 v0, 0x3d

    shl-long v15, v13, v0

    const/16 v17, 0x3f

    shl-long v18, v13, v17

    xor-long v20, v15, v18

    xor-long v15, v5, v20

    ushr-long v5, v13, v10

    ushr-long v18, v13, v4

    xor-long v20, v5, v18

    xor-long v5, v20, v13

    const/16 v18, 0x5

    shl-long v19, v13, v18

    xor-long v21, v5, v19

    xor-long v5, v8, v21

    const/16 v8, 0x3b

    ushr-long/2addr v13, v8

    xor-long v19, v11, v13

    shl-long v11, v19, v0

    shl-long v13, v19, v17

    xor-long v21, v11, v13

    xor-long v11, v2, v21

    ushr-long v2, v19, v10

    ushr-long v13, v19, v4

    xor-long v21, v2, v13

    xor-long v2, v21, v19

    shl-long v13, v19, v18

    xor-long v17, v2, v13

    xor-long v2, v15, v17

    ushr-long v8, v19, v8

    xor-long v13, v5, v8

    ushr-long v5, v13, v10

    xor-long v8, v11, v5

    shl-long v11, v5, v7

    xor-long v15, v8, v11

    shl-long v8, v5, v10

    xor-long v10, v15, v8

    const/16 v0, 0x8

    shl-long v8, v5, v0

    xor-long v15, v10, v8

    .line 104
    aput-wide v15, p1, v1

    const/16 v0, 0x38

    ushr-long/2addr v5, v0

    xor-long v8, v2, v5

    .line 105
    aput-wide v8, p1, v4

    const-wide/16 v1, 0x7

    and-long v3, v13, v1

    .line 106
    aput-wide v3, p1, v7

    return-void
.end method

.method public static reduce61([JI)V
    .locals 14

    add-int/lit8 v0, p1, 0x2

    .line 111
    aget-wide v1, p0, v0

    const/4 v3, 0x3

    ushr-long v4, v1, v3

    .line 112
    aget-wide v6, p0, p1

    const/4 v8, 0x2

    shl-long v8, v4, v8

    xor-long v10, v4, v8

    shl-long v8, v4, v3

    xor-long v12, v10, v8

    const/16 v3, 0x8

    shl-long v8, v4, v3

    xor-long v10, v12, v8

    xor-long v8, v6, v10

    aput-wide v8, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 113
    aget-wide v6, p0, p1

    const/16 v3, 0x38

    ushr-long v3, v4, v3

    xor-long v8, v6, v3

    aput-wide v8, p0, p1

    const-wide/16 v3, 0x7

    and-long v5, v1, v3

    .line 114
    aput-wide v5, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 18

    move-object/from16 v1, p1

    .line 119
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v2

    const/4 v3, 0x0

    .line 122
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

    .line 124
    aput-wide v7, v2, v3

    const/4 v4, 0x2

    .line 126
    aget-wide v4, p0, v4

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    and-long v7, v4, v9

    ushr-long/2addr v4, v13

    .line 128
    aput-wide v4, v2, v6

    .line 130
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 132
    aget-wide v4, v1, v3

    xor-long v9, v4, v16

    aput-wide v9, v1, v3

    .line 133
    aget-wide v2, v1, v6

    xor-long v4, v2, v7

    aput-wide v4, v1, v6

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    const/4 v0, 0x5

    .line 138
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 140
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    const/4 v0, 0x5

    .line 145
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 146
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 147
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    const/4 v0, 0x5

    .line 154
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 156
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 160
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 161
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
