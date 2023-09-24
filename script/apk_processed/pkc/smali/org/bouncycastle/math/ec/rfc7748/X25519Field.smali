.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519Field;
.super Ljava/lang/Object;
.source "X25519Field.java"


# direct methods
.method public static add([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 17
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static apm([I[I[I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 25
    aget v1, p0, v0

    aget v2, p1, v0

    add-int v3, v1, v2

    .line 26
    aput v3, p2, v0

    sub-int/2addr v1, v2

    .line 27
    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static carry([I)V
    .locals 22

    const/4 v0, 0x0

    .line 33
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    .line 34
    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    shr-int/lit8 v20, v5, 0x19

    add-int v7, v7, v20

    const v20, 0x1ffffff

    and-int v5, v5, v20

    shr-int/lit8 v21, v9, 0x19

    add-int v11, v11, v21

    and-int v9, v9, v20

    shr-int/lit8 v21, v15, 0x19

    add-int v17, v17, v21

    and-int v15, v15, v20

    shr-int/lit8 v21, v19, 0x19

    mul-int/lit8 v21, v21, 0x26

    add-int v1, v1, v21

    and-int v19, v19, v20

    shr-int/lit8 v20, v1, 0x1a

    add-int v3, v3, v20

    const v20, 0x3ffffff

    and-int v1, v1, v20

    shr-int/lit8 v21, v11, 0x1a

    add-int v13, v13, v21

    and-int v11, v11, v20

    shr-int/lit8 v21, v3, 0x1a

    add-int v5, v5, v21

    and-int v3, v3, v20

    shr-int/lit8 v21, v7, 0x1a

    add-int v9, v9, v21

    and-int v7, v7, v20

    shr-int/lit8 v21, v13, 0x1a

    add-int v15, v15, v21

    and-int v13, v13, v20

    shr-int/lit8 v21, v17, 0x1a

    add-int v19, v19, v21

    and-int v17, v17, v20

    .line 50
    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    aput v7, p0, v6

    aput v9, p0, v8

    .line 51
    aput v11, p0, v10

    aput v13, p0, v12

    aput v15, p0, v14

    aput v17, p0, v16

    aput v19, p0, v18

    return-void
.end method

.method public static copy([II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    .line 58
    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0xa

    .line 64
    new-array v0, v0, [I

    return-object v0
.end method

.method public static cswap(I[I[I)V
    .locals 4

    const/4 v0, 0x0

    rsub-int/lit8 p0, p0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 75
    aget v1, p1, v0

    aget v2, p2, v0

    xor-int v3, v1, v2

    and-int/2addr v3, p0

    xor-int/2addr v1, v3

    .line 77
    aput v1, p1, v0

    xor-int v1, v2, v3

    .line 78
    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decode([BI[I)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    add-int/lit8 p1, p1, 0x10

    const/4 v0, 0x5

    .line 85
    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    const/16 p0, 0x9

    .line 86
    aget p1, p2, p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method private static decode128([BI[II)V
    .locals 5

    add-int/lit8 v0, p1, 0x0

    .line 91
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    .line 92
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    .line 93
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v2

    add-int/lit8 p1, p1, 0xc

    .line 94
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result p0

    add-int/lit8 p1, p3, 0x0

    const v3, 0x3ffffff

    and-int v4, v0, v3

    .line 96
    aput v4, p2, p1

    add-int/lit8 p1, p3, 0x1

    shl-int/lit8 v4, v1, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v4

    and-int/2addr v0, v3

    .line 97
    aput v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shl-int/lit8 v0, v2, 0xc

    ushr-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    .line 98
    aput v0, p2, p1

    add-int/lit8 p1, p3, 0x3

    shl-int/lit8 v0, p0, 0x13

    ushr-int/lit8 v1, v2, 0xd

    or-int/2addr v0, v1

    and-int/2addr v0, v3

    .line 99
    aput v0, p2, p1

    add-int/lit8 p3, p3, 0x4

    ushr-int/lit8 p0, p0, 0x7

    .line 100
    aput p0, p2, p3

    return-void
.end method

.method private static decode32([BI)I
    .locals 2

    .line 105
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 106
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 107
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 108
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static encode([I[BI)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    add-int/lit8 p2, p2, 0x10

    const/4 v0, 0x5

    .line 115
    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    return-void
.end method

.method private static encode128([II[BI)V
    .locals 4

    add-int/lit8 v0, p1, 0x0

    .line 120
    aget v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    shl-int/lit8 p1, v1, 0x1a

    or-int/2addr p1, v0

    add-int/lit8 v0, p3, 0x0

    .line 122
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 p1, v1, 0x6

    shl-int/lit8 v0, v2, 0x14

    or-int/2addr p1, v0

    add-int/lit8 v0, p3, 0x4

    .line 123
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 p1, v2, 0xc

    shl-int/lit8 v0, v3, 0xd

    or-int/2addr p1, v0

    add-int/lit8 v0, p3, 0x8

    .line 124
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 p1, v3, 0x13

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, p1

    add-int/lit8 p3, p3, 0xc

    .line 125
    invoke-static {p0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    return-void
.end method

.method private static encode32(I[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 130
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 131
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 132
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 133
    aput-byte p0, p1, p2

    return-void
.end method

.method public static inv([I[I)V
    .locals 6

    .line 142
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 143
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/4 v2, 0x2

    .line 144
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 145
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 146
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v5, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v4, 0xa

    .line 147
    invoke-static {v5, v4, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v4, 0x19

    .line 148
    invoke-static {v1, v4, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 149
    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v5, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v4, 0x32

    .line 150
    invoke-static {v5, v4, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v4, 0x7d

    .line 151
    invoke-static {v1, v4, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 154
    invoke-static {v3, v2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    .line 155
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/4 p0, 0x3

    .line 156
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    .line 157
    invoke-static {v1, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method public static mul([II[I)V
    .locals 32

    const/4 v2, 0x0

    .line 162
    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    const/4 v6, 0x2

    aget v7, p0, v6

    const/4 v8, 0x3

    aget v9, p0, v8

    const/4 v10, 0x4

    aget v11, p0, v10

    const/4 v12, 0x5

    .line 163
    aget v13, p0, v12

    const/4 v14, 0x6

    aget v15, p0, v14

    const/16 v16, 0x7

    aget v10, p0, v16

    const/16 v17, 0x8

    aget v6, p0, v17

    const/16 v18, 0x9

    aget v0, p0, v18

    move/from16 v19, v15

    int-to-long v14, v7

    move/from16 v7, p1

    move/from16 v20, v9

    int-to-long v8, v7

    mul-long v14, v14, v8

    long-to-int v7, v14

    const v21, 0x1ffffff

    and-int v7, v7, v21

    const/16 v22, 0x19

    shr-long v14, v14, v22

    move/from16 v23, v5

    int-to-long v4, v11

    mul-long v4, v4, v8

    long-to-int v11, v4

    and-int v11, v11, v21

    shr-long v4, v4, v22

    move/from16 v24, v13

    int-to-long v12, v10

    mul-long v12, v12, v8

    long-to-int v10, v12

    and-int v10, v10, v21

    shr-long v12, v12, v22

    move/from16 v25, v3

    int-to-long v2, v0

    mul-long v2, v2, v8

    long-to-int v0, v2

    and-int v0, v0, v21

    shr-long v2, v2, v22

    const-wide/16 v21, 0x26

    mul-long v2, v2, v21

    move/from16 v26, v0

    move/from16 v28, v10

    move/from16 v27, v11

    move/from16 v0, v25

    int-to-long v10, v0

    mul-long v10, v10, v8

    move-wide/from16 v29, v12

    add-long v12, v2, v10

    long-to-int v0, v12

    const v2, 0x3ffffff

    and-int/2addr v0, v2

    const/4 v3, 0x0

    .line 174
    aput v0, p2, v3

    const/16 v0, 0x1a

    shr-long v10, v12, v0

    move/from16 v3, v24

    int-to-long v12, v3

    mul-long v12, v12, v8

    add-long v0, v4, v12

    long-to-int v3, v0

    and-int/2addr v3, v2

    move-wide v4, v0

    const/4 v1, 0x5

    .line 175
    aput v3, p2, v1

    const/16 v1, 0x1a

    shr-long v3, v4, v1

    move/from16 v5, v23

    int-to-long v12, v5

    mul-long v12, v12, v8

    move/from16 v31, v6

    add-long v5, v10, v12

    long-to-int v10, v5

    and-int/2addr v10, v2

    const/4 v11, 0x1

    .line 177
    aput v10, p2, v11

    shr-long/2addr v5, v1

    move/from16 v10, v20

    int-to-long v10, v10

    mul-long v10, v10, v8

    add-long v12, v14, v10

    long-to-int v10, v12

    and-int/2addr v10, v2

    const/4 v11, 0x3

    .line 178
    aput v10, p2, v11

    shr-long v10, v12, v1

    move/from16 v12, v19

    int-to-long v12, v12

    mul-long v12, v12, v8

    add-long v14, v3, v12

    long-to-int v3, v14

    and-int/2addr v3, v2

    const/4 v4, 0x6

    .line 179
    aput v3, p2, v4

    shr-long v3, v14, v1

    move/from16 v12, v31

    int-to-long v12, v12

    mul-long v12, v12, v8

    add-long v8, v29, v12

    long-to-int v12, v8

    and-int/2addr v2, v12

    .line 180
    aput v2, p2, v17

    shr-long v1, v8, v1

    long-to-int v5, v5

    add-int/2addr v7, v5

    const/4 v5, 0x2

    .line 182
    aput v7, p2, v5

    long-to-int v5, v10

    add-int v11, v27, v5

    const/4 v5, 0x4

    .line 183
    aput v11, p2, v5

    long-to-int v3, v3

    add-int v10, v28, v3

    .line 184
    aput v10, p2, v16

    long-to-int v1, v1

    add-int v1, v26, v1

    .line 185
    aput v1, p2, v18

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 102

    const/4 v3, 0x0

    .line 190
    aget v4, p0, v3

    aget v5, p1, v3

    const/4 v6, 0x1

    .line 191
    aget v7, p0, v6

    aget v8, p1, v6

    const/4 v9, 0x2

    .line 192
    aget v10, p0, v9

    aget v11, p1, v9

    const/4 v12, 0x3

    .line 193
    aget v13, p0, v12

    aget v14, p1, v12

    const/4 v15, 0x4

    .line 194
    aget v12, p0, v15

    aget v9, p1, v15

    const/16 v16, 0x5

    .line 196
    aget v15, p0, v16

    aget v3, p1, v16

    const/16 v18, 0x6

    .line 197
    aget v6, p0, v18

    aget v2, p1, v18

    const/16 v20, 0x7

    move/from16 v21, v6

    .line 198
    aget v6, p0, v20

    move/from16 v22, v6

    aget v6, p1, v20

    const/16 v23, 0x8

    move/from16 v24, v6

    .line 199
    aget v6, p0, v23

    move/from16 v25, v6

    aget v6, p1, v23

    const/16 v26, 0x9

    .line 200
    aget v0, p0, v26

    aget v1, p1, v26

    move/from16 v27, v0

    move/from16 v28, v1

    int-to-long v0, v4

    move/from16 v30, v2

    move/from16 v29, v3

    int-to-long v2, v5

    mul-long v31, v0, v2

    move/from16 v33, v4

    move/from16 v34, v5

    int-to-long v4, v8

    mul-long v35, v0, v4

    move/from16 v37, v8

    move/from16 v38, v9

    int-to-long v8, v7

    mul-long v39, v8, v2

    add-long v41, v35, v39

    move/from16 v44, v6

    move/from16 v43, v7

    int-to-long v6, v11

    mul-long v35, v0, v6

    mul-long v39, v8, v4

    add-long v45, v35, v39

    move/from16 v47, v11

    move/from16 v48, v12

    int-to-long v11, v10

    mul-long v35, v11, v2

    add-long v39, v45, v35

    mul-long v35, v8, v6

    mul-long v45, v11, v4

    add-long v49, v35, v45

    const/16 v19, 0x1

    shl-long v35, v49, v19

    move-wide/from16 v51, v4

    int-to-long v4, v14

    mul-long v45, v0, v4

    move/from16 v53, v14

    move/from16 v54, v15

    int-to-long v14, v13

    mul-long v49, v14, v2

    add-long v55, v45, v49

    add-long v45, v35, v55

    mul-long v35, v11, v6

    shl-long v35, v35, v19

    move-wide/from16 v58, v6

    move/from16 v57, v13

    move/from16 v13, v38

    int-to-long v6, v13

    mul-long v0, v0, v6

    mul-long v49, v8, v4

    add-long v55, v0, v49

    mul-long v0, v14, v51

    add-long v49, v55, v0

    move/from16 v62, v13

    move-wide/from16 v60, v14

    move/from16 v0, v48

    int-to-long v13, v0

    mul-long v2, v2, v13

    add-long v55, v49, v2

    add-long v1, v35, v55

    mul-long v8, v8, v6

    mul-long v35, v11, v4

    add-long v48, v8, v35

    mul-long v8, v60, v58

    add-long v35, v48, v8

    mul-long v8, v13, v51

    add-long v48, v35, v8

    const/4 v3, 0x1

    shl-long v8, v48, v3

    mul-long v11, v11, v6

    mul-long v35, v13, v58

    add-long v48, v11, v35

    shl-long v11, v48, v3

    mul-long v35, v60, v4

    add-long v48, v11, v35

    mul-long v11, v60, v6

    mul-long v4, v4, v13

    add-long v35, v11, v4

    mul-long v13, v13, v6

    shl-long v4, v13, v3

    move/from16 v3, v54

    int-to-long v6, v3

    move/from16 v11, v29

    int-to-long v12, v11

    mul-long v14, v6, v12

    move-wide/from16 v63, v1

    move/from16 v65, v10

    move/from16 v66, v11

    move/from16 v1, v30

    int-to-long v10, v1

    mul-long v29, v6, v10

    move/from16 v67, v0

    move/from16 v68, v1

    move/from16 v2, v21

    int-to-long v0, v2

    mul-long v50, v0, v12

    add-long v54, v29, v50

    move/from16 v69, v2

    move/from16 v72, v3

    move-wide/from16 v70, v4

    move/from16 v2, v24

    int-to-long v3, v2

    mul-long v29, v6, v3

    mul-long v50, v0, v10

    add-long v58, v29, v50

    move-wide/from16 v73, v8

    move/from16 v5, v22

    int-to-long v8, v5

    mul-long v21, v8, v12

    add-long v29, v58, v21

    mul-long v21, v0, v3

    mul-long v50, v8, v10

    add-long v58, v21, v50

    const/16 v19, 0x1

    shl-long v21, v58, v19

    move/from16 v75, v2

    move-wide/from16 v76, v14

    move/from16 v2, v44

    int-to-long v14, v2

    mul-long v50, v6, v14

    move/from16 v78, v2

    move-wide/from16 v79, v10

    move/from16 v2, v25

    int-to-long v10, v2

    mul-long v24, v10, v12

    add-long v58, v50, v24

    add-long v24, v21, v58

    mul-long v21, v8, v3

    shl-long v21, v21, v19

    move/from16 v81, v2

    move-wide/from16 v82, v3

    move/from16 v2, v28

    int-to-long v3, v2

    mul-long v6, v6, v3

    mul-long v50, v0, v14

    add-long v58, v6, v50

    mul-long v6, v10, v79

    add-long v50, v58, v6

    move-wide/from16 v84, v10

    move/from16 v6, v27

    int-to-long v10, v6

    mul-long v12, v12, v10

    add-long v27, v50, v12

    add-long v12, v21, v27

    mul-long v0, v0, v3

    mul-long v21, v8, v14

    add-long v27, v0, v21

    mul-long v0, v84, v82

    add-long v21, v27, v0

    mul-long v0, v10, v79

    add-long v27, v21, v0

    mul-long v8, v8, v3

    mul-long v0, v10, v82

    add-long v21, v8, v0

    const/4 v0, 0x1

    shl-long v7, v21, v0

    mul-long v0, v84, v14

    add-long v21, v7, v0

    mul-long v0, v84, v3

    mul-long v14, v14, v10

    add-long v7, v0, v14

    mul-long v10, v10, v3

    const-wide/16 v0, 0x4c

    mul-long v27, v27, v0

    sub-long v0, v31, v27

    const-wide/16 v3, 0x26

    mul-long v21, v21, v3

    sub-long v14, v41, v21

    mul-long v7, v7, v3

    sub-long v21, v39, v7

    const-wide/16 v7, 0x4c

    mul-long v10, v10, v7

    sub-long v7, v45, v10

    sub-long v9, v73, v76

    sub-long v27, v48, v54

    sub-long v31, v35, v29

    sub-long v29, v70, v24

    add-int v11, v33, v72

    add-int v3, v34, v66

    add-int v4, v43, v69

    move-wide/from16 v86, v14

    add-int v14, v37, v68

    add-int v5, v65, v5

    add-int v15, v47, v75

    move-wide/from16 v88, v0

    add-int v0, v57, v81

    add-int v1, v53, v78

    add-int v6, v67, v6

    add-int v2, v62, v2

    move-wide/from16 v90, v9

    int-to-long v9, v11

    move-wide/from16 v92, v12

    int-to-long v11, v3

    mul-long v24, v9, v11

    int-to-long v13, v14

    mul-long v33, v9, v13

    int-to-long v3, v4

    mul-long v35, v3, v11

    add-long v37, v33, v35

    move-wide/from16 v94, v7

    int-to-long v7, v15

    mul-long v33, v9, v7

    mul-long v35, v3, v13

    add-long v39, v33, v35

    move/from16 v96, v6

    int-to-long v5, v5

    mul-long v33, v5, v11

    add-long v35, v39, v33

    mul-long v33, v3, v7

    mul-long v39, v5, v13

    add-long v41, v33, v39

    const/4 v15, 0x1

    shl-long v33, v41, v15

    move-wide/from16 v97, v13

    int-to-long v13, v1

    mul-long v39, v9, v13

    int-to-long v0, v0

    mul-long v41, v0, v11

    add-long v43, v39, v41

    add-long v39, v33, v43

    mul-long v33, v5, v7

    shl-long v33, v33, v15

    move-wide/from16 v99, v7

    int-to-long v7, v2

    mul-long v9, v9, v7

    mul-long v41, v3, v13

    add-long v43, v9, v41

    mul-long v9, v0, v97

    add-long v41, v43, v9

    move/from16 v2, v96

    int-to-long v9, v2

    mul-long v11, v11, v9

    add-long v43, v41, v11

    add-long v11, v33, v43

    mul-long v3, v3, v7

    mul-long v33, v5, v13

    add-long v41, v3, v33

    mul-long v2, v0, v99

    add-long v33, v41, v2

    mul-long v2, v9, v97

    add-long v41, v33, v2

    const/4 v2, 0x1

    shl-long v3, v41, v2

    mul-long v5, v5, v7

    mul-long v33, v9, v99

    add-long v41, v5, v33

    shl-long v5, v41, v2

    mul-long v33, v0, v13

    add-long v41, v5, v33

    mul-long v0, v0, v7

    mul-long v13, v13, v9

    add-long v5, v0, v13

    mul-long v9, v9, v7

    shl-long v0, v9, v2

    sub-long v7, v39, v94

    add-long v9, v29, v7

    long-to-int v2, v9

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    const/16 v8, 0x1a

    shr-long/2addr v9, v8

    sub-long v13, v11, v63

    sub-long v11, v13, v92

    add-long v13, v9, v11

    long-to-int v9, v13

    const v10, 0x1ffffff

    and-int/2addr v9, v10

    const/16 v11, 0x19

    shr-long v12, v13, v11

    add-long v14, v12, v3

    sub-long v3, v14, v90

    const-wide/16 v12, 0x26

    mul-long v3, v3, v12

    add-long v14, v88, v3

    long-to-int v3, v14

    and-int/2addr v3, v7

    const/16 v17, 0x0

    .line 323
    aput v3, p2, v17

    shr-long/2addr v14, v8

    sub-long v33, v41, v27

    mul-long v33, v33, v12

    add-long v39, v86, v33

    add-long v10, v14, v39

    long-to-int v3, v10

    and-int/2addr v3, v7

    const/4 v14, 0x1

    .line 325
    aput v3, p2, v14

    shr-long/2addr v10, v8

    sub-long v14, v5, v31

    mul-long v14, v14, v12

    add-long v5, v21, v14

    add-long v14, v10, v5

    long-to-int v3, v14

    const v5, 0x1ffffff

    and-int/2addr v3, v5

    const/4 v5, 0x2

    .line 327
    aput v3, p2, v5

    const/16 v3, 0x19

    shr-long v5, v14, v3

    sub-long v10, v0, v29

    mul-long v10, v10, v12

    add-long v0, v94, v10

    add-long v10, v5, v0

    long-to-int v0, v10

    and-int/2addr v0, v7

    const/4 v1, 0x3

    .line 329
    aput v0, p2, v1

    shr-long v0, v10, v8

    mul-long v12, v12, v92

    add-long v5, v63, v12

    add-long v10, v0, v5

    long-to-int v0, v10

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    const/4 v1, 0x4

    .line 332
    aput v0, p2, v1

    const/16 v0, 0x19

    shr-long v5, v10, v0

    sub-long v0, v24, v88

    add-long v10, v90, v0

    add-long v0, v5, v10

    long-to-int v3, v0

    and-int/2addr v3, v7

    .line 334
    aput v3, p2, v16

    shr-long/2addr v0, v8

    sub-long v5, v37, v86

    add-long v10, v27, v5

    add-long v5, v0, v10

    long-to-int v0, v5

    and-int/2addr v0, v7

    .line 336
    aput v0, p2, v18

    shr-long v0, v5, v8

    sub-long v5, v35, v21

    add-long v10, v31, v5

    add-long v5, v0, v10

    long-to-int v0, v5

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    .line 338
    aput v0, p2, v20

    const/16 v0, 0x19

    shr-long v0, v5, v0

    int-to-long v2, v2

    add-long v5, v0, v2

    long-to-int v0, v5

    and-int/2addr v0, v7

    .line 340
    aput v0, p2, v23

    shr-long v0, v5, v8

    long-to-int v0, v0

    add-int/2addr v9, v0

    .line 341
    aput v9, p2, v26

    return-void
.end method

.method public static normalize([I)V
    .locals 1

    const/16 v0, 0x9

    .line 346
    aget v0, p0, v0

    ushr-int/lit8 v0, v0, 0x17

    and-int/lit8 v0, v0, 0x1

    .line 347
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    neg-int v0, v0

    .line 348
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    return-void
.end method

.method private static reduce([II)V
    .locals 6

    const/16 v0, 0x9

    .line 354
    aget v1, p0, v0

    const v2, 0xffffff

    and-int/2addr v2, v1

    shr-int/lit8 v1, v1, 0x18

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x13

    const/4 p1, 0x0

    .line 358
    aget v3, p0, p1

    add-int/2addr v1, v3

    const v3, 0x3ffffff

    and-int v4, v1, v3

    aput v4, p0, p1

    shr-int/lit8 p1, v1, 0x1a

    const/4 v1, 0x1

    .line 359
    aget v4, p0, v1

    add-int/2addr p1, v4

    and-int v4, p1, v3

    aput v4, p0, v1

    shr-int/lit8 p1, p1, 0x1a

    const/4 v1, 0x2

    .line 360
    aget v4, p0, v1

    add-int/2addr p1, v4

    const v4, 0x1ffffff

    and-int v5, p1, v4

    aput v5, p0, v1

    shr-int/lit8 p1, p1, 0x19

    const/4 v1, 0x3

    .line 361
    aget v5, p0, v1

    add-int/2addr p1, v5

    and-int v5, p1, v3

    aput v5, p0, v1

    shr-int/lit8 p1, p1, 0x1a

    const/4 v1, 0x4

    .line 362
    aget v5, p0, v1

    add-int/2addr p1, v5

    and-int v5, p1, v4

    aput v5, p0, v1

    shr-int/lit8 p1, p1, 0x19

    const/4 v1, 0x5

    .line 363
    aget v5, p0, v1

    add-int/2addr p1, v5

    and-int v5, p1, v3

    aput v5, p0, v1

    shr-int/lit8 p1, p1, 0x1a

    const/4 v1, 0x6

    .line 364
    aget v5, p0, v1

    add-int/2addr p1, v5

    and-int v5, p1, v3

    aput v5, p0, v1

    shr-int/lit8 p1, p1, 0x1a

    const/4 v1, 0x7

    .line 365
    aget v5, p0, v1

    add-int/2addr p1, v5

    and-int/2addr v4, p1

    aput v4, p0, v1

    shr-int/lit8 p1, p1, 0x19

    const/16 v1, 0x8

    .line 366
    aget v4, p0, v1

    add-int/2addr p1, v4

    and-int/2addr v3, p1

    aput v3, p0, v1

    shr-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, v2

    .line 367
    aput p1, p0, v0

    return-void
.end method

.method public static sqr([II[I)V
    .locals 0

    .line 500
    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 504
    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 80

    const/4 v2, 0x0

    .line 372
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 373
    aget v5, p0, v4

    const/4 v6, 0x2

    .line 374
    aget v7, p0, v6

    const/4 v8, 0x3

    .line 375
    aget v9, p0, v8

    const/4 v10, 0x4

    .line 376
    aget v11, p0, v10

    const/4 v12, 0x5

    .line 378
    aget v13, p0, v12

    const/4 v14, 0x6

    .line 379
    aget v15, p0, v14

    const/16 v16, 0x7

    .line 380
    aget v14, p0, v16

    const/16 v17, 0x8

    .line 381
    aget v12, p0, v17

    const/16 v18, 0x9

    .line 382
    aget v0, p0, v18

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v8, v7, 0x2

    mul-int/lit8 v6, v9, 0x2

    mul-int/lit8 v4, v11, 0x2

    int-to-long v1, v3

    mul-long v21, v1, v1

    move/from16 v24, v12

    move/from16 v23, v13

    int-to-long v12, v10

    mul-long v25, v1, v12

    move/from16 v28, v14

    move/from16 v27, v15

    int-to-long v14, v8

    mul-long v29, v1, v14

    move/from16 v31, v11

    int-to-long v10, v5

    mul-long v32, v10, v10

    add-long v34, v29, v32

    mul-long v29, v12, v14

    move/from16 v36, v5

    int-to-long v5, v6

    mul-long v32, v1, v5

    add-long v37, v29, v32

    move/from16 v39, v9

    int-to-long v8, v7

    mul-long v8, v8, v14

    move/from16 v40, v3

    int-to-long v3, v4

    mul-long v1, v1, v3

    add-long v29, v8, v1

    mul-long v10, v10, v5

    add-long v1, v29, v10

    mul-long v12, v12, v3

    mul-long v5, v5, v14

    add-long v8, v12, v5

    mul-long v14, v14, v3

    move/from16 v5, v39

    int-to-long v10, v5

    mul-long v12, v10, v10

    add-long v29, v14, v12

    mul-long v10, v10, v3

    move/from16 v6, v31

    int-to-long v12, v6

    mul-long v12, v12, v3

    mul-int/lit8 v15, v27, 0x2

    mul-int/lit8 v14, v28, 0x2

    mul-int/lit8 v3, v24, 0x2

    mul-int/lit8 v4, v0, 0x2

    move-wide/from16 v41, v1

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v1, v23

    int-to-long v5, v1

    mul-long v31, v5, v5

    move/from16 v45, v1

    int-to-long v1, v15

    mul-long v46, v5, v1

    int-to-long v14, v14

    mul-long v48, v5, v14

    move/from16 v50, v7

    move-wide/from16 v51, v12

    move/from16 v7, v27

    int-to-long v12, v7

    mul-long v53, v12, v12

    add-long v55, v48, v53

    mul-long v48, v1, v14

    move-wide/from16 v57, v10

    int-to-long v10, v3

    mul-long v53, v5, v10

    add-long v59, v48, v53

    move/from16 v63, v7

    move-wide/from16 v61, v8

    move/from16 v3, v28

    int-to-long v7, v3

    mul-long v7, v7, v14

    move/from16 v64, v3

    int-to-long v3, v4

    mul-long v5, v5, v3

    add-long v27, v7, v5

    mul-long v12, v12, v10

    add-long v5, v27, v12

    mul-long v1, v1, v3

    mul-long v10, v10, v14

    add-long v7, v1, v10

    mul-long v14, v14, v3

    move/from16 v1, v24

    int-to-long v9, v1

    mul-long v11, v9, v9

    add-long v23, v14, v11

    mul-long v9, v9, v3

    int-to-long v11, v0

    mul-long v11, v11, v3

    const-wide/16 v2, 0x26

    mul-long v7, v7, v2

    sub-long v13, v21, v7

    mul-long v23, v23, v2

    sub-long v7, v25, v23

    mul-long v9, v9, v2

    sub-long v21, v34, v9

    mul-long v11, v11, v2

    sub-long v9, v37, v11

    sub-long v11, v61, v31

    sub-long v23, v29, v46

    sub-long v25, v57, v55

    sub-long v27, v51, v59

    add-int v4, v40, v45

    add-int v15, v36, v63

    add-int v2, v50, v64

    add-int v1, v43, v1

    add-int v0, v44, v0

    mul-int/lit8 v3, v15, 0x2

    move-wide/from16 v65, v7

    mul-int/lit8 v7, v2, 0x2

    mul-int/lit8 v8, v1, 0x2

    move-wide/from16 v67, v13

    mul-int/lit8 v13, v0, 0x2

    move-wide/from16 v69, v11

    int-to-long v11, v4

    mul-long v29, v11, v11

    int-to-long v3, v3

    mul-long v31, v11, v3

    move-wide/from16 v71, v5

    int-to-long v5, v7

    mul-long v33, v11, v5

    int-to-long v14, v15

    mul-long v35, v14, v14

    add-long v37, v33, v35

    mul-long v33, v3, v5

    int-to-long v7, v8

    mul-long v35, v11, v7

    add-long v39, v33, v35

    move-wide/from16 v73, v9

    int-to-long v9, v2

    mul-long v9, v9, v5

    move/from16 v76, v0

    move/from16 v75, v1

    int-to-long v0, v13

    mul-long v11, v11, v0

    add-long v33, v9, v11

    mul-long v14, v14, v7

    add-long v9, v33, v14

    mul-long v3, v3, v0

    mul-long v7, v7, v5

    add-long v11, v3, v7

    mul-long v5, v5, v0

    move/from16 v2, v75

    int-to-long v2, v2

    mul-long v7, v2, v2

    add-long v13, v5, v7

    mul-long v2, v2, v0

    move/from16 v4, v76

    int-to-long v4, v4

    mul-long v4, v4, v0

    sub-long v0, v39, v73

    add-long v6, v27, v0

    long-to-int v0, v6

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    const/16 v8, 0x1a

    shr-long/2addr v6, v8

    sub-long v33, v9, v41

    sub-long v9, v33, v71

    move-wide/from16 v77, v2

    add-long v1, v6, v9

    long-to-int v3, v1

    const v6, 0x1ffffff

    and-int/2addr v3, v6

    const/16 v7, 0x19

    shr-long/2addr v1, v7

    add-long v9, v1, v11

    sub-long v1, v9, v69

    const-wide/16 v9, 0x26

    mul-long v1, v1, v9

    add-long v11, v67, v1

    long-to-int v1, v11

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    const/16 v19, 0x0

    .line 475
    aput v1, p1, v19

    shr-long/2addr v11, v8

    sub-long v19, v13, v23

    mul-long v19, v19, v9

    add-long v13, v65, v19

    add-long v6, v11, v13

    long-to-int v1, v6

    and-int/2addr v1, v2

    const/4 v2, 0x1

    .line 477
    aput v1, p1, v2

    shr-long v1, v6, v8

    sub-long v6, v77, v25

    mul-long v6, v6, v9

    add-long v11, v21, v6

    add-long v6, v1, v11

    long-to-int v1, v6

    const v2, 0x1ffffff

    and-int/2addr v1, v2

    const/4 v2, 0x2

    .line 479
    aput v1, p1, v2

    const/16 v1, 0x19

    shr-long/2addr v6, v1

    sub-long v1, v4, v27

    mul-long v1, v1, v9

    add-long v4, v73, v1

    add-long v1, v6, v4

    long-to-int v4, v1

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    const/4 v5, 0x3

    .line 481
    aput v4, p1, v5

    shr-long/2addr v1, v8

    mul-long v5, v71, v9

    add-long v9, v41, v5

    add-long v4, v1, v9

    long-to-int v1, v4

    const v2, 0x1ffffff

    and-int/2addr v1, v2

    const/4 v2, 0x4

    .line 484
    aput v1, p1, v2

    const/16 v1, 0x19

    shr-long/2addr v4, v1

    sub-long v1, v29, v67

    add-long v11, v69, v1

    add-long v1, v4, v11

    long-to-int v4, v1

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    const/4 v6, 0x5

    .line 486
    aput v4, p1, v6

    shr-long/2addr v1, v8

    sub-long v6, v31, v65

    add-long v9, v23, v6

    add-long v6, v1, v9

    long-to-int v1, v6

    and-int/2addr v1, v5

    const/4 v2, 0x6

    .line 488
    aput v1, p1, v2

    shr-long v1, v6, v8

    sub-long v4, v37, v21

    add-long v6, v25, v4

    add-long v4, v1, v6

    long-to-int v1, v4

    const v2, 0x1ffffff

    and-int/2addr v1, v2

    .line 490
    aput v1, p1, v16

    const/16 v1, 0x19

    shr-long v1, v4, v1

    int-to-long v4, v0

    add-long v6, v1, v4

    long-to-int v0, v6

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    .line 492
    aput v0, p1, v17

    shr-long v0, v6, v8

    long-to-int v0, v0

    add-int/2addr v3, v0

    .line 493
    aput v3, p1, v18

    return-void
.end method

.method public static sub([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 512
    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
