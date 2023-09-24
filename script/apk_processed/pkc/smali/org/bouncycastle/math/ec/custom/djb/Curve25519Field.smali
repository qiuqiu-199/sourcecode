.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;
.source "Curve25519Field.java"


# static fields
.field static final P:[I

.field private static final PExt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    const/16 v0, 0x10

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public static add([I[I[I)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    .line 24
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 26
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/16 v0, 0x8

    .line 41
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    .line 42
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 44
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method private static addPTo([I)I
    .locals 10

    const/4 v0, 0x0

    .line 183
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x13

    sub-long v7, v5, v1

    long-to-int v1, v7

    .line 184
    aput v1, p0, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v5, 0x7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 188
    invoke-static {v5, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v1

    int-to-long v1, v1

    .line 190
    :cond_0
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    const-wide v3, 0x80000000L

    add-long v6, v8, v3

    add-long v3, v1, v6

    long-to-int v1, v3

    .line 191
    aput v1, p0, v5

    shr-long v0, v3, v0

    long-to-int p0, v0

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 1

    .line 50
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 51
    :goto_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    goto :goto_0

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
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    .line 81
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    const/16 p1, 0x10

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    :cond_0
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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 8

    const/4 v0, 0x7

    .line 103
    aget v7, p0, v0

    const/16 v1, 0x8

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v7

    move-object v5, p1

    .line 104
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III[II)I

    const/16 v1, 0x13

    .line 105
    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->mulByWordAddTo(I[I[I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 106
    aget v2, p1, v0

    ushr-int/lit8 v3, v2, 0x1f

    ushr-int/lit8 v4, v7, 0x1f

    sub-int/2addr v3, v4

    add-int/2addr p0, v3

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    mul-int/lit8 p0, p0, 0x13

    .line 109
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result p0

    add-int/2addr v2, p0

    .line 110
    aput v2, p1, v0

    .line 111
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 113
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static reduce27(I[I)V
    .locals 3

    const/4 v0, 0x7

    .line 121
    aget v1, p1, v0

    shl-int/lit8 p0, p0, 0x1

    ushr-int/lit8 v2, v1, 0x1f

    or-int/2addr p0, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    mul-int/lit8 p0, p0, 0x13

    .line 124
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result p0

    add-int/2addr v1, p0

    .line 125
    aput v1, p1, v0

    .line 126
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 128
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    .line 134
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 135
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 136
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    .line 143
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 144
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 145
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 149
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 150
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPExtFrom([I)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 235
    aget v2, v0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v2, v2, v1

    int-to-long v2, v2

    and-long v8, v2, v4

    sub-long v2, v6, v8

    long-to-int v6, v2

    .line 236
    aput v6, v0, v1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const/4 v9, 0x1

    const/16 v10, 0x8

    if-eqz v8, :cond_0

    .line 240
    invoke-static {v10, v0, v9}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    int-to-long v2, v2

    .line 242
    :cond_0
    aget v8, v0, v10

    int-to-long v11, v8

    and-long v13, v11, v4

    const-wide/16 v11, 0x13

    add-long v15, v13, v11

    add-long v11, v2, v15

    long-to-int v2, v11

    .line 243
    aput v2, v0, v10

    shr-long v2, v11, v1

    cmp-long v8, v2, v6

    const/16 v6, 0xf

    if-eqz v8, :cond_1

    const/16 v2, 0x9

    .line 247
    invoke-static {v6, v0, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    int-to-long v2, v2

    .line 249
    :cond_1
    aget v7, v0, v6

    int-to-long v7, v7

    and-long v10, v7, v4

    sget-object v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v7, v7, v6

    add-int/2addr v7, v9

    int-to-long v7, v7

    and-long v12, v7, v4

    sub-long v4, v10, v12

    add-long v7, v2, v4

    long-to-int v2, v7

    .line 250
    aput v2, v0, v6

    shr-long v0, v7, v1

    long-to-int v0, v0

    return v0
.end method

.method private static subPFrom([I)I
    .locals 10

    const/4 v0, 0x0

    .line 220
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x13

    add-long v7, v5, v1

    long-to-int v1, v7

    .line 221
    aput v1, p0, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v5, 0x7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 225
    invoke-static {v5, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    int-to-long v1, v1

    .line 227
    :cond_0
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    const-wide v3, 0x80000000L

    sub-long v6, v8, v3

    add-long v3, v1, v6

    long-to-int v1, v3

    .line 228
    aput v1, p0, v5

    shr-long v0, v3, v0

    long-to-int p0, v0

    return p0
.end method

.method public static subtract([I[I[I)V
    .locals 0

    .line 156
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 159
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPTo([I)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 174
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    .line 175
    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method
