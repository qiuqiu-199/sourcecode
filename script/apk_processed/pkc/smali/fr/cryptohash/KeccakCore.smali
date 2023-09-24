.class abstract Lfr/cryptohash/KeccakCore;
.super Lfr/cryptohash/DigestEngine;
.source "KeccakCore.java"


# static fields
.field private static final RC:[J


# instance fields
.field private A:[J

.field private tmpOut:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 50
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lfr/cryptohash/KeccakCore;->RC:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lfr/cryptohash/DigestEngine;-><init>()V

    return-void
.end method

.method private static final decodeLELong([BI)J
    .locals 8

    add-int/lit8 v0, p1, 0x0

    .line 96
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x8

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x10

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x18

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x20

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x28

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x6

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x30

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long v0, p0, v2

    const/16 p0, 0x38

    shl-long p0, v0, p0

    or-long v0, v4, p0

    return-wide v0
.end method

.method private final doReset()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 567
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 568
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v1, 0x8

    aput-wide v2, v0, v1

    .line 569
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v1, 0xc

    aput-wide v2, v0, v1

    .line 570
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v1, 0x11

    aput-wide v2, v0, v1

    .line 571
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v1, 0x14

    aput-wide v2, v0, v1

    return-void
.end method

.method private static final encodeLELong(J[BI)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 76
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 77
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 78
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 79
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 80
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 81
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 82
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 83
    aput-byte p0, p2, p3

    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 1

    const/16 v0, 0x19

    .line 551
    new-array v0, v0, [J

    iput-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    .line 552
    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->getDigestLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/cryptohash/KeccakCore;->tmpOut:[B

    .line 553
    invoke-direct {p0}, Lfr/cryptohash/KeccakCore;->doReset()V

    return-void
.end method

.method protected doPadding([BI)V
    .locals 12

    .line 525
    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->flush()I

    move-result v0

    .line 526
    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->getBlockBuffer()[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 527
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, -0x7f

    .line 528
    aput-byte v2, v1, v0

    goto :goto_1

    .line 530
    :cond_0
    aput-byte v5, v1, v0

    .line 531
    :goto_0
    array-length v0, v1

    sub-int/2addr v0, v5

    if-ge v2, v0, :cond_1

    .line 532
    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    :cond_1
    array-length v0, v1

    sub-int/2addr v0, v5

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    .line 535
    :goto_1
    invoke-virtual {p0, v1}, Lfr/cryptohash/KeccakCore;->processBlock([B)V

    .line 536
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v2, v1, v5

    const-wide/16 v6, -0x1

    xor-long v8, v2, v6

    aput-wide v8, v0, v5

    .line 537
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v2, 0x2

    aget-wide v8, v1, v2

    xor-long v10, v8, v6

    aput-wide v10, v0, v2

    .line 538
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v2, 0x8

    aget-wide v8, v1, v2

    xor-long v10, v8, v6

    aput-wide v10, v0, v2

    .line 539
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v2, 0xc

    aget-wide v8, v1, v2

    xor-long v10, v8, v6

    aput-wide v10, v0, v2

    .line 540
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v2, 0x11

    aget-wide v8, v1, v2

    xor-long v10, v8, v6

    aput-wide v10, v0, v2

    .line 541
    iget-object v0, p0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v2, 0x14

    aget-wide v8, v1, v2

    xor-long v10, v8, v6

    aput-wide v10, v0, v2

    .line 542
    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->getDigestLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 544
    iget-object v2, p0, Lfr/cryptohash/KeccakCore;->A:[J

    ushr-int/lit8 v3, v1, 0x3

    aget-wide v5, v2, v3

    iget-object v2, p0, Lfr/cryptohash/KeccakCore;->tmpOut:[B

    invoke-static {v5, v6, v2, v1}, Lfr/cryptohash/KeccakCore;->encodeLELong(J[BI)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 545
    :cond_2
    iget-object v1, p0, Lfr/cryptohash/KeccakCore;->tmpOut:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected engineReset()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lfr/cryptohash/KeccakCore;->doReset()V

    return-void
.end method

.method public getBlockLength()I
    .locals 1

    .line 559
    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->getDigestLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xc8

    return v0
.end method

.method protected processBlock([B)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 116
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 117
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    ushr-int/lit8 v4, v2, 0x3

    aget-wide v5, v3, v4

    invoke-static {v1, v2}, Lfr/cryptohash/KeccakCore;->decodeLELong([BI)J

    move-result-wide v7

    xor-long v9, v5, v7

    aput-wide v9, v3, v4

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 132
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v4, 0x1

    aget-wide v5, v3, v4

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v7, 0x6

    aget-wide v8, v3, v7

    xor-long v10, v5, v8

    .line 133
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v5, 0xb

    aget-wide v5, v3, v5

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v8, 0x10

    aget-wide v8, v3, v8

    xor-long v12, v5, v8

    .line 134
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v5, 0x15

    aget-wide v8, v3, v5

    xor-long v14, v8, v12

    xor-long v8, v10, v14

    shl-long v10, v8, v4

    const/16 v3, 0x3f

    ushr-long/2addr v8, v3

    or-long v12, v10, v8

    .line 136
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v6, 0x4

    aget-wide v8, v3, v6

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v6, 0x9

    aget-wide v10, v3, v6

    xor-long v14, v8, v10

    .line 137
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v8, 0xe

    aget-wide v9, v3, v8

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x13

    aget-wide v16, v3, v11

    xor-long v18, v9, v16

    .line 138
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v9, v3, v2

    xor-long v16, v12, v9

    xor-long v9, v14, v18

    xor-long v12, v16, v9

    .line 142
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v9, 0x2

    aget-wide v14, v3, v9

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v10, 0x7

    aget-wide v16, v3, v10

    xor-long v18, v14, v16

    .line 143
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0xc

    aget-wide v14, v3, v10

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0x11

    aget-wide v16, v3, v10

    xor-long v20, v14, v16

    .line 144
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0x16

    aget-wide v14, v3, v10

    xor-long v16, v14, v20

    xor-long v14, v18, v16

    shl-long v16, v14, v4

    const/16 v3, 0x3f

    ushr-long/2addr v14, v3

    or-long v18, v16, v14

    .line 146
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v10, 0x0

    aget-wide v14, v3, v10

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v10, 0x5

    aget-wide v16, v3, v10

    xor-long v20, v14, v16

    .line 147
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0xa

    aget-wide v14, v3, v10

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v16, 0xf

    aget-wide v22, v3, v16

    xor-long v24, v14, v22

    .line 148
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v14, 0x14

    aget-wide v22, v3, v14

    xor-long v26, v18, v22

    xor-long v17, v20, v24

    xor-long v19, v26, v17

    .line 152
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v15, 0x3

    aget-wide v17, v3, v15

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v21, 0x8

    aget-wide v22, v3, v21

    xor-long v24, v17, v22

    .line 153
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v17, 0xd

    aget-wide v17, v3, v17

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v22, 0x12

    aget-wide v26, v3, v22

    xor-long v28, v17, v26

    .line 154
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v17, 0x17

    aget-wide v26, v3, v17

    xor-long v30, v26, v28

    xor-long v26, v24, v30

    shl-long v23, v26, v4

    const/16 v3, 0x3f

    ushr-long v25, v26, v3

    or-long v27, v23, v25

    .line 156
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v4

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v7

    xor-long v29, v23, v25

    .line 157
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xb

    aget-wide v23, v3, v18

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x10

    aget-wide v25, v3, v18

    xor-long v31, v23, v25

    .line 158
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v5

    xor-long v25, v27, v23

    xor-long v23, v29, v31

    xor-long v27, v25, v23

    .line 162
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v23, v3, v18

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v6

    xor-long v29, v23, v25

    .line 163
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v8

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v11

    xor-long v31, v23, v25

    .line 164
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v2

    xor-long v25, v23, v31

    xor-long v23, v29, v25

    shl-long v25, v23, v4

    const/16 v3, 0x3f

    ushr-long v23, v23, v3

    or-long v29, v25, v23

    .line 166
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v9

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x7

    aget-wide v25, v3, v18

    xor-long v31, v23, v25

    .line 167
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xc

    aget-wide v23, v3, v18

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x11

    aget-wide v25, v3, v18

    xor-long v33, v23, v25

    .line 168
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x16

    aget-wide v23, v3, v18

    xor-long v25, v29, v23

    xor-long v23, v31, v33

    xor-long v29, v25, v23

    .line 172
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x0

    aget-wide v23, v3, v18

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v25, v3, v18

    xor-long v31, v23, v25

    .line 173
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v10

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v16

    xor-long v33, v23, v25

    .line 174
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v14

    xor-long v25, v23, v33

    xor-long v23, v31, v25

    shl-long v25, v23, v4

    const/16 v3, 0x3f

    ushr-long v23, v23, v3

    or-long v31, v25, v23

    .line 176
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v15

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v21

    xor-long v33, v23, v25

    .line 177
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xd

    aget-wide v23, v3, v18

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v3, v22

    xor-long v35, v23, v25

    .line 178
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v17

    xor-long v25, v31, v23

    xor-long v23, v33, v35

    xor-long v31, v25, v23

    .line 182
    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x0

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v23, 0x0

    aget-wide v23, v2, v23

    xor-long v25, v23, v12

    aput-wide v25, v3, v18

    .line 183
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v23, v11, v18

    xor-long v25, v23, v12

    aput-wide v25, v2, v3

    .line 184
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v10

    xor-long v25, v23, v12

    aput-wide v25, v2, v10

    .line 185
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v16

    xor-long v25, v23, v12

    aput-wide v25, v2, v16

    .line 186
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v3, v14

    xor-long v25, v23, v12

    aput-wide v25, v2, v14

    .line 187
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v4

    xor-long v23, v11, v19

    aput-wide v23, v2, v4

    .line 188
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v7

    xor-long v23, v11, v19

    aput-wide v23, v2, v7

    .line 189
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xb

    aget-wide v12, v11, v12

    xor-long v23, v12, v19

    aput-wide v23, v2, v3

    .line 190
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    xor-long v23, v12, v19

    aput-wide v23, v2, v3

    .line 191
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v5

    xor-long v23, v11, v19

    aput-wide v23, v2, v5

    .line 192
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v9

    xor-long v18, v11, v27

    aput-wide v18, v2, v9

    .line 193
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 194
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 195
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 196
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 197
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v15

    xor-long v18, v11, v29

    aput-wide v18, v2, v15

    .line 198
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v21

    xor-long v18, v11, v29

    aput-wide v18, v2, v21

    .line 199
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    xor-long v18, v12, v29

    aput-wide v18, v2, v3

    .line 200
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v22

    xor-long v18, v11, v29

    aput-wide v18, v2, v22

    .line 201
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v17

    xor-long v18, v11, v29

    aput-wide v18, v2, v17

    .line 202
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    xor-long v18, v12, v31

    aput-wide v18, v2, v3

    .line 203
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v6

    xor-long v18, v11, v31

    aput-wide v18, v2, v6

    .line 204
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v8

    xor-long v18, v11, v31

    aput-wide v18, v2, v8

    .line 205
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x13

    aget-wide v12, v3, v11

    xor-long v18, v12, v31

    aput-wide v18, v2, v11

    .line 206
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x18

    aget-wide v12, v3, v11

    xor-long v18, v12, v31

    aput-wide v18, v2, v11

    .line 207
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    const/16 v11, 0x24

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v18, v13, v18

    const/16 v13, 0x1c

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 208
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v10

    shl-long/2addr v11, v15

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v10

    const/16 v3, 0x3d

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v10

    .line 209
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v16

    const/16 v3, 0x29

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v16

    ushr-long v18, v18, v17

    or-long v23, v11, v18

    aput-wide v23, v2, v16

    .line 210
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v14

    shl-long v11, v11, v22

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v14

    const/16 v3, 0x2e

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v14

    .line 211
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v4

    shl-long/2addr v11, v4

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v4

    const/16 v3, 0x3f

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v4

    .line 212
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v7

    const/16 v3, 0x2c

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v7

    ushr-long v18, v18, v14

    or-long v23, v11, v18

    aput-wide v23, v2, v7

    .line 213
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xb

    aget-wide v12, v11, v12

    shl-long v11, v12, v10

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xb

    aget-wide v18, v13, v18

    const/16 v13, 0x36

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 214
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    const/16 v11, 0x2d

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x10

    aget-wide v18, v13, v18

    const/16 v13, 0x13

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 215
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v5

    shl-long/2addr v11, v9

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v5

    const/16 v3, 0x3e

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v5

    .line 216
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v9

    const/16 v3, 0x3e

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v9

    ushr-long v18, v18, v9

    or-long v23, v11, v18

    aput-wide v23, v2, v9

    .line 217
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    shl-long v11, v12, v7

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x7

    aget-wide v18, v13, v18

    const/16 v13, 0x3a

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 218
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    const/16 v11, 0x2b

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xc

    aget-wide v18, v13, v18

    ushr-long v18, v18, v5

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 219
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    shl-long v11, v12, v16

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x11

    aget-wide v18, v13, v18

    const/16 v13, 0x31

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 220
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    const/16 v11, 0x3d

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x16

    aget-wide v18, v13, v18

    ushr-long v18, v18, v15

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 221
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v15

    const/16 v3, 0x1c

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v15

    const/16 v3, 0x24

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v15

    .line 222
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v21

    const/16 v3, 0x37

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v21

    ushr-long v18, v18, v6

    or-long v23, v11, v18

    aput-wide v23, v2, v21

    .line 223
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    const/16 v11, 0x19

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xd

    aget-wide v18, v13, v18

    const/16 v13, 0x27

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 224
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v22

    shl-long/2addr v11, v5

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v22

    const/16 v3, 0x2b

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v22

    .line 225
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v17

    const/16 v3, 0x38

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v17

    ushr-long v18, v18, v21

    or-long v23, v11, v18

    aput-wide v23, v2, v17

    .line 226
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    const/16 v11, 0x1b

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v13, v18

    const/16 v13, 0x25

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 227
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v6

    shl-long/2addr v11, v14

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v6

    const/16 v3, 0x2c

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v6

    .line 228
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v8

    const/16 v3, 0x27

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v8

    const/16 v3, 0x19

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v8

    .line 229
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x13

    aget-wide v12, v3, v11

    shl-long v12, v12, v21

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v11

    const/16 v3, 0x38

    ushr-long v18, v18, v3

    or-long v23, v12, v18

    aput-wide v23, v2, v11

    .line 230
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x18

    aget-wide v12, v3, v11

    shl-long/2addr v12, v8

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v11

    const/16 v3, 0x32

    ushr-long v18, v18, v3

    or-long v23, v12, v18

    aput-wide v23, v2, v11

    .line 231
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 232
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v7

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aget-wide v23, v2, v3

    or-long v2, v11, v23

    .line 233
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    xor-long v23, v12, v2

    .line 234
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v22

    or-long v2, v18, v11

    .line 235
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v7

    xor-long v18, v12, v2

    .line 236
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v22

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x18

    aget-wide v25, v2, v3

    and-long v27, v11, v25

    .line 237
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0xc

    aget-wide v11, v2, v11

    xor-long v25, v11, v27

    .line 238
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aget-wide v27, v2, v3

    or-long v2, v11, v27

    .line 239
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v22

    xor-long v27, v12, v2

    .line 240
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v7

    and-long v2, v11, v29

    .line 241
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x18

    aget-wide v29, v11, v12

    xor-long v11, v29, v2

    .line 242
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aput-wide v23, v2, v3

    .line 243
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v18, v2, v7

    .line 244
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aput-wide v25, v2, v3

    .line 245
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v27, v2, v22

    .line 246
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x18

    aput-wide v11, v2, v3

    .line 247
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 248
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v6

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v2, v10

    or-long v2, v11, v23

    .line 249
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v15

    xor-long v23, v12, v2

    .line 250
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v10

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aget-wide v25, v2, v3

    and-long v2, v11, v25

    .line 251
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v6

    xor-long v25, v12, v2

    .line 252
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aget-wide v11, v2, v3

    or-long v2, v11, v18

    .line 253
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v10

    xor-long v18, v12, v2

    .line 254
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v27, v2, v15

    or-long v2, v11, v27

    .line 255
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    xor-long v27, v12, v2

    .line 256
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v15

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v6

    and-long v2, v11, v29

    .line 257
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    xor-long v29, v12, v2

    .line 258
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v23, v2, v15

    .line 259
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v25, v2, v6

    .line 260
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v18, v2, v10

    .line 261
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aput-wide v27, v2, v3

    .line 262
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aput-wide v29, v2, v3

    .line 263
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x13

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 264
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aget-wide v23, v2, v3

    or-long v2, v11, v23

    .line 265
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v4

    xor-long v23, v12, v2

    .line 266
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x13

    aget-wide v25, v2, v3

    and-long v2, v11, v25

    .line 267
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    xor-long v25, v12, v2

    .line 268
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v14

    and-long v2, v18, v11

    .line 269
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    xor-long v27, v12, v2

    .line 270
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v14

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v4

    or-long v2, v11, v29

    xor-long v11, v18, v2

    .line 272
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v4

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aget-wide v29, v2, v3

    and-long v2, v18, v29

    .line 273
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v14

    xor-long v29, v18, v2

    .line 274
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v23, v2, v4

    .line 275
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aput-wide v25, v2, v3

    .line 276
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aput-wide v27, v2, v3

    .line 277
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x13

    aput-wide v11, v2, v3

    .line 278
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v14

    .line 279
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 280
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aget-wide v23, v2, v3

    and-long v2, v11, v23

    .line 281
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    xor-long v23, v12, v2

    .line 282
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aget-wide v25, v2, v3

    or-long v2, v11, v25

    .line 283
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    xor-long v25, v12, v2

    .line 284
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v17

    or-long v2, v18, v11

    .line 285
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xb

    aget-wide v12, v11, v12

    xor-long v27, v12, v2

    .line 286
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v17

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aget-wide v29, v2, v3

    and-long v2, v11, v29

    xor-long v11, v18, v2

    .line 288
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aget-wide v18, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aget-wide v29, v2, v3

    or-long v2, v18, v29

    .line 289
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v17

    xor-long v29, v18, v2

    .line 290
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aput-wide v23, v2, v3

    .line 291
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aput-wide v25, v2, v3

    .line 292
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aput-wide v27, v2, v3

    .line 293
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aput-wide v11, v2, v3

    .line 294
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v17

    .line 295
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v21

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 296
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v8

    and-long v2, v18, v11

    .line 297
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v9

    xor-long v23, v12, v2

    .line 298
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v8

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v2, v16

    or-long v2, v11, v25

    xor-long v11, v18, v2

    .line 300
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v16

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v2, v5

    and-long v2, v18, v25

    .line 301
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v8

    xor-long v25, v18, v2

    .line 302
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v5

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v27, v2, v9

    or-long v2, v18, v27

    .line 303
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v16

    xor-long v27, v18, v2

    .line 304
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v9

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v21

    and-long v2, v18, v29

    .line 305
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v5

    xor-long v29, v18, v2

    .line 306
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v23, v2, v9

    .line 307
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v11, v2, v21

    .line 308
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v25, v2, v8

    .line 309
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v27, v2, v16

    .line 310
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v5

    .line 311
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    sget-object v11, Lfr/cryptohash/KeccakCore;->RC:[J

    add-int/lit8 v18, v1, 0x0

    aget-wide v18, v11, v18

    xor-long v23, v12, v18

    aput-wide v23, v2, v3

    .line 313
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v7

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v6

    xor-long v2, v11, v18

    .line 314
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v18, v11, v18

    xor-long v23, v12, v18

    .line 315
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v21

    xor-long v18, v12, v23

    xor-long v11, v2, v18

    shl-long v2, v11, v4

    const/16 v13, 0x3f

    ushr-long/2addr v11, v13

    or-long v18, v2, v11

    .line 317
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x18

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aget-wide v23, v2, v3

    xor-long v2, v11, v23

    .line 318
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v14

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v11, v17

    xor-long v25, v12, v23

    .line 319
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v5

    xor-long v23, v18, v12

    xor-long v11, v2, v25

    xor-long v2, v23, v11

    .line 323
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v10

    xor-long v23, v12, v18

    .line 324
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xb

    aget-wide v18, v11, v18

    xor-long v25, v12, v18

    .line 325
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v8

    xor-long v18, v12, v25

    xor-long v11, v23, v18

    shl-long v18, v11, v4

    const/16 v13, 0x3f

    ushr-long/2addr v11, v13

    or-long v23, v18, v11

    .line 327
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v15

    xor-long v25, v12, v18

    .line 328
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v4

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v11, v18

    xor-long v27, v12, v18

    .line 329
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v9

    xor-long v18, v23, v12

    xor-long v11, v25, v27

    xor-long v23, v18, v11

    .line 333
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v22

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x10

    aget-wide v18, v11, v18

    xor-long v25, v12, v18

    .line 334
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x13

    aget-wide v18, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    xor-long v27, v18, v12

    .line 335
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v16

    xor-long v18, v12, v27

    xor-long v11, v25, v18

    shl-long v18, v11, v4

    const/16 v13, 0x3f

    ushr-long/2addr v11, v13

    or-long v25, v18, v11

    .line 337
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v7

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v6

    xor-long v27, v12, v18

    .line 338
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v18, v11, v18

    xor-long v29, v12, v18

    .line 339
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v21

    xor-long v18, v25, v12

    xor-long v11, v27, v29

    xor-long v25, v18, v11

    .line 343
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x18

    aget-wide v18, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    xor-long v27, v18, v12

    .line 344
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v14

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v17

    xor-long v29, v12, v18

    .line 345
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v5

    xor-long v18, v12, v29

    xor-long v11, v27, v18

    shl-long v18, v11, v4

    const/16 v13, 0x3f

    ushr-long/2addr v11, v13

    or-long v27, v18, v11

    .line 347
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v10

    xor-long v29, v12, v18

    .line 348
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xb

    aget-wide v18, v11, v18

    xor-long v31, v12, v18

    .line 349
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v8

    xor-long v18, v27, v12

    xor-long v11, v29, v31

    xor-long v27, v18, v11

    .line 353
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v11, v15

    xor-long v29, v12, v18

    .line 354
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v4

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v11, v18

    xor-long v31, v12, v18

    .line 355
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v9

    xor-long v18, v12, v31

    xor-long v11, v29, v18

    shl-long v18, v11, v4

    const/16 v13, 0x3f

    ushr-long/2addr v11, v13

    or-long v29, v18, v11

    .line 357
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v22

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x10

    aget-wide v18, v11, v18

    xor-long v31, v12, v18

    .line 358
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x13

    aget-wide v18, v11, v12

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    xor-long v33, v18, v12

    .line 359
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v16

    xor-long v18, v29, v12

    xor-long v11, v31, v33

    xor-long v29, v18, v11

    .line 363
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x0

    aget-wide v18, v13, v18

    xor-long v31, v18, v2

    aput-wide v31, v11, v12

    .line 364
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v12, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v12, v15

    xor-long v12, v18, v2

    aput-wide v12, v11, v15

    .line 365
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v12, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v12, v4

    xor-long v12, v18, v2

    aput-wide v12, v11, v4

    .line 366
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x4

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v13, v18

    xor-long v31, v18, v2

    aput-wide v31, v11, v12

    .line 367
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v12, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v12, v9

    xor-long v12, v18, v2

    aput-wide v12, v11, v9

    .line 368
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v7

    xor-long v18, v11, v23

    aput-wide v18, v2, v7

    .line 369
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v6

    xor-long v18, v11, v23

    aput-wide v18, v2, v6

    .line 370
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    xor-long v18, v12, v23

    aput-wide v18, v2, v3

    .line 371
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    xor-long v18, v12, v23

    aput-wide v18, v2, v3

    .line 372
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v21

    xor-long v18, v11, v23

    aput-wide v18, v2, v21

    .line 373
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    xor-long v18, v12, v25

    aput-wide v18, v2, v3

    .line 374
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v10

    xor-long v18, v11, v25

    aput-wide v18, v2, v10

    .line 375
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    xor-long v18, v12, v25

    aput-wide v18, v2, v3

    .line 376
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xb

    aget-wide v12, v11, v12

    xor-long v18, v12, v25

    aput-wide v18, v2, v3

    .line 377
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v8

    xor-long v18, v11, v25

    aput-wide v18, v2, v8

    .line 378
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v22

    xor-long v18, v11, v27

    aput-wide v18, v2, v22

    .line 379
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 380
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x13

    aget-wide v12, v3, v11

    xor-long v18, v12, v27

    aput-wide v18, v2, v11

    .line 381
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    xor-long v18, v12, v27

    aput-wide v18, v2, v3

    .line 382
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v16

    xor-long v18, v11, v27

    aput-wide v18, v2, v16

    .line 383
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x18

    aget-wide v12, v3, v11

    xor-long v18, v12, v29

    aput-wide v18, v2, v11

    .line 384
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    xor-long v18, v12, v29

    aput-wide v18, v2, v3

    .line 385
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v14

    xor-long v18, v11, v29

    aput-wide v18, v2, v14

    .line 386
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v17

    xor-long v18, v11, v29

    aput-wide v18, v2, v17

    .line 387
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v5

    xor-long v18, v11, v29

    aput-wide v18, v2, v5

    .line 388
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v15

    const/16 v3, 0x24

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v15

    const/16 v3, 0x1c

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v15

    .line 389
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v4

    shl-long/2addr v11, v15

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v4

    const/16 v3, 0x3d

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v4

    .line 390
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    const/16 v11, 0x29

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v13, v18

    ushr-long v18, v18, v17

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 391
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v9

    shl-long v11, v11, v22

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v9

    const/16 v3, 0x2e

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v9

    .line 392
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v7

    shl-long/2addr v11, v4

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v7

    const/16 v3, 0x3f

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v7

    .line 393
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v6

    const/16 v3, 0x2c

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v6

    ushr-long v18, v18, v14

    or-long v23, v11, v18

    aput-wide v23, v2, v6

    .line 394
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    shl-long v11, v12, v10

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x7

    aget-wide v18, v13, v18

    const/16 v13, 0x36

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 395
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    const/16 v11, 0x2d

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x5

    aget-wide v18, v13, v18

    const/16 v13, 0x13

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 396
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v21

    shl-long/2addr v11, v9

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v21

    const/16 v3, 0x3e

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v21

    .line 397
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    const/16 v11, 0x3e

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xc

    aget-wide v18, v13, v18

    ushr-long v18, v18, v9

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 398
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v10

    shl-long/2addr v11, v7

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v10

    const/16 v3, 0x3a

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v10

    .line 399
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    const/16 v11, 0x2b

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xd

    aget-wide v18, v13, v18

    ushr-long v18, v18, v5

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 400
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xb

    aget-wide v12, v11, v12

    shl-long v11, v12, v16

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0xb

    aget-wide v18, v13, v18

    const/16 v13, 0x31

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 401
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v8

    const/16 v3, 0x3d

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v8

    ushr-long v18, v18, v15

    or-long v23, v11, v18

    aput-wide v23, v2, v8

    .line 402
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v22

    const/16 v3, 0x1c

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v22

    const/16 v3, 0x24

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v22

    .line 403
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    const/16 v11, 0x37

    shl-long v11, v12, v11

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x10

    aget-wide v18, v13, v18

    ushr-long v18, v18, v6

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 404
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x13

    aget-wide v12, v3, v11

    const/16 v3, 0x19

    shl-long/2addr v12, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v11

    const/16 v3, 0x27

    ushr-long v18, v18, v3

    or-long v23, v12, v18

    aput-wide v23, v2, v11

    .line 405
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    shl-long v11, v12, v5

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x11

    aget-wide v18, v13, v18

    const/16 v13, 0x2b

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 406
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v16

    const/16 v3, 0x38

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v16

    ushr-long v18, v18, v21

    or-long v23, v11, v18

    aput-wide v23, v2, v16

    .line 407
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v11, 0x18

    aget-wide v12, v3, v11

    const/16 v3, 0x1b

    shl-long/2addr v12, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v11

    const/16 v3, 0x25

    ushr-long v18, v18, v3

    or-long v23, v12, v18

    aput-wide v23, v2, v11

    .line 408
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    shl-long v11, v12, v14

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x16

    aget-wide v18, v13, v18

    const/16 v13, 0x2c

    ushr-long v18, v18, v13

    or-long v23, v11, v18

    aput-wide v23, v2, v3

    .line 409
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v14

    const/16 v3, 0x27

    shl-long/2addr v11, v3

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v14

    const/16 v3, 0x19

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v14

    .line 410
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v17

    shl-long v11, v11, v21

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v17

    const/16 v3, 0x38

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v17

    .line 411
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v3, v5

    shl-long/2addr v11, v8

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v5

    const/16 v3, 0x32

    ushr-long v18, v18, v3

    or-long v23, v11, v18

    aput-wide v23, v2, v5

    .line 412
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 413
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v6

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aget-wide v23, v2, v3

    or-long v2, v11, v23

    .line 414
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    xor-long v23, v12, v2

    .line 415
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aget-wide v11, v2, v3

    or-long v2, v18, v11

    .line 416
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v6

    xor-long v18, v12, v2

    .line 417
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v2, v5

    and-long v2, v11, v25

    .line 418
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    xor-long v25, v12, v2

    .line 419
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v5

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aget-wide v27, v2, v3

    or-long v2, v11, v27

    .line 420
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    xor-long v27, v12, v2

    .line 421
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v6

    and-long v2, v11, v29

    .line 422
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v5

    xor-long v29, v12, v2

    .line 423
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    aput-wide v23, v2, v3

    .line 424
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v18, v2, v6

    .line 425
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    aput-wide v25, v2, v3

    .line 426
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    aput-wide v27, v2, v3

    .line 427
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v5

    .line 428
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v8

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 429
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v2, v4

    or-long v2, v11, v23

    .line 430
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v22

    xor-long v23, v12, v2

    .line 431
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v4

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aget-wide v25, v2, v3

    and-long v2, v11, v25

    .line 432
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x16

    aget-wide v12, v11, v12

    xor-long v25, v12, v2

    .line 433
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aget-wide v11, v2, v3

    or-long v2, v11, v18

    .line 434
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v4

    xor-long v18, v12, v2

    .line 435
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v8

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v27, v2, v22

    or-long v2, v11, v27

    .line 436
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    xor-long v27, v12, v2

    .line 437
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v22

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aget-wide v29, v2, v3

    and-long v2, v11, v29

    .line 438
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v8

    xor-long v29, v12, v2

    .line 439
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v23, v2, v22

    .line 440
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    aput-wide v25, v2, v3

    .line 441
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v18, v2, v4

    .line 442
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aput-wide v27, v2, v3

    .line 443
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v8

    .line 444
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v17

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 445
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v10

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x13

    aget-wide v23, v2, v3

    or-long v25, v11, v23

    .line 446
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v7

    xor-long v23, v11, v25

    .line 447
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v2, v17

    and-long v27, v11, v25

    .line 448
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v10

    xor-long v25, v11, v27

    .line 449
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v9

    and-long v27, v18, v11

    .line 450
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v3

    xor-long v2, v11, v27

    .line 451
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v11, v9

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v27, v11, v7

    or-long v29, v12, v27

    xor-long v11, v18, v29

    .line 453
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v7

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v27, v13, v10

    and-long v29, v18, v27

    .line 454
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v9

    xor-long v27, v18, v29

    .line 455
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v23, v13, v7

    .line 456
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v25, v13, v10

    .line 457
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x13

    aput-wide v2, v13, v18

    .line 458
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v11, v2, v17

    .line 459
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v27, v2, v9

    .line 460
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 461
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v15

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aget-wide v23, v2, v3

    and-long v2, v11, v23

    .line 462
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0x18

    aget-wide v23, v11, v12

    xor-long v11, v23, v2

    .line 463
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aget-wide v23, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aget-wide v25, v2, v3

    or-long v2, v23, v25

    .line 464
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v13, v15

    xor-long v25, v23, v2

    .line 465
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v2, v16

    or-long v2, v18, v23

    .line 466
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v20, 0x7

    aget-wide v23, v13, v20

    xor-long v27, v23, v2

    .line 467
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v23, v2, v16

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x18

    aget-wide v29, v2, v3

    and-long v31, v23, v29

    xor-long v23, v18, v31

    .line 469
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v29, v2, v15

    or-long v31, v18, v29

    .line 470
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v16

    xor-long v29, v18, v31

    .line 471
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v11, v2, v3

    .line 472
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v25, v2, v15

    .line 473
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aput-wide v27, v2, v3

    .line 474
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    aput-wide v23, v2, v3

    .line 475
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v16

    .line 476
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aget-wide v11, v2, v3

    const-wide/16 v2, -0x1

    xor-long v18, v11, v2

    .line 477
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v14

    and-long v2, v18, v11

    .line 478
    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    xor-long v23, v12, v2

    .line 479
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v11, v2, v14

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aget-wide v25, v2, v3

    or-long v2, v11, v25

    xor-long v11, v18, v2

    .line 481
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aget-wide v18, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v25, v2, v21

    and-long v2, v18, v25

    .line 482
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v14

    xor-long v25, v18, v2

    .line 483
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v2, v21

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aget-wide v27, v2, v3

    or-long v2, v18, v27

    .line 484
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v18, 0x4

    aget-wide v18, v13, v18

    xor-long v27, v18, v2

    .line 485
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aget-wide v18, v2, v3

    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aget-wide v29, v2, v3

    and-long v2, v18, v29

    .line 486
    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v21

    xor-long v29, v18, v2

    .line 487
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    aput-wide v23, v2, v3

    .line 488
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    aput-wide v11, v2, v3

    .line 489
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v25, v2, v14

    .line 490
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    aput-wide v27, v2, v3

    .line 491
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v29, v2, v21

    .line 492
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x0

    iget-object v11, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    sget-object v11, Lfr/cryptohash/KeccakCore;->RC:[J

    add-int/lit8 v18, v1, 0x1

    aget-wide v18, v11, v18

    xor-long v23, v12, v18

    aput-wide v23, v2, v3

    .line 493
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x5

    aget-wide v11, v2, v3

    .line 494
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v22

    aput-wide v18, v2, v3

    .line 495
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v13, 0xb

    aget-wide v18, v3, v13

    aput-wide v18, v2, v22

    .line 496
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xb

    iget-object v13, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v13, v10

    aput-wide v18, v2, v3

    .line 497
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v3, v7

    aput-wide v18, v2, v10

    .line 498
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0x16

    aget-wide v18, v3, v10

    aput-wide v18, v2, v7

    .line 499
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x16

    iget-object v7, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v18, v7, v14

    aput-wide v18, v2, v3

    .line 500
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v7, 0xc

    aget-wide v18, v3, v7

    aput-wide v18, v2, v14

    .line 501
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xc

    iget-object v7, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v10, 0x13

    aget-wide v13, v7, v10

    aput-wide v13, v2, v3

    .line 502
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v13, v3, v16

    aput-wide v13, v2, v10

    .line 503
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v7, 0x18

    aget-wide v13, v3, v7

    aput-wide v13, v2, v16

    .line 504
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v13, v3, v21

    aput-wide v13, v2, v7

    .line 505
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aput-wide v11, v2, v21

    .line 506
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v10, v2, v4

    .line 507
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v3, v6

    aput-wide v12, v2, v4

    .line 508
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v12, v3, v8

    aput-wide v12, v2, v6

    .line 509
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v6, v3, v9

    aput-wide v6, v2, v8

    .line 510
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v4, 0xd

    aget-wide v6, v3, v4

    aput-wide v6, v2, v9

    .line 511
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0xd

    iget-object v4, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v6, v4, v17

    aput-wide v6, v2, v3

    .line 512
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v4, 0x4

    aget-wide v6, v3, v4

    aput-wide v6, v2, v17

    .line 513
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x4

    iget-object v4, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v6, v4, v5

    aput-wide v6, v2, v3

    .line 514
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v4, 0x10

    aget-wide v6, v3, v4

    aput-wide v6, v2, v5

    .line 515
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x10

    iget-object v4, v0, Lfr/cryptohash/KeccakCore;->A:[J

    aget-wide v5, v4, v15

    aput-wide v5, v2, v3

    .line 516
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    iget-object v3, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v4, 0x11

    aget-wide v4, v3, v4

    aput-wide v4, v2, v15

    .line 517
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/16 v3, 0x11

    iget-object v4, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v5, 0x7

    aget-wide v5, v4, v5

    aput-wide v5, v2, v3

    .line 518
    iget-object v2, v0, Lfr/cryptohash/KeccakCore;->A:[J

    const/4 v3, 0x7

    aput-wide v10, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfr/cryptohash/KeccakCore;->getDigestLength()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
