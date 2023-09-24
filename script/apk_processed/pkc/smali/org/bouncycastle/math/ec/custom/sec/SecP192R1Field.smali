.class public Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    const/16 v0, 0xc

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    const/16 v0, 0x9

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
        0x2
    .end array-data
.end method

.method public static add([I[I[I)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    .line 24
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/4 v0, 0x6

    .line 44
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    .line 45
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 14

    const/4 v0, 0x0

    .line 249
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    add-long v7, v5, v1

    long-to-int v5, v7

    .line 250
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 254
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 255
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x2

    .line 258
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 259
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 263
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    .line 53
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x5

    .line 54
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    :cond_0
    return-object p0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 77
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 78
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 1

    .line 83
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0xb

    .line 84
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 86
    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 88
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    .line 95
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat192;->zero([I)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 32

    move-object/from16 v1, p1

    const/4 v2, 0x6

    .line 107
    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x7

    aget v3, p0, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/16 v3, 0x8

    aget v3, p0, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/16 v3, 0x9

    .line 108
    aget v3, p0, v3

    int-to-long v3, v3

    and-long v13, v3, v5

    const/16 v3, 0xa

    aget v3, p0, v3

    int-to-long v3, v3

    and-long v15, v3, v5

    const/16 v3, 0xb

    aget v3, p0, v3

    int-to-long v3, v3

    and-long v17, v3, v5

    add-long v3, v7, v15

    add-long v15, v9, v17

    const/16 v17, 0x0

    .line 114
    aget v2, p0, v17

    move-wide/from16 v19, v9

    int-to-long v9, v2

    and-long v21, v9, v5

    add-long v9, v21, v3

    const-wide/16 v21, 0x0

    add-long v5, v9, v21

    long-to-int v2, v5

    const/16 v9, 0x20

    shr-long/2addr v5, v9

    const/4 v10, 0x1

    .line 117
    aget v9, p0, v10

    move-wide/from16 v26, v11

    int-to-long v10, v9

    const-wide v23, 0xffffffffL

    and-long v28, v10, v23

    add-long v9, v28, v15

    add-long v11, v5, v9

    long-to-int v5, v11

    const/4 v6, 0x1

    .line 118
    aput v5, v1, v6

    const/16 v5, 0x20

    shr-long v9, v11, v5

    add-long v11, v3, v26

    add-long v3, v15, v13

    const/4 v6, 0x2

    .line 124
    aget v13, p0, v6

    int-to-long v13, v13

    and-long v15, v13, v23

    add-long v13, v15, v11

    add-long v15, v9, v13

    and-long v9, v15, v23

    shr-long v13, v15, v5

    const/4 v15, 0x3

    .line 127
    aget v6, p0, v15

    int-to-long v5, v6

    and-long v25, v5, v23

    add-long v5, v25, v3

    move-wide/from16 v30, v9

    add-long v9, v13, v5

    long-to-int v5, v9

    .line 128
    aput v5, v1, v15

    const/16 v5, 0x20

    shr-long/2addr v9, v5

    sub-long v13, v11, v7

    sub-long v6, v3, v19

    const/4 v3, 0x4

    .line 134
    aget v4, p0, v3

    int-to-long v11, v4

    and-long v19, v11, v23

    add-long v11, v19, v13

    add-long v13, v9, v11

    long-to-int v4, v13

    .line 135
    aput v4, v1, v3

    shr-long v3, v13, v5

    const/4 v8, 0x5

    .line 137
    aget v0, p0, v8

    int-to-long v9, v0

    and-long v11, v9, v23

    add-long v9, v11, v6

    add-long v6, v3, v9

    long-to-int v0, v6

    .line 138
    aput v0, v1, v8

    shr-long v3, v6, v5

    add-long v9, v30, v3

    int-to-long v6, v2

    and-long v11, v6, v23

    add-long v6, v3, v11

    long-to-int v0, v6

    .line 144
    aput v0, v1, v17

    shr-long v2, v6, v5

    cmp-long v0, v2, v21

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 148
    aget v4, v1, v0

    int-to-long v6, v4

    and-long v11, v6, v23

    add-long v6, v2, v11

    long-to-int v2, v6

    .line 149
    aput v2, v1, v0

    shr-long v2, v6, v5

    add-long v6, v9, v2

    goto :goto_0

    :cond_0
    move-wide v6, v9

    :goto_0
    long-to-int v0, v6

    const/4 v2, 0x2

    .line 152
    aput v0, v1, v2

    shr-long v2, v6, v5

    cmp-long v0, v2, v21

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 157
    invoke-static {v0, v1, v15}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    aget v0, v1, v8

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 158
    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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

    .line 172
    aget v2, p1, p0

    int-to-long v2, v2

    and-long v8, v2, v4

    add-long v2, v8, v6

    add-long v8, v2, v0

    long-to-int v2, v8

    .line 173
    aput v2, p1, p0

    const/16 p0, 0x20

    shr-long v2, v8, p0

    cmp-long v8, v2, v0

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 177
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v9, v2, v11

    long-to-int v2, v9

    .line 178
    aput v2, p1, v8

    shr-long v2, v9, p0

    :cond_0
    const/4 v8, 0x2

    .line 181
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v4, v11, v6

    add-long v6, v2, v4

    long-to-int v2, v6

    .line 182
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    const/4 v0, 0x3

    .line 188
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 189
    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 191
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    .line 197
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 198
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 199
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    .line 206
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 207
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 208
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 212
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 213
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 14

    const/4 v0, 0x0

    .line 269
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    sub-long v7, v5, v1

    long-to-int v5, v7

    .line 270
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 274
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 275
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x2

    .line 278
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    sub-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 279
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 283
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 0

    .line 219
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 222
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 240
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    .line 241
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 243
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
