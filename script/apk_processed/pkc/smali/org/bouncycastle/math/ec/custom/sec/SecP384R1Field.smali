.class public Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v0, 0x18

    .line 15
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    const/16 v0, 0x11

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
        0x2
    .end array-data
.end method

.method public static add([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    .line 26
    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    .line 27
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 1

    const/16 v0, 0x18

    .line 35
    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x17

    .line 36
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 2

    const/16 v0, 0xc

    .line 47
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    .line 48
    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 14

    const/4 v0, 0x0

    .line 246
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    add-long v7, v5, v1

    long-to-int v5, v7

    .line 247
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const/4 v7, 0x1

    .line 249
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    sub-long v8, v10, v1

    add-long v10, v5, v8

    long-to-int v5, v10

    .line 250
    aput v5, p0, v7

    shr-long v5, v10, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x2

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
    const/4 v9, 0x3

    .line 258
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v12, v1

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 259
    aput v5, p0, v9

    shr-long v5, v12, v0

    const/4 v9, 0x4

    .line 261
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 262
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/16 v0, 0xc

    const/4 v1, 0x5

    .line 266
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    const/16 v0, 0x180

    .line 56
    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    const/16 v0, 0xb

    .line 57
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v1, 0xc

    invoke-static {v1, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_0
    return-object p0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    const/16 v0, 0x18

    .line 79
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 80
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 81
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static negate([I[I)V
    .locals 2

    const/16 v0, 0xc

    .line 86
    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat;->zero(I[I)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, v1, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 44

    move-object/from16 v1, p1

    const/16 v2, 0x10

    .line 98
    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/16 v2, 0x11

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v8, v2, v4

    const/16 v2, 0x12

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v10, v2, v4

    const/16 v2, 0x13

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v12, v2, v4

    const/16 v2, 0x14

    .line 99
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v14, v2, v4

    const/16 v2, 0x15

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v16, v2, v4

    const/16 v2, 0x16

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v18, v2, v4

    const/16 v2, 0x17

    aget v2, p0, v2

    int-to-long v2, v2

    and-long v20, v2, v4

    const/16 v2, 0xc

    .line 103
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v22, v2, v4

    add-long v2, v22, v14

    const-wide/16 v22, 0x1

    sub-long v24, v2, v22

    const/16 v2, 0xd

    .line 104
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v26, v2, v4

    add-long v2, v26, v18

    const/16 v26, 0xe

    move-wide/from16 v28, v14

    .line 105
    aget v14, p0, v26

    int-to-long v14, v14

    and-long v26, v14, v4

    add-long v14, v26, v18

    add-long v26, v14, v20

    const/16 v14, 0xf

    .line 106
    aget v14, p0, v14

    int-to-long v14, v14

    and-long v30, v14, v4

    add-long v14, v30, v20

    add-long v30, v8, v16

    sub-long v32, v16, v20

    sub-long v34, v18, v20

    const/16 v18, 0x0

    move-wide/from16 v36, v12

    .line 112
    aget v12, p0, v18

    int-to-long v12, v12

    and-long v38, v12, v4

    add-long v12, v38, v24

    add-long v38, v12, v32

    const-wide/16 v12, 0x0

    add-long v4, v38, v12

    long-to-int v12, v4

    .line 113
    aput v12, v1, v18

    const/16 v12, 0x20

    shr-long/2addr v4, v12

    const/4 v13, 0x1

    .line 115
    aget v12, p0, v13

    move-wide/from16 v40, v14

    int-to-long v13, v12

    const-wide v18, 0xffffffffL

    and-long v38, v13, v18

    add-long v12, v38, v20

    sub-long v14, v12, v24

    add-long v12, v14, v2

    add-long v14, v4, v12

    long-to-int v4, v14

    const/4 v5, 0x1

    .line 116
    aput v4, v1, v5

    const/16 v4, 0x20

    shr-long v12, v14, v4

    const/4 v5, 0x2

    .line 118
    aget v14, p0, v5

    int-to-long v14, v14

    and-long v20, v14, v18

    sub-long v14, v20, v16

    sub-long v20, v14, v2

    add-long v14, v20, v26

    move-wide/from16 v42, v8

    add-long v8, v12, v14

    long-to-int v12, v8

    .line 119
    aput v12, v1, v5

    shr-long/2addr v8, v4

    const/4 v4, 0x3

    .line 121
    aget v5, p0, v4

    int-to-long v12, v5

    and-long v14, v12, v18

    add-long v12, v14, v24

    sub-long v14, v12, v26

    add-long v12, v14, v40

    add-long v14, v12, v32

    add-long v12, v8, v14

    long-to-int v5, v12

    .line 122
    aput v5, v1, v4

    const/16 v4, 0x20

    shr-long v8, v12, v4

    const/4 v4, 0x4

    .line 124
    aget v5, p0, v4

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long v18, v12, v14

    add-long v12, v18, v6

    add-long v14, v12, v16

    add-long v12, v14, v24

    add-long v14, v12, v2

    sub-long v12, v14, v40

    add-long v14, v12, v32

    add-long v12, v8, v14

    long-to-int v5, v12

    .line 125
    aput v5, v1, v4

    const/16 v4, 0x20

    shr-long v8, v12, v4

    const/4 v4, 0x5

    .line 127
    aget v5, p0, v4

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long v16, v12, v14

    sub-long v12, v16, v6

    add-long v14, v12, v2

    add-long v2, v14, v26

    add-long v12, v2, v30

    add-long v2, v8, v12

    long-to-int v5, v2

    .line 128
    aput v5, v1, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    const/4 v4, 0x6

    .line 130
    aget v5, p0, v4

    int-to-long v8, v5

    const-wide v12, 0xffffffffL

    and-long v14, v8, v12

    add-long v8, v14, v10

    sub-long v12, v8, v42

    add-long v8, v12, v26

    add-long v12, v8, v40

    add-long v8, v2, v12

    long-to-int v2, v8

    .line 131
    aput v2, v1, v4

    const/16 v2, 0x20

    shr-long v3, v8, v2

    const/4 v2, 0x7

    .line 133
    aget v5, p0, v2

    int-to-long v8, v5

    const-wide v12, 0xffffffffL

    and-long v14, v8, v12

    add-long v8, v14, v6

    add-long v12, v8, v36

    sub-long v8, v12, v10

    add-long v12, v8, v40

    add-long v8, v3, v12

    long-to-int v3, v8

    .line 134
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v8, v2

    const/16 v2, 0x8

    .line 136
    aget v5, p0, v2

    int-to-long v8, v5

    const-wide v12, 0xffffffffL

    and-long v14, v8, v12

    add-long v8, v14, v6

    add-long v5, v8, v42

    add-long v7, v5, v28

    sub-long v5, v7, v36

    add-long v7, v3, v5

    long-to-int v3, v7

    .line 137
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v7, v2

    const/16 v5, 0x9

    .line 139
    aget v6, p0, v5

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v12, v6, v8

    add-long v6, v12, v10

    sub-long v12, v6, v28

    add-long v6, v12, v30

    add-long v12, v3, v6

    long-to-int v3, v12

    .line 140
    aput v3, v1, v5

    shr-long v3, v12, v2

    const/16 v2, 0xa

    .line 142
    aget v5, p0, v2

    int-to-long v5, v5

    and-long v12, v5, v8

    add-long v5, v12, v10

    add-long v7, v5, v36

    sub-long v5, v7, v32

    add-long v7, v5, v34

    add-long v5, v3, v7

    long-to-int v3, v5

    .line 143
    aput v3, v1, v2

    const/16 v2, 0x20

    shr-long v3, v5, v2

    const/16 v5, 0xb

    .line 145
    aget v0, p0, v5

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long v10, v6, v8

    add-long v6, v10, v36

    add-long v8, v6, v28

    sub-long v6, v8, v34

    add-long v8, v3, v6

    long-to-int v0, v8

    .line 146
    aput v0, v1, v5

    shr-long v2, v8, v2

    add-long v4, v2, v22

    long-to-int v0, v4

    .line 152
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

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

    .line 163
    aget v2, p1, p0

    int-to-long v2, v2

    and-long v8, v2, v4

    add-long v2, v8, v6

    add-long v8, v2, v0

    long-to-int v2, v8

    .line 164
    aput v2, p1, p0

    const/16 p0, 0x20

    shr-long v2, v8, p0

    const/4 v8, 0x1

    .line 166
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    sub-long v9, v11, v6

    add-long v11, v2, v9

    long-to-int v2, v11

    .line 167
    aput v2, p1, v8

    shr-long v2, v11, p0

    cmp-long v8, v2, v0

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    .line 171
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v9, v2, v11

    long-to-int v2, v9

    .line 172
    aput v2, p1, v8

    shr-long v2, v9, p0

    :cond_0
    const/4 v8, 0x3

    .line 175
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v9, v11, v6

    add-long v11, v2, v9

    long-to-int v2, v11

    .line 176
    aput v2, p1, v8

    shr-long v2, v11, p0

    const/4 v8, 0x4

    .line 178
    aget v9, p1, v8

    int-to-long v9, v9

    and-long v11, v9, v4

    add-long v4, v11, v6

    add-long v6, v2, v4

    long-to-int v2, v6

    .line 179
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long p0, v2, v0

    const/16 v0, 0xc

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    .line 185
    invoke-static {v0, p1, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/16 p0, 0xb

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_4

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 186
    invoke-static {v0, p1, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 188
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    const/16 v0, 0x18

    .line 194
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 195
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 196
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    const/16 v0, 0x18

    .line 203
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 204
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 205
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 209
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 210
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 14

    const/4 v0, 0x0

    .line 272
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    const-wide/16 v1, 0x1

    sub-long v7, v5, v1

    long-to-int v5, v7

    .line 273
    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v5, v7, v0

    const/4 v7, 0x1

    .line 275
    aget v8, p0, v7

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v10, v1

    add-long v10, v5, v8

    long-to-int v5, v10

    .line 276
    aput v5, p0, v7

    shr-long v5, v10, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    .line 280
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    add-long v10, v5, v12

    long-to-int v5, v10

    .line 281
    aput v5, p0, v9

    shr-long v5, v10, v0

    :cond_0
    const/4 v9, 0x3

    .line 284
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    sub-long v10, v12, v1

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 285
    aput v5, p0, v9

    shr-long v5, v12, v0

    const/4 v9, 0x4

    .line 287
    aget v10, p0, v9

    int-to-long v10, v10

    and-long v12, v10, v3

    sub-long v3, v12, v1

    add-long v1, v5, v3

    long-to-int v3, v1

    .line 288
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/16 v0, 0xc

    const/4 v1, 0x5

    .line 292
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    .line 216
    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 219
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 237
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    .line 238
    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 240
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
