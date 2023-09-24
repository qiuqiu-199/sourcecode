.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 38

    move-object/from16 v0, p0

    .line 573
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 574
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 575
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v4

    .line 576
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v5

    .line 579
    array-length v6, v2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    .line 581
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 583
    :cond_0
    array-length v6, v3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v6, 0x0

    .line 588
    aget-wide v8, p1, v6

    const/4 v10, 0x1

    .line 589
    aget-wide v11, p1, v10

    const/4 v13, 0x2

    .line 590
    aget-wide v14, p1, v13

    const/16 v16, 0x3

    .line 591
    aget-wide v17, p1, v16

    const/16 v1, 0x11

    :goto_0
    if-lt v1, v10, :cond_2

    .line 595
    aget v19, v4, v1

    .line 596
    aget v20, v5, v1

    add-int/lit8 v21, v19, 0x1

    .line 599
    aget-wide v22, v2, v21

    sub-long v6, v8, v22

    add-int/lit8 v8, v19, 0x2

    .line 600
    aget-wide v22, v2, v8

    add-int/lit8 v9, v20, 0x1

    aget-wide v24, v3, v9

    add-long v26, v22, v24

    move-wide/from16 v28, v14

    sub-long v13, v11, v26

    add-int/lit8 v11, v19, 0x3

    .line 601
    aget-wide v22, v2, v11

    add-int/lit8 v12, v20, 0x2

    aget-wide v24, v3, v12

    add-long v26, v22, v24

    move/from16 v30, v11

    sub-long v10, v28, v26

    add-int/lit8 v12, v19, 0x4

    .line 602
    aget-wide v22, v2, v12

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    int-to-long v4, v1

    add-long v24, v22, v4

    const-wide/16 v22, 0x1

    add-long v26, v24, v22

    move/from16 v33, v1

    sub-long v0, v17, v26

    const/16 v12, 0x20

    .line 606
    invoke-static {v0, v1, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    move-wide/from16 v34, v4

    sub-long v4, v6, v0

    .line 608
    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long v12, v10, v6

    const/16 v10, 0x3a

    .line 611
    invoke-static {v6, v7, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long v10, v4, v6

    const/16 v4, 0x16

    .line 613
    invoke-static {v0, v1, v4, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v4, v12, v0

    const/16 v12, 0x2e

    .line 616
    invoke-static {v0, v1, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v12, v10, v0

    const/16 v10, 0xc

    .line 618
    invoke-static {v6, v7, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long v10, v4, v6

    const/16 v4, 0x19

    .line 621
    invoke-static {v6, v7, v4, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v6, v12, v4

    const/16 v12, 0x21

    .line 623
    invoke-static {v0, v1, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v12, v10, v0

    .line 627
    aget-wide v10, v2, v19

    move-wide/from16 v36, v0

    sub-long v0, v6, v10

    .line 628
    aget-wide v6, v2, v21

    aget-wide v10, v3, v20

    add-long v14, v6, v10

    sub-long v6, v4, v14

    .line 629
    aget-wide v4, v2, v8

    aget-wide v8, v3, v9

    add-long v10, v4, v8

    sub-long v4, v12, v10

    .line 630
    aget-wide v8, v2, v30

    add-long v10, v8, v34

    sub-long v8, v36, v10

    const/4 v10, 0x5

    .line 633
    invoke-static {v8, v9, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v11, v0, v8

    const/16 v0, 0x25

    .line 635
    invoke-static {v6, v7, v0, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v6, v4, v0

    const/16 v4, 0x17

    .line 638
    invoke-static {v0, v1, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v4, v11, v0

    const/16 v11, 0x28

    .line 640
    invoke-static {v8, v9, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v11, v6, v8

    const/16 v6, 0x34

    .line 643
    invoke-static {v8, v9, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long v8, v4, v6

    const/16 v4, 0x39

    .line 645
    invoke-static {v0, v1, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v4, v11, v0

    const/16 v11, 0xe

    .line 648
    invoke-static {v0, v1, v11, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long v0, v8, v11

    const/16 v8, 0x10

    .line 650
    invoke-static {v6, v7, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v17

    sub-long v14, v4, v17

    add-int/lit8 v4, v33, -0x2

    move-wide v8, v0

    move v1, v4

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v28, v14

    const/4 v0, 0x0

    .line 657
    aget-wide v4, v2, v0

    sub-long v6, v8, v4

    const/4 v1, 0x1

    .line 658
    aget-wide v4, v2, v1

    aget-wide v8, v3, v0

    add-long v13, v4, v8

    sub-long v4, v11, v13

    const/4 v8, 0x2

    .line 659
    aget-wide v9, v2, v8

    aget-wide v11, v3, v1

    add-long v13, v9, v11

    sub-long v9, v28, v13

    .line 660
    aget-wide v11, v2, v16

    sub-long v2, v17, v11

    .line 665
    aput-wide v6, p2, v0

    .line 666
    aput-wide v4, p2, v1

    .line 667
    aput-wide v9, p2, v8

    .line 668
    aput-wide v2, p2, v16

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 40

    move-object/from16 v0, p0

    .line 465
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 466
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 467
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v5

    .line 468
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 471
    array-length v7, v3

    const/16 v8, 0x9

    if-eq v7, v8, :cond_0

    .line 473
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 475
    :cond_0
    array-length v7, v4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    .line 483
    aget-wide v9, p1, v7

    const/4 v11, 0x1

    .line 484
    aget-wide v12, p1, v11

    const/4 v14, 0x2

    .line 485
    aget-wide v15, p1, v14

    const/16 v17, 0x3

    .line 486
    aget-wide v18, p1, v17

    .line 491
    aget-wide v20, v3, v7

    add-long v22, v9, v20

    .line 492
    aget-wide v9, v3, v11

    aget-wide v20, v4, v7

    add-long v24, v9, v20

    add-long v9, v12, v24

    .line 493
    aget-wide v12, v3, v14

    aget-wide v20, v4, v11

    add-long v24, v12, v20

    add-long v12, v15, v24

    .line 494
    aget-wide v15, v3, v17

    add-long v20, v18, v15

    move-wide v15, v12

    move-wide/from16 v12, v20

    const/4 v1, 0x1

    :goto_0
    const/16 v11, 0x12

    if-ge v1, v11, :cond_2

    .line 509
    aget v11, v5, v1

    .line 510
    aget v18, v6, v1

    const/16 v7, 0xe

    move-wide/from16 v26, v15

    add-long v14, v22, v9

    .line 518
    invoke-static {v9, v10, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v7, 0x10

    move-wide/from16 v28, v9

    add-long v8, v26, v12

    .line 519
    invoke-static {v12, v13, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v7, 0x34

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    add-long v5, v14, v12

    .line 521
    invoke-static {v12, v13, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v7, 0x39

    add-long v14, v8, v28

    move-wide/from16 v8, v28

    .line 522
    invoke-static {v8, v9, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0x17

    move/from16 v32, v1

    add-long v0, v5, v7

    .line 524
    invoke-static {v7, v8, v9, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v7, 0x28

    add-long v8, v14, v12

    .line 525
    invoke-static {v12, v13, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long v14, v0, v12

    const/4 v0, 0x5

    .line 527
    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v1, 0x25

    move-wide/from16 v33, v12

    add-long v12, v8, v5

    .line 528
    invoke-static {v5, v6, v1, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    .line 533
    aget-wide v7, v3, v11

    add-long v9, v14, v7

    add-int/lit8 v1, v11, 0x1

    .line 534
    aget-wide v7, v3, v1

    aget-wide v14, v4, v18

    add-long v19, v7, v14

    add-long v7, v5, v19

    add-int/lit8 v5, v11, 0x2

    .line 535
    aget-wide v14, v3, v5

    add-int/lit8 v6, v18, 0x1

    aget-wide v19, v4, v6

    add-long v21, v14, v19

    add-long v14, v12, v21

    add-int/lit8 v12, v11, 0x3

    .line 536
    aget-wide v19, v3, v12

    move/from16 v35, v1

    move/from16 v13, v32

    int-to-long v0, v13

    add-long v21, v19, v0

    move-wide/from16 v36, v0

    add-long v0, v33, v21

    const/16 v2, 0x19

    move/from16 v38, v11

    move/from16 v39, v12

    add-long v11, v9, v7

    .line 541
    invoke-static {v7, v8, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x21

    add-long v9, v14, v0

    .line 542
    invoke-static {v0, v1, v2, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x2e

    add-long v14, v11, v0

    .line 544
    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0xc

    add-long v11, v9, v7

    .line 545
    invoke-static {v7, v8, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x3a

    add-long v9, v14, v7

    .line 547
    invoke-static {v7, v8, v2, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v2, 0x16

    add-long v14, v11, v0

    .line 548
    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v11, v9, v0

    const/16 v2, 0x20

    .line 550
    invoke-static {v0, v1, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v9, v14, v7

    .line 551
    invoke-static {v7, v8, v2, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 556
    aget-wide v14, v3, v35

    add-long v22, v11, v14

    .line 557
    aget-wide v11, v3, v5

    aget-wide v5, v4, v6

    add-long v14, v11, v5

    add-long v5, v7, v14

    .line 558
    aget-wide v7, v3, v39

    const/4 v2, 0x2

    add-int/lit8 v18, v18, 0x2

    aget-wide v11, v4, v18

    add-long v14, v7, v11

    add-long v7, v9, v14

    add-int/lit8 v11, v38, 0x4

    .line 559
    aget-wide v9, v3, v11

    add-long v11, v9, v36

    const-wide/16 v9, 0x1

    add-long v14, v11, v9

    add-long v9, v0, v14

    add-int/lit8 v1, v13, 0x2

    move-wide v15, v7

    move-wide v12, v9

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v14, 0x2

    move-wide v9, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v26, v15

    const/4 v1, 0x0

    .line 565
    aput-wide v22, p2, v1

    const/4 v1, 0x1

    .line 566
    aput-wide v9, p2, v1

    const/4 v1, 0x2

    .line 567
    aput-wide v26, p2, v1

    .line 568
    aput-wide v12, p2, v17

    return-void
.end method
