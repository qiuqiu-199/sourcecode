.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    const/16 v0, 0xe

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    const/16 v0, 0xb

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
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
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public static add([I[I[I)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    .line 24
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/4 v0, 0x7

    .line 44
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    .line 45
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 14

    const/4 v0, 0x0

    .line 255
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    sub-long v7, v5, v1

    long-to-int v5, v7

    .line 256
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 260
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 261
    aput v5, p0, v9

    shr-long v5, v10, v0

    const/4 v9, 0x2

    .line 263
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 264
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x3

    .line 267
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 268
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 272
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    .line 53
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x6

    .line 54
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    :cond_0
    return-object p0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 77
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 78
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 1

    .line 83
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xe

    if-nez p0, :cond_0

    const/16 p0, 0xd

    .line 84
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 86
    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 88
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    .line 95
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat224;->zero([I)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 37

    move-object/from16 v1, p1

    const/16 v2, 0xa

    .line 107
    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/16 v2, 0xb

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v8, v2, v4

    const/16 v2, 0xc

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v10, v2, v4

    const/16 v2, 0xd

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v12, v2, v4

    const/4 v2, 0x7

    .line 111
    aget v3, p0, v2

    int-to-long v14, v3

    and-long v16, v14, v4

    add-long v14, v16, v8

    const-wide/16 v16, 0x1

    sub-long v18, v14, v16

    const/16 v3, 0x8

    .line 112
    aget v3, p0, v3

    int-to-long v14, v3

    and-long v20, v14, v4

    add-long v14, v20, v10

    const/16 v3, 0x9

    .line 113
    aget v3, p0, v3

    int-to-long v2, v3

    and-long v20, v2, v4

    add-long v2, v20, v12

    const/16 v20, 0x0

    move-wide/from16 v22, v12

    .line 116
    aget v12, p0, v20

    int-to-long v12, v12

    and-long v24, v12, v4

    sub-long v12, v24, v18

    const-wide/16 v24, 0x0

    add-long v26, v12, v24

    and-long v12, v26, v4

    const/16 v21, 0x20

    shr-long v26, v26, v21

    const/16 v28, 0x1

    move-wide/from16 v29, v12

    .line 119
    aget v12, p0, v28

    int-to-long v12, v12

    and-long v31, v12, v4

    sub-long v12, v31, v14

    add-long v4, v26, v12

    long-to-int v12, v4

    .line 120
    aput v12, v1, v28

    shr-long v4, v4, v21

    const/4 v12, 0x2

    .line 122
    aget v13, p0, v12

    int-to-long v12, v13

    const-wide v26, 0xffffffffL

    and-long v31, v12, v26

    sub-long v12, v31, v2

    move-wide/from16 v33, v10

    add-long v10, v4, v12

    long-to-int v4, v10

    const/4 v5, 0x2

    .line 123
    aput v4, v1, v5

    shr-long v4, v10, v21

    const/4 v10, 0x3

    .line 125
    aget v11, p0, v10

    int-to-long v11, v11

    and-long v31, v11, v26

    add-long v11, v31, v18

    sub-long v18, v11, v6

    add-long v11, v4, v18

    and-long v4, v11, v26

    shr-long v11, v11, v21

    const/4 v13, 0x4

    .line 128
    aget v10, p0, v13

    move-wide/from16 v35, v4

    int-to-long v4, v10

    and-long v18, v4, v26

    add-long v4, v18, v14

    sub-long v14, v4, v8

    add-long v4, v11, v14

    long-to-int v8, v4

    .line 129
    aput v8, v1, v13

    shr-long v4, v4, v21

    const/4 v8, 0x5

    .line 131
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v26

    add-long v9, v11, v2

    sub-long v2, v9, v33

    add-long v9, v4, v2

    long-to-int v2, v9

    .line 132
    aput v2, v1, v8

    shr-long v2, v9, v21

    const/4 v4, 0x6

    .line 134
    aget v0, p0, v4

    int-to-long v8, v0

    and-long v10, v8, v26

    add-long v8, v10, v6

    sub-long v5, v8, v22

    add-long v7, v2, v5

    long-to-int v0, v7

    .line 135
    aput v0, v1, v4

    shr-long v2, v7, v21

    add-long v5, v2, v16

    add-long v2, v35, v5

    sub-long v7, v29, v5

    long-to-int v0, v7

    .line 144
    aput v0, v1, v20

    shr-long v5, v7, v21

    cmp-long v0, v5, v24

    if-eqz v0, :cond_0

    .line 148
    aget v0, v1, v28

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long v11, v7, v9

    add-long v7, v5, v11

    long-to-int v0, v7

    .line 149
    aput v0, v1, v28

    shr-long v5, v7, v21

    const/4 v0, 0x2

    .line 151
    aget v7, v1, v0

    int-to-long v7, v7

    and-long v11, v7, v9

    add-long v7, v5, v11

    long-to-int v5, v7

    .line 152
    aput v5, v1, v0

    shr-long v5, v7, v21

    add-long v7, v2, v5

    move-wide v2, v7

    :cond_0
    long-to-int v0, v2

    const/4 v5, 0x3

    .line 155
    aput v0, v1, v5

    shr-long v2, v2, v21

    cmp-long v0, v2, v24

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 160
    invoke-static {v0, v1, v13}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    aget v0, v1, v4

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 161
    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_3
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 13

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/4 p0, 0x0

    .line 175
    aget v2, p1, p0

    int-to-long v2, v2

    and-long v8, v2, v4

    sub-long v2, v8, v6

    add-long v8, v2, v0

    long-to-int v2, v8

    .line 176
    aput v2, p1, p0

    const/16 p0, 0x20

    shr-long v2, v8, p0

    cmp-long v8, v2, v0

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 180
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v9, v2, v11

    long-to-int v2, v9

    .line 181
    aput v2, p1, v8

    shr-long v2, v9, p0

    const/4 v8, 0x2

    .line 183
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v9, v2, v11

    long-to-int v2, v9

    .line 184
    aput v2, p1, v8

    shr-long v2, v9, p0

    :cond_0
    const/4 v8, 0x3

    .line 187
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v4, v11, v6

    add-long v6, v2, v4

    long-to-int v2, v6

    .line 188
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    const/4 v0, 0x4

    .line 194
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 195
    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 197
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    .line 203
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 204
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 205
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    .line 212
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 213
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 214
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 218
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 219
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 14

    const/4 v0, 0x0

    .line 278
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    add-long v7, v5, v1

    long-to-int v5, v7

    .line 279
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 283
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 284
    aput v5, p0, v9

    shr-long v5, v10, v0

    const/4 v9, 0x2

    .line 286
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 287
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x3

    .line 290
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    sub-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 291
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 295
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 0

    .line 225
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 228
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 246
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    .line 247
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 249
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method