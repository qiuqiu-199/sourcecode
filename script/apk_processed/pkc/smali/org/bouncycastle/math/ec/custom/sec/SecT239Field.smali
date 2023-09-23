.class public Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;
.super Ljava/lang/Object;
.source "SecT239Field.java"


# direct methods
.method public static add([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 15
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 16
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 17
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x3

    .line 18
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long v3, v1, p0

    aput-wide v3, p2, v0

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 23
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x1

    .line 24
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x2

    .line 25
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x3

    .line 26
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x4

    .line 27
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x5

    .line 28
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x6

    .line 29
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v5, v1, v3

    aput-wide v5, p2, v0

    const/4 v0, 0x7

    .line 30
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long v3, v1, p0

    aput-wide v3, p2, v0

    return-void
.end method

.method public static addOne([J[J)V
    .locals 7

    const/4 v0, 0x0

    .line 35
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long v5, v1, v3

    aput-wide v5, p1, v0

    const/4 v0, 0x1

    .line 36
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    .line 37
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    .line 38
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    .line 43
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object p0

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce17([JI)V

    return-object p0
.end method

.method protected static implCompactExt([J)V
    .locals 28

    const/4 v0, 0x0

    .line 214
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

    const/16 v18, 0x6

    aget-wide v19, p0, v18

    const/16 v21, 0x7

    aget-wide v22, p0, v21

    const/16 v24, 0x3c

    shl-long v24, v4, v24

    xor-long v26, v1, v24

    .line 215
    aput-wide v26, p0, v0

    ushr-long v0, v4, v12

    const/16 v2, 0x38

    shl-long v4, v7, v2

    xor-long v24, v0, v4

    .line 216
    aput-wide v24, p0, v3

    const/16 v0, 0x8

    ushr-long v0, v7, v0

    const/16 v2, 0x34

    shl-long v2, v10, v2

    xor-long v4, v0, v2

    .line 217
    aput-wide v4, p0, v6

    const/16 v0, 0xc

    ushr-long v0, v10, v0

    const/16 v2, 0x30

    shl-long v2, v13, v2

    xor-long v4, v0, v2

    .line 218
    aput-wide v4, p0, v9

    const/16 v0, 0x10

    ushr-long v0, v13, v0

    const/16 v2, 0x2c

    shl-long v2, v16, v2

    xor-long v4, v0, v2

    .line 219
    aput-wide v4, p0, v12

    const/16 v0, 0x14

    ushr-long v0, v16, v0

    const/16 v2, 0x28

    shl-long v2, v19, v2

    xor-long v4, v0, v2

    .line 220
    aput-wide v4, p0, v15

    const/16 v0, 0x18

    ushr-long v0, v19, v0

    const/16 v2, 0x24

    shl-long v2, v22, v2

    xor-long v4, v0, v2

    .line 221
    aput-wide v4, p0, v18

    const/16 v0, 0x1c

    ushr-long v0, v22, v0

    .line 222
    aput-wide v0, p0, v21

    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 19

    const/4 v1, 0x0

    .line 227
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const-wide v13, 0xfffffffffffffffL

    and-long v15, v2, v13

    .line 228
    aput-wide v15, p1, v1

    const/16 v0, 0x3c

    ushr-long v1, v2, v0

    const/4 v0, 0x4

    shl-long v15, v5, v0

    xor-long v17, v1, v15

    and-long v1, v17, v13

    .line 229
    aput-wide v1, p1, v4

    const/16 v0, 0x38

    ushr-long v1, v5, v0

    const/16 v0, 0x8

    shl-long v3, v8, v0

    xor-long v5, v1, v3

    and-long v1, v5, v13

    .line 230
    aput-wide v1, p1, v7

    const/16 v0, 0x34

    ushr-long v1, v8, v0

    const/16 v0, 0xc

    shl-long v3, v11, v0

    xor-long v5, v1, v3

    .line 231
    aput-wide v5, p1, v10

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 22

    const/4 v6, 0x4

    .line 240
    new-array v7, v6, [J

    new-array v8, v6, [J

    move-object/from16 v0, p0

    .line 241
    invoke-static {v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    move-object/from16 v0, p1

    .line 242
    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    const/4 v9, 0x0

    .line 244
    aget-wide v0, v7, v9

    aget-wide v2, v8, v9

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v10, 0x1

    .line 245
    aget-wide v0, v7, v10

    aget-wide v2, v8, v10

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v11, 0x2

    .line 246
    aget-wide v0, v7, v11

    aget-wide v2, v8, v11

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v12, 0x3

    .line 247
    aget-wide v0, v7, v12

    aget-wide v2, v8, v12

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v13, 0x5

    const/4 v0, 0x5

    :goto_0
    if-lez v0, :cond_0

    .line 252
    aget-wide v1, p2, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p2, v3

    xor-long v14, v1, v3

    aput-wide v14, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 255
    :cond_0
    aget-wide v0, v7, v9

    aget-wide v2, v7, v10

    xor-long v4, v0, v2

    aget-wide v0, v8, v9

    aget-wide v2, v8, v10

    xor-long v14, v0, v2

    const/16 v16, 0x1

    move-wide v0, v4

    move-wide v2, v14

    move-object/from16 v4, p2

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 256
    aget-wide v0, v7, v11

    aget-wide v2, v7, v12

    xor-long v4, v0, v2

    aget-wide v0, v8, v11

    aget-wide v2, v8, v12

    xor-long v14, v0, v2

    const/16 v16, 0x3

    move-wide v0, v4

    move-wide v2, v14

    move-object/from16 v4, p2

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v0, 0x7

    :goto_1
    if-le v0, v10, :cond_1

    .line 261
    aget-wide v1, p2, v0

    add-int/lit8 v3, v0, -0x2

    aget-wide v3, p2, v3

    xor-long v14, v1, v3

    aput-wide v14, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 266
    :cond_1
    aget-wide v0, v7, v9

    aget-wide v2, v7, v11

    xor-long v14, v0, v2

    aget-wide v0, v7, v10

    aget-wide v2, v7, v12

    xor-long v20, v0, v2

    .line 267
    aget-wide v0, v8, v9

    aget-wide v2, v8, v11

    xor-long v16, v0, v2

    aget-wide v0, v8, v10

    aget-wide v2, v8, v12

    xor-long v7, v0, v2

    xor-long v0, v14, v20

    xor-long v2, v16, v7

    const/4 v5, 0x3

    move-object/from16 v4, p2

    .line 268
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 269
    new-array v0, v12, [J

    const/16 v19, 0x0

    move-object/from16 v18, v0

    .line 270
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    const/4 v1, 0x1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v7

    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 271
    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 272
    aget-wide v1, v0, v9

    aget-wide v3, v0, v10

    aget-wide v7, v0, v11

    .line 273
    aget-wide v9, p2, v11

    xor-long v14, v9, v1

    aput-wide v14, p2, v11

    .line 274
    aget-wide v9, p2, v12

    xor-long v14, v1, v3

    xor-long v0, v9, v14

    aput-wide v0, p2, v12

    .line 275
    aget-wide v0, p2, v6

    xor-long v9, v7, v3

    xor-long v2, v0, v9

    aput-wide v2, p2, v6

    .line 276
    aget-wide v0, p2, v13

    xor-long v2, v0, v7

    aput-wide v2, p2, v13

    .line 279
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulwAcc(JJ[JI)V
    .locals 22

    move-wide/from16 v0, p0

    const/16 v5, 0x8

    .line 287
    new-array v5, v5, [J

    const/4 v6, 0x1

    aput-wide p2, v5, v6

    .line 290
    aget-wide v7, v5, v6

    shl-long/2addr v7, v6

    const/4 v9, 0x2

    aput-wide v7, v5, v9

    .line 291
    aget-wide v7, v5, v9

    xor-long v10, v7, p2

    const/4 v7, 0x3

    aput-wide v10, v5, v7

    .line 292
    aget-wide v8, v5, v9

    shl-long/2addr v8, v6

    const/4 v10, 0x4

    aput-wide v8, v5, v10

    .line 293
    aget-wide v8, v5, v10

    xor-long v11, v8, p2

    const/4 v8, 0x5

    aput-wide v11, v5, v8

    .line 294
    aget-wide v11, v5, v7

    shl-long/2addr v11, v6

    const/4 v9, 0x6

    aput-wide v11, v5, v9

    .line 295
    aget-wide v11, v5, v9

    xor-long v13, v11, p2

    const/4 v9, 0x7

    aput-wide v13, v5, v9

    long-to-int v11, v0

    and-int/lit8 v12, v11, 0x7

    .line 298
    aget-wide v12, v5, v12

    ushr-int/2addr v11, v7

    and-int/2addr v11, v9

    aget-wide v14, v5, v11

    shl-long/2addr v14, v7

    xor-long v16, v12, v14

    const-wide/16 v11, 0x0

    const/16 v13, 0x36

    move-wide/from16 v18, v11

    :goto_0
    ushr-long v10, v0, v13

    long-to-int v10, v10

    and-int/lit8 v11, v10, 0x7

    .line 304
    aget-wide v11, v5, v11

    ushr-int/2addr v10, v7

    and-int/2addr v10, v9

    aget-wide v14, v5, v10

    shl-long/2addr v14, v7

    xor-long v20, v11, v14

    shl-long v10, v20, v13

    xor-long v14, v16, v10

    neg-int v10, v13

    ushr-long v10, v20, v10

    xor-long v16, v18, v10

    add-int/lit8 v13, v13, -0x6

    if-gtz v13, :cond_0

    const-wide v9, 0x820820820820820L

    and-long v11, v0, v9

    const/4 v0, 0x4

    shl-long v1, p2, v0

    const/16 v0, 0x3f

    shr-long v0, v1, v0

    and-long v2, v11, v0

    ushr-long v0, v2, v8

    xor-long v2, v16, v0

    .line 315
    aget-wide v0, p4, p5

    const-wide v7, 0xfffffffffffffffL

    and-long v9, v14, v7

    xor-long v7, v0, v9

    aput-wide v7, p4, p5

    add-int/lit8 v0, p5, 0x1

    .line 316
    aget-wide v4, p4, v0

    const/16 v1, 0x3c

    ushr-long v6, v14, v1

    const/4 v10, 0x4

    shl-long v1, v2, v10

    xor-long v8, v6, v1

    xor-long v1, v4, v8

    aput-wide v1, p4, v0

    return-void

    :cond_0
    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    goto :goto_0
.end method

.method protected static implSquare([J[J)V
    .locals 6

    const/4 v0, 0x0

    .line 321
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    .line 322
    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 323
    aget-wide v0, p0, v2

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x3

    .line 325
    aget-wide v0, p0, v0

    long-to-int p0, v0

    .line 326
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    const/4 p0, 0x6

    aput-wide v2, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    .line 327
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/4 p0, 0x7

    aput-wide v4, p1, p0

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    .line 50
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 57
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 58
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 60
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 61
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 62
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 63
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/4 v2, 0x3

    .line 64
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 65
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 66
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 67
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/4 v2, 0x7

    .line 68
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 69
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/16 v2, 0xe

    .line 70
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 71
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 72
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 73
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/16 v2, 0x1d

    .line 74
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 75
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 76
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 77
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/16 v2, 0x3b

    .line 78
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 79
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 80
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 81
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    const/16 p0, 0x77

    .line 82
    invoke-static {v1, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 83
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    .line 89
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 90
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 91
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    .line 96
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 97
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 98
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 27

    const/4 v1, 0x0

    .line 103
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const/4 v13, 0x4

    .line 104
    aget-wide v13, p0, v13

    const/4 v15, 0x5

    aget-wide v15, p0, v15

    const/16 v17, 0x6

    aget-wide v17, p0, v17

    const/16 v19, 0x7

    aget-wide v19, p0, v19

    const/16 v0, 0x11

    shl-long v21, v19, v0

    xor-long v23, v11, v21

    const/16 v11, 0x2f

    ushr-long v21, v19, v11

    xor-long v25, v13, v21

    shl-long v12, v19, v11

    xor-long v21, v15, v12

    ushr-long v12, v19, v0

    xor-long v14, v17, v12

    shl-long v12, v14, v0

    xor-long v16, v8, v12

    ushr-long v8, v14, v11

    xor-long v12, v23, v8

    shl-long v8, v14, v11

    xor-long v18, v25, v8

    ushr-long v8, v14, v0

    xor-long v14, v21, v8

    shl-long v8, v14, v0

    xor-long v20, v5, v8

    ushr-long v5, v14, v11

    xor-long v8, v16, v5

    shl-long v5, v14, v11

    xor-long v16, v12, v5

    ushr-long v5, v14, v0

    xor-long v12, v18, v5

    shl-long v5, v12, v0

    xor-long v14, v2, v5

    ushr-long v2, v12, v11

    xor-long v5, v20, v2

    shl-long v2, v12, v11

    xor-long v18, v8, v2

    ushr-long v2, v12, v0

    xor-long v8, v16, v2

    ushr-long v2, v8, v11

    xor-long v11, v14, v2

    .line 127
    aput-wide v11, p1, v1

    .line 128
    aput-wide v5, p1, v4

    const/16 v0, 0x1e

    shl-long v1, v2, v0

    xor-long v3, v18, v1

    .line 129
    aput-wide v3, p1, v7

    const-wide v1, 0x7fffffffffffL

    and-long v3, v8, v1

    .line 130
    aput-wide v3, p1, v10

    return-void
.end method

.method public static reduce17([JI)V
    .locals 9

    add-int/lit8 v0, p1, 0x3

    .line 135
    aget-wide v1, p0, v0

    const/16 v3, 0x2f

    ushr-long v3, v1, v3

    .line 136
    aget-wide v5, p0, p1

    xor-long v7, v5, v3

    aput-wide v7, p0, p1

    add-int/lit8 p1, p1, 0x2

    .line 137
    aget-wide v5, p0, p1

    const/16 v7, 0x1e

    shl-long/2addr v3, v7

    xor-long v7, v5, v3

    aput-wide v7, p0, p1

    const-wide v3, 0x7fffffffffffL

    and-long v5, v1, v3

    .line 138
    aput-wide v5, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 29

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 144
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long v15, v10, v13

    ushr-long/2addr v3, v12

    const-wide v10, -0x100000000L

    and-long v13, v6, v10

    or-long v6, v3, v13

    const/4 v3, 0x2

    .line 148
    aget-wide v13, p0, v3

    invoke-static {v13, v14}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v13

    const/4 v4, 0x3

    aget-wide v2, p0, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    and-long v17, v13, v8

    shl-long v8, v2, v12

    or-long v19, v17, v8

    ushr-long v8, v13, v12

    and-long v12, v2, v10

    or-long v2, v8, v12

    const/16 v0, 0x31

    ushr-long v8, v2, v0

    ushr-long v10, v6, v0

    const/16 v0, 0xf

    shl-long v12, v2, v0

    or-long v17, v10, v12

    shl-long v10, v6, v0

    xor-long v12, v2, v10

    .line 157
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    const/4 v2, 0x2

    .line 159
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    .line 160
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 162
    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x6

    aget v10, v2, v3

    and-int/lit8 v10, v10, 0x3f

    .line 164
    aget-wide v21, v0, v4

    shl-long v23, v6, v10

    xor-long v25, v21, v23

    aput-wide v25, v0, v4

    add-int/lit8 v11, v4, 0x1

    .line 165
    aget-wide v21, v0, v11

    shl-long v23, v12, v10

    neg-int v14, v10

    ushr-long v25, v6, v14

    or-long v27, v23, v25

    xor-long v23, v21, v27

    aput-wide v23, v0, v11

    add-int/lit8 v11, v4, 0x2

    .line 166
    aget-wide v21, v0, v11

    shl-long v23, v17, v10

    ushr-long v25, v12, v14

    or-long v27, v23, v25

    xor-long v23, v21, v27

    aput-wide v23, v0, v11

    add-int/lit8 v11, v4, 0x3

    .line 167
    aget-wide v21, v0, v11

    shl-long v23, v8, v10

    ushr-long v25, v17, v14

    or-long v27, v23, v25

    xor-long v23, v21, v27

    aput-wide v23, v0, v11

    add-int/lit8 v4, v4, 0x4

    .line 168
    aget-wide v10, v0, v4

    ushr-long v21, v8, v14

    xor-long v23, v10, v21

    aput-wide v23, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    const/4 v0, 0x0

    .line 173
    aget-wide v2, v1, v0

    xor-long v6, v2, v15

    aput-wide v6, v1, v0

    .line 174
    aget-wide v2, v1, v5

    xor-long v6, v2, v19

    aput-wide v6, v1, v5

    return-void

    :array_0
    .array-data 4
        0x27
        0x78
    .end array-data
.end method

.method public static square([J[J)V
    .locals 1

    .line 179
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 180
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 181
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    .line 186
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 187
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 188
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    .line 195
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 196
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 197
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 201
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 202
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
