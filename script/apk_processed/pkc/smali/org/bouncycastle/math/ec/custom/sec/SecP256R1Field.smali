.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    const/16 v0, 0x10

    .line 15
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public static add([I[I[I)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    .line 24
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/16 v0, 0x8

    .line 41
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    .line 42
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 14

    const/4 v0, 0x0

    .line 247
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    add-long v7, v5, v1

    long-to-int v5, v7

    .line 248
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 252
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 253
    aput v5, p0, v9

    shr-long v5, v10, v0

    const/4 v9, 0x2

    .line 255
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 256
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x3

    .line 259
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    sub-long v10, v12, v1

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 260
    aput v5, p0, v9

    shr-long v5, v12, v0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const/4 v7, 0x4

    .line 264
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v5, v10

    long-to-int v5, v8

    .line 265
    aput v5, p0, v7

    shr-long v5, v8, v0

    const/4 v7, 0x5

    .line 267
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v5, v10

    long-to-int v5, v8

    .line 268
    aput v5, p0, v7

    shr-long v5, v8, v0

    :cond_1
    const/4 v7, 0x6

    .line 271
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    sub-long v8, v10, v1

    add-long v10, v5, v8

    long-to-int v5, v10

    .line 272
    aput v5, p0, v7

    shr-long v5, v10, v0

    const/4 v0, 0x7

    .line 274
    aget v7, p0, v0

    int-to-long v7, v7

    and-long v9, v7, v3

    add-long v3, v9, v1

    add-long v1, v5, v3

    long-to-int v1, v1

    .line 275
    aput v1, p0, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    .line 50
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x7

    .line 51
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    :cond_0
    return-object p0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    .line 73
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 74
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 1

    .line 80
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0x10

    if-nez p0, :cond_0

    const/16 p0, 0xf

    .line 81
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 83
    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    .line 89
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat256;->zero([I)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 38

    move-object/from16 v1, p1

    const/16 v2, 0x8

    .line 101
    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/16 v2, 0x9

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v8, v2, v4

    const/16 v2, 0xa

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v10, v2, v4

    const/16 v2, 0xb

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v12, v2, v4

    const/16 v2, 0xc

    .line 102
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v14, v2, v4

    const/16 v2, 0xd

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v16, v2, v4

    const/16 v2, 0xe

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v18, v2, v4

    const/16 v2, 0xf

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v20, v2, v4

    const-wide/16 v2, 0x6

    sub-long v22, v6, v2

    add-long v6, v22, v8

    add-long v24, v8, v10

    add-long v8, v10, v12

    sub-long v10, v8, v20

    add-long v8, v12, v14

    add-long v12, v14, v16

    add-long v14, v16, v18

    add-long v26, v18, v20

    const/16 v28, 0x0

    .line 117
    aget v2, p0, v28

    int-to-long v2, v2

    and-long v29, v2, v4

    add-long v2, v29, v6

    sub-long v29, v2, v8

    sub-long v2, v29, v14

    const-wide/16 v29, 0x0

    add-long v4, v2, v29

    long-to-int v2, v4

    .line 118
    aput v2, v1, v28

    const/16 v2, 0x20

    shr-long v3, v4, v2

    const/4 v5, 0x1

    .line 120
    aget v2, p0, v5

    move-wide/from16 v33, v6

    int-to-long v5, v2

    const-wide v29, 0xffffffffL

    and-long v31, v5, v29

    add-long v5, v31, v24

    sub-long v31, v5, v12

    sub-long v5, v31, v26

    move-wide/from16 v35, v12

    add-long v12, v3, v5

    long-to-int v2, v12

    const/4 v3, 0x1

    .line 121
    aput v2, v1, v3

    const/16 v2, 0x20

    shr-long v3, v12, v2

    const/4 v5, 0x2

    .line 123
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v12, v6, v29

    add-long v6, v12, v10

    sub-long v12, v6, v14

    add-long v6, v3, v12

    long-to-int v3, v6

    .line 124
    aput v3, v1, v5

    shr-long v3, v6, v2

    const/4 v2, 0x3

    .line 126
    aget v5, p0, v2

    int-to-long v5, v5

    and-long v12, v5, v29

    const/4 v5, 0x1

    shl-long v6, v8, v5

    add-long v8, v12, v6

    add-long v5, v8, v16

    sub-long v7, v5, v20

    sub-long v5, v7, v33

    add-long v7, v3, v5

    long-to-int v3, v7

    .line 127
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v7, v2

    const/4 v2, 0x4

    .line 129
    aget v5, p0, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long v12, v5, v7

    const/4 v5, 0x1

    shl-long v6, v35, v5

    add-long v8, v12, v6

    add-long v5, v8, v18

    sub-long v7, v5, v24

    add-long v5, v3, v7

    long-to-int v3, v5

    .line 130
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v5, v2

    const/4 v5, 0x5

    .line 132
    aget v6, p0, v5

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v12, v6, v8

    const/4 v6, 0x1

    shl-long v16, v14, v6

    add-long v18, v12, v16

    sub-long v12, v18, v10

    add-long v6, v3, v12

    long-to-int v3, v6

    .line 133
    aput v3, v1, v5

    shr-long v3, v6, v2

    const/4 v2, 0x6

    .line 135
    aget v5, p0, v2

    int-to-long v5, v5

    and-long v12, v5, v8

    const/4 v5, 0x1

    shl-long v6, v26, v5

    add-long v8, v12, v6

    add-long v5, v8, v14

    sub-long v7, v5, v33

    add-long v5, v3, v7

    long-to-int v3, v5

    .line 136
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v5, v2

    const/4 v2, 0x7

    .line 138
    aget v0, p0, v2

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long v12, v5, v7

    const/4 v0, 0x1

    shl-long v5, v20, v0

    add-long v7, v12, v5

    add-long v5, v7, v22

    sub-long v7, v5, v10

    sub-long v5, v7, v35

    add-long v7, v3, v5

    long-to-int v0, v7

    .line 139
    aput v0, v1, v2

    const/16 v0, 0x20

    shr-long v2, v7, v0

    const-wide/16 v4, 0x6

    add-long v6, v2, v4

    long-to-int v0, v6

    .line 145
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static reduce32(I[I)V
    .locals 14

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_2

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 p0, 0x0

    .line 156
    aget v3, p1, p0

    int-to-long v3, v3

    and-long v9, v3, v5

    add-long v3, v9, v7

    add-long v9, v3, v1

    long-to-int v3, v9

    .line 157
    aput v3, p1, p0

    const/16 p0, 0x20

    shr-long v3, v9, p0

    cmp-long v9, v3, v1

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 161
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    add-long v10, v3, v12

    long-to-int v3, v10

    .line 162
    aput v3, p1, v9

    shr-long v3, v10, p0

    const/4 v9, 0x2

    .line 164
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    add-long v10, v3, v12

    long-to-int v3, v10

    .line 165
    aput v3, p1, v9

    shr-long v3, v10, p0

    :cond_0
    const/4 v9, 0x3

    .line 168
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    sub-long v10, v12, v7

    add-long v12, v3, v10

    long-to-int v3, v12

    .line 169
    aput v3, p1, v9

    shr-long v3, v12, p0

    cmp-long v9, v3, v1

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    .line 173
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    add-long v10, v3, v12

    long-to-int v3, v10

    .line 174
    aput v3, p1, v9

    shr-long v3, v10, p0

    const/4 v9, 0x5

    .line 176
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    add-long v10, v3, v12

    long-to-int v3, v10

    .line 177
    aput v3, p1, v9

    shr-long v3, v10, p0

    :cond_1
    const/4 v9, 0x6

    .line 180
    aget v10, p1, v9

    int-to-long v10, v10

    and-long v12, v10, v5

    sub-long v10, v12, v7

    add-long v12, v3, v10

    long-to-int v3, v12

    .line 181
    aput v3, p1, v9

    shr-long v3, v12, p0

    .line 183
    aget v9, p1, v0

    int-to-long v9, v9

    and-long v11, v9, v5

    add-long v5, v11, v7

    add-long v7, v3, v5

    long-to-int v3, v7

    .line 184
    aput v3, p1, v0

    shr-long v3, v7, p0

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-nez p0, :cond_3

    .line 190
    aget p0, p1, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 192
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    .line 198
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 200
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    .line 207
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 208
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 209
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 213
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 214
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 14

    const/4 v0, 0x0

    .line 281
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    sub-long v7, v5, v1

    long-to-int v5, v7

    .line 282
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 286
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 287
    aput v5, p0, v9

    shr-long v5, v10, v0

    const/4 v9, 0x2

    .line 289
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 290
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x3

    .line 293
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v12, v1

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 294
    aput v5, p0, v9

    shr-long v5, v12, v0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const/4 v7, 0x4

    .line 298
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v5, v10

    long-to-int v5, v8

    .line 299
    aput v5, p0, v7

    shr-long v5, v8, v0

    const/4 v7, 0x5

    .line 301
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v5, v10

    long-to-int v5, v8

    .line 302
    aput v5, p0, v7

    shr-long v5, v8, v0

    :cond_1
    const/4 v7, 0x6

    .line 305
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v10, v1

    add-long v10, v5, v8

    long-to-int v5, v10

    .line 306
    aput v5, p0, v7

    shr-long v5, v10, v0

    const/4 v0, 0x7

    .line 308
    aget v7, p0, v0

    int-to-long v7, v7

    and-long v9, v7, v3

    sub-long v3, v9, v1

    add-long v1, v5, v3

    long-to-int v1, v1

    .line 309
    aput v1, p0, v0

    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 0

    .line 220
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 223
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    .line 239
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 241
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
