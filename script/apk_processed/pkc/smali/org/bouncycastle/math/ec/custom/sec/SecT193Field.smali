.class public Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;
.super Ljava/lang/Object;
.source "SecT193Field.java"


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

    const/4 v0, 0x3

    .line 37
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    .line 42
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object p0

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce63([JI)V

    return-object p0
.end method

.method protected static implCompactExt([J)V
    .locals 28

    const/4 v0, 0x0

    .line 191
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

    const/16 v24, 0x31

    shl-long v24, v4, v24

    xor-long v26, v1, v24

    .line 192
    aput-wide v26, p0, v0

    const/16 v0, 0xf

    ushr-long v0, v4, v0

    const/16 v2, 0x22

    shl-long v4, v7, v2

    xor-long v24, v0, v4

    .line 193
    aput-wide v24, p0, v3

    const/16 v0, 0x1e

    ushr-long v0, v7, v0

    const/16 v2, 0x13

    shl-long v2, v10, v2

    xor-long v4, v0, v2

    .line 194
    aput-wide v4, p0, v6

    const/16 v0, 0x2d

    ushr-long v0, v10, v0

    shl-long v2, v13, v12

    xor-long v4, v0, v2

    const/16 v0, 0x35

    shl-long v0, v16, v0

    xor-long v2, v4, v0

    .line 195
    aput-wide v2, p0, v9

    const/16 v0, 0x3c

    ushr-long v0, v13, v0

    const/16 v2, 0x26

    shl-long v2, v19, v2

    xor-long v4, v0, v2

    const/16 v0, 0xb

    ushr-long v0, v16, v0

    xor-long v2, v4, v0

    .line 197
    aput-wide v2, p0, v12

    const/16 v0, 0x1a

    ushr-long v0, v19, v0

    const/16 v2, 0x17

    shl-long v2, v22, v2

    xor-long v4, v0, v2

    .line 199
    aput-wide v4, p0, v15

    const/16 v0, 0x29

    ushr-long v0, v22, v0

    .line 200
    aput-wide v0, p0, v18

    const-wide/16 v0, 0x0

    .line 201
    aput-wide v0, p0, v21

    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 19

    const/4 v1, 0x0

    .line 206
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const-wide v13, 0x1ffffffffffffL

    and-long v15, v2, v13

    .line 207
    aput-wide v15, p1, v1

    const/16 v0, 0x31

    ushr-long v1, v2, v0

    const/16 v0, 0xf

    shl-long v15, v5, v0

    xor-long v17, v1, v15

    and-long v1, v17, v13

    .line 208
    aput-wide v1, p1, v4

    const/16 v0, 0x22

    ushr-long v1, v5, v0

    const/16 v0, 0x1e

    shl-long v3, v8, v0

    xor-long v5, v1, v3

    and-long v1, v5, v13

    .line 209
    aput-wide v1, p1, v7

    const/16 v0, 0x13

    ushr-long v1, v8, v0

    const/16 v0, 0x2d

    shl-long v3, v11, v0

    xor-long v5, v1, v3

    .line 210
    aput-wide v5, p1, v10

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 22

    const/4 v6, 0x4

    .line 219
    new-array v7, v6, [J

    new-array v8, v6, [J

    move-object/from16 v0, p0

    .line 220
    invoke-static {v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    move-object/from16 v0, p1

    .line 221
    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    const/4 v9, 0x0

    .line 223
    aget-wide v0, v7, v9

    aget-wide v2, v8, v9

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v10, 0x1

    .line 224
    aget-wide v0, v7, v10

    aget-wide v2, v8, v10

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v11, 0x2

    .line 225
    aget-wide v0, v7, v11

    aget-wide v2, v8, v11

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v12, 0x3

    .line 226
    aget-wide v0, v7, v12

    aget-wide v2, v8, v12

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v13, 0x5

    const/4 v0, 0x5

    :goto_0
    if-lez v0, :cond_0

    .line 231
    aget-wide v1, p2, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p2, v3

    xor-long v14, v1, v3

    aput-wide v14, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
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

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 235
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

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v0, 0x7

    :goto_1
    if-le v0, v10, :cond_1

    .line 240
    aget-wide v1, p2, v0

    add-int/lit8 v3, v0, -0x2

    aget-wide v3, p2, v3

    xor-long v14, v1, v3

    aput-wide v14, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 245
    :cond_1
    aget-wide v0, v7, v9

    aget-wide v2, v7, v11

    xor-long v14, v0, v2

    aget-wide v0, v7, v10

    aget-wide v2, v7, v12

    xor-long v20, v0, v2

    .line 246
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

    .line 247
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 248
    new-array v0, v12, [J

    const/16 v19, 0x0

    move-object/from16 v18, v0

    .line 249
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    const/4 v1, 0x1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v7

    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 250
    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 251
    aget-wide v1, v0, v9

    aget-wide v3, v0, v10

    aget-wide v7, v0, v11

    .line 252
    aget-wide v9, p2, v11

    xor-long v14, v9, v1

    aput-wide v14, p2, v11

    .line 253
    aget-wide v9, p2, v12

    xor-long v14, v1, v3

    xor-long v0, v9, v14

    aput-wide v0, p2, v12

    .line 254
    aget-wide v0, p2, v6

    xor-long v9, v7, v3

    xor-long v2, v0, v9

    aput-wide v2, p2, v6

    .line 255
    aget-wide v0, p2, v13

    xor-long v2, v0, v7

    aput-wide v2, p2, v13

    .line 258
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulwAcc(JJ[JI)V
    .locals 21

    move-wide/from16 v0, p0

    const/16 v5, 0x8

    .line 266
    new-array v5, v5, [J

    const/4 v6, 0x1

    aput-wide p2, v5, v6

    .line 269
    aget-wide v7, v5, v6

    shl-long/2addr v7, v6

    const/4 v9, 0x2

    aput-wide v7, v5, v9

    .line 270
    aget-wide v7, v5, v9

    xor-long v10, v7, p2

    const/4 v7, 0x3

    aput-wide v10, v5, v7

    .line 271
    aget-wide v8, v5, v9

    shl-long/2addr v8, v6

    const/4 v10, 0x4

    aput-wide v8, v5, v10

    .line 272
    aget-wide v8, v5, v10

    xor-long v10, v8, p2

    const/4 v8, 0x5

    aput-wide v10, v5, v8

    .line 273
    aget-wide v8, v5, v7

    shl-long/2addr v8, v6

    const/4 v10, 0x6

    aput-wide v8, v5, v10

    .line 274
    aget-wide v8, v5, v10

    xor-long v11, v8, p2

    const/4 v2, 0x7

    aput-wide v11, v5, v2

    long-to-int v3, v0

    and-int/lit8 v8, v3, 0x7

    .line 277
    aget-wide v8, v5, v8

    ushr-int/2addr v3, v7

    and-int/2addr v3, v2

    aget-wide v11, v5, v3

    shl-long/2addr v11, v7

    xor-long v13, v8, v11

    const-wide/16 v8, 0x0

    const/16 v3, 0x24

    :goto_0
    ushr-long v11, v0, v3

    long-to-int v11, v11

    and-int/lit8 v12, v11, 0x7

    .line 283
    aget-wide v15, v5, v12

    ushr-int/lit8 v12, v11, 0x3

    and-int/2addr v12, v2

    aget-wide v17, v5, v12

    shl-long v17, v17, v7

    xor-long v19, v15, v17

    ushr-int/lit8 v12, v11, 0x6

    and-int/2addr v12, v2

    aget-wide v15, v5, v12

    shl-long/2addr v15, v10

    xor-long v17, v19, v15

    ushr-int/lit8 v12, v11, 0x9

    and-int/2addr v12, v2

    aget-wide v15, v5, v12

    const/16 v12, 0x9

    shl-long/2addr v15, v12

    xor-long v19, v17, v15

    const/16 v12, 0xc

    ushr-int/2addr v11, v12

    and-int/2addr v11, v2

    aget-wide v15, v5, v11

    shl-long v11, v15, v12

    xor-long v15, v19, v11

    shl-long v11, v15, v3

    xor-long v17, v13, v11

    neg-int v11, v3

    ushr-long v11, v15, v11

    xor-long v13, v8, v11

    add-int/lit8 v3, v3, -0xf

    if-gtz v3, :cond_0

    .line 295
    aget-wide v0, p4, p5

    const-wide v2, 0x1ffffffffffffL

    and-long v7, v17, v2

    xor-long v2, v0, v7

    aput-wide v2, p4, p5

    add-int/lit8 v0, p5, 0x1

    .line 296
    aget-wide v1, p4, v0

    const/16 v3, 0x31

    ushr-long v4, v17, v3

    const/16 v3, 0xf

    shl-long v6, v13, v3

    xor-long v8, v4, v6

    xor-long v4, v1, v8

    aput-wide v4, p4, v0

    return-void

    :cond_0
    move-wide v8, v13

    move-wide/from16 v13, v17

    goto :goto_0
.end method

.method protected static implSquare([J[J)V
    .locals 6

    const/4 v0, 0x0

    .line 301
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    .line 302
    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 303
    aget-wide v0, p0, v2

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x3

    .line 304
    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    and-long v4, v0, v2

    const/4 p0, 0x6

    aput-wide v4, p1, p0

    return-void
.end method

.method public static invert([J[J)V
    .locals 2

    .line 49
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 56
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 57
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 59
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->square([J[J)V

    const/4 p0, 0x1

    .line 62
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 63
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 64
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 65
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/4 p0, 0x3

    .line 68
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 69
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/4 p0, 0x6

    .line 72
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 73
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/16 p0, 0xc

    .line 76
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 77
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/16 p0, 0x18

    .line 80
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 81
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/16 p0, 0x30

    .line 84
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 85
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    const/16 p0, 0x60

    .line 88
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 89
    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    .line 94
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 95
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 96
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    .line 101
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 102
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 103
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 27

    const/4 v1, 0x0

    .line 108
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

    const/16 v17, 0x6

    aget-wide v17, p0, v17

    const/16 v0, 0x3f

    shl-long v19, v17, v0

    xor-long v21, v8, v19

    ushr-long v8, v17, v4

    const/16 v19, 0xe

    shl-long v23, v17, v19

    xor-long v25, v8, v23

    xor-long v8, v11, v25

    const/16 v11, 0x32

    ushr-long v17, v17, v11

    xor-long v23, v13, v17

    shl-long v12, v15, v0

    xor-long v17, v5, v12

    ushr-long v5, v15, v4

    shl-long v12, v15, v19

    xor-long v25, v5, v12

    xor-long v5, v21, v25

    ushr-long v12, v15, v11

    xor-long v14, v8, v12

    shl-long v8, v23, v0

    xor-long v12, v2, v8

    ushr-long v2, v23, v4

    shl-long v8, v23, v19

    xor-long v19, v2, v8

    xor-long v2, v17, v19

    ushr-long v8, v23, v11

    xor-long v16, v5, v8

    ushr-long v5, v14, v4

    xor-long v8, v12, v5

    const/16 v0, 0xf

    shl-long v11, v5, v0

    xor-long v18, v8, v11

    .line 123
    aput-wide v18, p1, v1

    const/16 v0, 0x31

    ushr-long/2addr v5, v0

    xor-long v8, v2, v5

    .line 124
    aput-wide v8, p1, v4

    .line 125
    aput-wide v16, p1, v7

    const-wide/16 v1, 0x1

    and-long v3, v14, v1

    .line 126
    aput-wide v3, p1, v10

    return-void
.end method

.method public static reduce63([JI)V
    .locals 12

    add-int/lit8 v0, p1, 0x3

    .line 131
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    ushr-long v4, v1, v3

    .line 132
    aget-wide v6, p0, p1

    const/16 v8, 0xf

    shl-long v8, v4, v8

    xor-long v10, v4, v8

    xor-long v8, v6, v10

    aput-wide v8, p0, p1

    add-int/2addr p1, v3

    .line 133
    aget-wide v6, p0, p1

    const/16 v3, 0x31

    ushr-long v3, v4, v3

    xor-long v8, v6, v3

    aput-wide v8, p0, p1

    const-wide/16 v3, 0x1

    and-long v5, v1, v3

    .line 134
    aput-wide v5, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 18

    const/4 v1, 0x0

    .line 140
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long v14, v9, v12

    ushr-long/2addr v2, v11

    const-wide v9, -0x100000000L

    and-long v12, v5, v9

    or-long v5, v2, v12

    const/4 v2, 0x2

    .line 144
    aget-wide v9, p0, v2

    invoke-static {v9, v10}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v9

    and-long v12, v9, v7

    const/4 v3, 0x3

    .line 145
    aget-wide v7, p0, v3

    shl-long/2addr v7, v11

    xor-long v16, v12, v7

    ushr-long v7, v9, v11

    const/16 v0, 0x8

    shl-long v9, v5, v0

    xor-long v11, v14, v9

    .line 148
    aput-wide v11, p1, v1

    shl-long v9, v7, v0

    xor-long v11, v16, v9

    const/16 v0, 0x38

    ushr-long v9, v5, v0

    xor-long v13, v11, v9

    const/16 v1, 0x21

    shl-long v9, v5, v1

    xor-long v11, v13, v9

    .line 149
    aput-wide v11, p1, v4

    ushr-long v9, v7, v0

    shl-long v11, v7, v1

    xor-long v13, v9, v11

    const/16 v0, 0x1f

    ushr-long v4, v5, v0

    xor-long v9, v13, v4

    .line 150
    aput-wide v9, p1, v2

    ushr-long v1, v7, v0

    .line 151
    aput-wide v1, p1, v3

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    .line 156
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 158
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    .line 163
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 164
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 165
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    .line 172
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 173
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 174
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 178
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 179
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
