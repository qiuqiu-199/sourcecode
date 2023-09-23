.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SkippingStreamCipher;


# static fields
.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    .line 25
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    .line 26
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    .line 50
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    const/16 v1, 0x10

    .line 35
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 36
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v1, 0x40

    .line 37
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 38
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-lez p1, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    return-void

    .line 61
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'rounds\' must be a positive, even number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private limitExceeded(I)Z
    .locals 2

    .line 539
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 540
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz p1, :cond_1

    .line 542
    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez p1, :cond_1

    .line 544
    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private resetLimitCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 517
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 518
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method protected static rotl(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static salsaCore(I[I[I)V
    .locals 33

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 416
    array-length v2, v0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 420
    :cond_0
    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 424
    :cond_1
    rem-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_2

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v3, 0x0

    .line 429
    aget v4, v0, v3

    const/4 v5, 0x1

    .line 430
    aget v6, v0, v5

    const/4 v7, 0x2

    .line 431
    aget v8, v0, v7

    const/4 v9, 0x3

    .line 432
    aget v10, v0, v9

    const/4 v11, 0x4

    .line 433
    aget v12, v0, v11

    const/4 v13, 0x5

    .line 434
    aget v14, v0, v13

    const/4 v15, 0x6

    .line 435
    aget v16, v0, v15

    const/4 v15, 0x7

    .line 436
    aget v17, v0, v15

    const/16 v18, 0x8

    .line 437
    aget v19, v0, v18

    const/16 v13, 0x9

    .line 438
    aget v20, v0, v13

    const/16 v21, 0xa

    .line 439
    aget v22, v0, v21

    const/16 v23, 0xb

    .line 440
    aget v24, v0, v23

    const/16 v25, 0xc

    .line 441
    aget v26, v0, v25

    const/16 v11, 0xd

    .line 442
    aget v27, v0, v11

    const/16 v28, 0xe

    .line 443
    aget v28, v0, v28

    const/16 v29, 0xf

    .line 444
    aget v29, v0, v29

    move/from16 v2, p0

    :goto_0
    if-lez v2, :cond_3

    add-int v9, v4, v26

    .line 448
    invoke-static {v9, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v9, v12

    add-int v12, v9, v4

    .line 449
    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int v12, v19, v12

    add-int v7, v12, v9

    .line 450
    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v7, v26, v7

    add-int v5, v7, v12

    const/16 v3, 0x12

    .line 451
    invoke-static {v5, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    add-int v5, v14, v6

    .line 452
    invoke-static {v5, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int v5, v20, v5

    add-int v15, v5, v14

    .line 453
    invoke-static {v15, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v15, v27, v15

    add-int v13, v15, v5

    .line 454
    invoke-static {v13, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v13

    xor-int/2addr v6, v13

    add-int v13, v6, v15

    .line 455
    invoke-static {v13, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v13

    xor-int/2addr v13, v14

    add-int v14, v22, v16

    const/4 v3, 0x7

    .line 456
    invoke-static {v14, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v3, v28, v14

    add-int v14, v3, v22

    const/16 v11, 0x9

    .line 457
    invoke-static {v14, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int/2addr v8, v14

    add-int v11, v8, v3

    const/16 v14, 0xd

    .line 458
    invoke-static {v11, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v11

    xor-int v11, v16, v11

    add-int v14, v11, v8

    const/16 v1, 0x12

    .line 459
    invoke-static {v14, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v1, v22, v14

    add-int v14, v29, v24

    const/4 v0, 0x7

    .line 460
    invoke-static {v14, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v0, v10, v14

    add-int v10, v0, v29

    const/16 v14, 0x9

    .line 461
    invoke-static {v10, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int v10, v17, v10

    add-int v14, v10, v0

    move/from16 v30, v2

    const/16 v2, 0xd

    .line 462
    invoke-static {v14, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v2, v24, v14

    add-int v14, v2, v10

    move/from16 v31, v15

    const/16 v15, 0x12

    .line 463
    invoke-static {v14, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v14, v29, v14

    add-int v15, v4, v0

    move/from16 v32, v7

    const/4 v7, 0x7

    .line 465
    invoke-static {v15, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int/2addr v6, v15

    add-int v7, v6, v4

    const/16 v15, 0x9

    .line 466
    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v8, v7

    add-int v7, v8, v6

    const/16 v15, 0xd

    .line 467
    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v0, v7

    add-int v7, v0, v8

    const/16 v15, 0x12

    .line 468
    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v4, v7

    add-int v7, v13, v9

    const/4 v15, 0x7

    .line 469
    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v16, v11, v7

    add-int v7, v16, v13

    const/16 v11, 0x9

    .line 470
    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v17, v10, v7

    add-int v7, v17, v16

    const/16 v10, 0xd

    .line 471
    invoke-static {v7, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v7, v9

    add-int v9, v7, v17

    const/16 v10, 0x12

    .line 472
    invoke-static {v9, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v9, v13

    add-int v10, v1, v5

    const/4 v11, 0x7

    .line 473
    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int v24, v2, v10

    add-int v2, v24, v1

    const/16 v10, 0x9

    .line 474
    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v19, v12, v2

    add-int v2, v19, v24

    const/16 v10, 0xd

    .line 475
    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v20, v5, v2

    add-int v2, v20, v19

    const/16 v5, 0x12

    .line 476
    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v22, v1, v2

    add-int v1, v14, v3

    const/4 v2, 0x7

    .line 477
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v26, v32, v1

    add-int v1, v26, v14

    const/16 v2, 0x9

    .line 478
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v27, v31, v1

    add-int v1, v27, v26

    const/16 v2, 0xd

    .line 479
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v28, v3, v1

    add-int v1, v28, v27

    const/16 v2, 0x12

    .line 480
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v29, v14, v1

    add-int/lit8 v2, v30, -0x2

    move v10, v0

    move v12, v7

    move v14, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xd

    const/16 v13, 0x9

    const/4 v15, 0x7

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 483
    aget v2, v0, v1

    add-int/2addr v4, v2

    move-object/from16 v2, p2

    aput v4, v2, v1

    const/4 v1, 0x1

    .line 484
    aget v3, v0, v1

    add-int/2addr v6, v3

    aput v6, v2, v1

    const/4 v1, 0x2

    .line 485
    aget v3, v0, v1

    add-int/2addr v8, v3

    aput v8, v2, v1

    const/4 v1, 0x3

    .line 486
    aget v3, v0, v1

    add-int/2addr v10, v3

    aput v10, v2, v1

    const/4 v1, 0x4

    .line 487
    aget v3, v0, v1

    add-int/2addr v12, v3

    aput v12, v2, v1

    const/4 v1, 0x5

    .line 488
    aget v3, v0, v1

    add-int/2addr v14, v3

    aput v14, v2, v1

    const/4 v1, 0x6

    .line 489
    aget v3, v0, v1

    add-int v16, v16, v3

    aput v16, v2, v1

    const/4 v1, 0x7

    .line 490
    aget v3, v0, v1

    add-int v17, v17, v3

    aput v17, v2, v1

    .line 491
    aget v1, v0, v18

    add-int v19, v19, v1

    aput v19, v2, v18

    const/16 v1, 0x9

    .line 492
    aget v3, v0, v1

    add-int v20, v20, v3

    aput v20, v2, v1

    .line 493
    aget v1, v0, v21

    add-int v22, v22, v1

    aput v22, v2, v21

    .line 494
    aget v1, v0, v23

    add-int v24, v24, v1

    aput v24, v2, v23

    .line 495
    aget v1, v0, v25

    add-int v26, v26, v1

    aput v26, v2, v25

    const/16 v1, 0xd

    .line 496
    aget v3, v0, v1

    add-int v27, v27, v3

    aput v27, v2, v1

    const/16 v1, 0xe

    const/16 v3, 0xe

    .line 497
    aget v3, v0, v3

    add-int v28, v28, v3

    aput v28, v2, v1

    const/16 v1, 0xf

    const/16 v3, 0xf

    .line 498
    aget v0, v0, v3

    add-int v29, v29, v0

    aput v29, v2, v1

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    .line 405
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 406
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    const-string v0, "Salsa20"

    .line 131
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 85
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must include an IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 92
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 93
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    if-nez p2, :cond_3

    .line 102
    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez p2, :cond_2

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " KeyParameter can not be null for first initialisation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    .line 109
    :cond_3
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_4

    .line 111
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 4

    .line 240
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v0, :cond_0

    .line 242
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    .line 245
    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 247
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int v0, p5, p3

    .line 250
    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 252
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_2
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    new-instance p1, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string p2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    add-int v1, v0, p5

    .line 262
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 263
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 265
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 267
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 268
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return p3
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 343
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 344
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 346
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    return-void
.end method

.method protected resetCounter()V
    .locals 4

    .line 356
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v1, 0x8

    aput v3, v0, v1

    return-void
.end method

.method protected setKey([B[B)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 363
    array-length v2, p1

    const/16 v3, 0x20

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    array-length v2, p1

    if-eq v2, v3, :cond_0

    .line 365
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires 128 bit or 256 bit key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v5

    .line 370
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v5

    .line 371
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v5

    .line 372
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v5, 0xc

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v0

    .line 376
    array-length v2, p1

    if-ne v2, v3, :cond_1

    .line 378
    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    goto :goto_0

    .line 383
    :cond_1
    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    const/4 v4, 0x0

    .line 387
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xb

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v3, v7

    .line 388
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v7, v4, 0x4

    invoke-static {p1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v3, v5

    .line 389
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xd

    add-int/lit8 v8, v4, 0x8

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v3, v7

    .line 390
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xe

    add-int/2addr v4, v5

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v3, v7

    .line 392
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, p1, v1

    .line 393
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, p1, v3

    .line 394
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, p1, v3

    .line 395
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v2, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v3

    .line 399
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x6

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v2

    .line 400
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x7

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v1

    return-void
.end method
