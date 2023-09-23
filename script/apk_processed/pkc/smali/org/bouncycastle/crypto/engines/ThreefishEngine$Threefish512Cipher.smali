.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    .line 691
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 86

    move-object/from16 v0, p0

    .line 840
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    .line 841
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    .line 842
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v5

    .line 843
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 846
    array-length v7, v3

    const/16 v8, 0x11

    if-eq v7, v8, :cond_0

    .line 848
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 850
    :cond_0
    array-length v7, v4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    .line 852
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    .line 855
    aget-wide v10, p1, v7

    const/4 v12, 0x1

    .line 856
    aget-wide v13, p1, v12

    const/4 v15, 0x2

    .line 857
    aget-wide v16, p1, v15

    const/16 v18, 0x3

    .line 858
    aget-wide v19, p1, v18

    const/16 v21, 0x4

    .line 859
    aget-wide v22, p1, v21

    .line 860
    aget-wide v24, p1, v9

    const/16 v26, 0x6

    .line 861
    aget-wide v27, p1, v26

    const/16 v29, 0x7

    .line 862
    aget-wide v30, p1, v29

    const/16 v1, 0x11

    :goto_0
    if-lt v1, v12, :cond_2

    .line 866
    aget v32, v5, v1

    .line 867
    aget v33, v6, v1

    add-int/lit8 v34, v32, 0x1

    .line 870
    aget-wide v35, v3, v34

    sub-long v7, v10, v35

    add-int/lit8 v10, v32, 0x2

    .line 871
    aget-wide v35, v3, v10

    move/from16 v37, v10

    sub-long v9, v13, v35

    add-int/lit8 v11, v32, 0x3

    .line 872
    aget-wide v13, v3, v11

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    sub-long v5, v16, v13

    add-int/lit8 v13, v32, 0x4

    .line 873
    aget-wide v16, v3, v13

    move/from16 v40, v13

    sub-long v12, v19, v16

    add-int/lit8 v14, v32, 0x5

    .line 874
    aget-wide v16, v3, v14

    move/from16 v41, v14

    sub-long v14, v22, v16

    add-int/lit8 v16, v32, 0x6

    .line 875
    aget-wide v19, v3, v16

    add-int/lit8 v17, v33, 0x1

    aget-wide v22, v4, v17

    add-long v35, v19, v22

    move/from16 v42, v11

    move-wide/from16 v43, v12

    sub-long v11, v24, v35

    add-int/lit8 v13, v32, 0x7

    .line 876
    aget-wide v19, v3, v13

    add-int/lit8 v22, v33, 0x2

    aget-wide v22, v4, v22

    add-long v24, v19, v22

    move/from16 v47, v13

    move-wide/from16 v45, v14

    sub-long v13, v27, v24

    add-int/lit8 v15, v32, 0x8

    .line 877
    aget-wide v19, v3, v15

    move-object/from16 v48, v3

    int-to-long v2, v1

    add-long v22, v19, v2

    const-wide/16 v19, 0x1

    add-long v24, v22, v19

    move/from16 v49, v1

    sub-long v0, v30, v24

    const/16 v15, 0x8

    .line 881
    invoke-static {v9, v10, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    move-wide/from16 v50, v2

    sub-long v2, v13, v9

    const/16 v13, 0x23

    .line 883
    invoke-static {v0, v1, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v13, v7, v0

    const/16 v7, 0x38

    .line 885
    invoke-static {v11, v12, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long v7, v5, v11

    const/16 v5, 0x16

    move-wide/from16 v52, v0

    move-wide/from16 v54, v7

    move-wide/from16 v0, v43

    move-wide/from16 v6, v45

    .line 887
    invoke-static {v0, v1, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    move-wide/from16 v56, v11

    sub-long v11, v6, v0

    const/16 v5, 0x19

    .line 890
    invoke-static {v9, v10, v5, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long v7, v11, v5

    const/16 v9, 0x1d

    .line 892
    invoke-static {v0, v1, v9, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v9, v2, v0

    const/16 v2, 0x27

    move-wide/from16 v11, v56

    .line 894
    invoke-static {v11, v12, v2, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long v2, v13, v11

    const/16 v13, 0x2b

    move-wide/from16 v58, v0

    move-wide/from16 v14, v52

    move-wide/from16 v0, v54

    .line 896
    invoke-static {v14, v15, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    move-wide/from16 v60, v2

    sub-long v2, v0, v13

    const/16 v0, 0xd

    .line 899
    invoke-static {v5, v6, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v5, v2, v0

    const/16 v2, 0x32

    .line 901
    invoke-static {v13, v14, v2, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v13, v7, v2

    const/16 v7, 0xa

    .line 903
    invoke-static {v11, v12, v7, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v7

    sub-long v11, v9, v7

    move-wide/from16 v62, v2

    move-wide/from16 v9, v58

    move-wide/from16 v2, v60

    const/16 v15, 0x11

    .line 905
    invoke-static {v9, v10, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    move-wide/from16 v64, v11

    sub-long v11, v2, v9

    const/16 v2, 0x27

    .line 908
    invoke-static {v0, v1, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v2, v11, v0

    const/16 v11, 0x1e

    .line 910
    invoke-static {v9, v10, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long v11, v5, v9

    const/16 v5, 0x22

    .line 912
    invoke-static {v7, v8, v5, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long v7, v13, v5

    const/16 v13, 0x18

    move-wide/from16 v66, v5

    move-wide/from16 v14, v62

    move-wide/from16 v5, v64

    .line 914
    invoke-static {v14, v15, v13, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long v19, v5, v13

    .line 918
    aget-wide v5, v48, v32

    move-wide/from16 v68, v13

    sub-long v13, v2, v5

    .line 919
    aget-wide v2, v48, v34

    sub-long v5, v0, v2

    .line 920
    aget-wide v0, v48, v37

    sub-long v2, v11, v0

    .line 921
    aget-wide v0, v48, v42

    sub-long v11, v9, v0

    .line 922
    aget-wide v0, v48, v40

    sub-long v9, v7, v0

    .line 923
    aget-wide v0, v48, v41

    aget-wide v7, v4, v33

    add-long v22, v0, v7

    sub-long v0, v66, v22

    .line 924
    aget-wide v7, v48, v16

    aget-wide v15, v4, v17

    add-long v22, v7, v15

    sub-long v7, v19, v22

    .line 925
    aget-wide v15, v48, v47

    add-long v19, v15, v50

    move-wide/from16 v70, v9

    sub-long v9, v68, v19

    const/16 v15, 0x2c

    .line 928
    invoke-static {v5, v6, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    move-wide/from16 v72, v11

    sub-long v11, v7, v5

    const/16 v7, 0x9

    .line 930
    invoke-static {v9, v10, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v7

    sub-long v9, v13, v7

    const/16 v13, 0x36

    .line 932
    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v13, v2, v0

    move-wide/from16 v74, v7

    move-wide/from16 v7, v70

    move-wide/from16 v2, v72

    const/16 v15, 0x38

    .line 934
    invoke-static {v2, v3, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    move-wide/from16 v76, v13

    sub-long v13, v7, v2

    const/16 v7, 0x11

    .line 937
    invoke-static {v5, v6, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long v7, v13, v5

    const/16 v13, 0x31

    .line 939
    invoke-static {v2, v3, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v13, v11, v2

    const/16 v11, 0x24

    .line 941
    invoke-static {v0, v1, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v11, v9, v0

    move-wide/from16 v78, v2

    move-wide/from16 v9, v74

    move-wide/from16 v2, v76

    const/16 v15, 0x27

    .line 943
    invoke-static {v9, v10, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    move-wide/from16 v80, v11

    sub-long v11, v2, v9

    const/16 v2, 0x21

    .line 946
    invoke-static {v5, v6, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v5, v11, v2

    const/16 v11, 0x1b

    .line 948
    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long v11, v7, v9

    const/16 v7, 0xe

    .line 950
    invoke-static {v0, v1, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v7, v13, v0

    const/16 v13, 0x2a

    move-wide/from16 v82, v7

    move-wide/from16 v14, v78

    move-wide/from16 v7, v80

    .line 952
    invoke-static {v14, v15, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    move-wide/from16 v84, v9

    sub-long v9, v7, v13

    const/16 v7, 0x2e

    .line 955
    invoke-static {v2, v3, v7, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v7, v9, v2

    const/16 v9, 0x24

    .line 957
    invoke-static {v13, v14, v9, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v19

    sub-long v16, v5, v19

    const/16 v5, 0x13

    .line 959
    invoke-static {v0, v1, v5, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v22, v11, v24

    const/16 v0, 0x25

    move-wide/from16 v13, v82

    move-wide/from16 v5, v84

    .line 961
    invoke-static {v5, v6, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v30

    sub-long v27, v13, v30

    add-int/lit8 v1, v49, -0x2

    move-wide v13, v2

    move-wide v10, v7

    move-object/from16 v5, v38

    move-object/from16 v6, v39

    move-object/from16 v3, v48

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x5

    const/4 v12, 0x1

    const/4 v15, 0x2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v48, v3

    const/4 v0, 0x0

    .line 968
    aget-wide v1, v48, v0

    sub-long v5, v10, v1

    const/4 v1, 0x1

    .line 969
    aget-wide v2, v48, v1

    sub-long v7, v13, v2

    const/4 v1, 0x2

    .line 970
    aget-wide v2, v48, v1

    sub-long v9, v16, v2

    .line 971
    aget-wide v1, v48, v18

    sub-long v11, v19, v1

    .line 972
    aget-wide v1, v48, v21

    sub-long v13, v22, v1

    const/4 v1, 0x5

    .line 973
    aget-wide v2, v48, v1

    aget-wide v15, v4, v0

    add-long v19, v2, v15

    sub-long v1, v24, v19

    .line 974
    aget-wide v15, v48, v26

    const/4 v3, 0x1

    aget-wide v19, v4, v3

    add-long v22, v15, v19

    sub-long v15, v27, v22

    .line 975
    aget-wide v19, v48, v29

    sub-long v22, v30, v19

    .line 980
    aput-wide v5, p2, v0

    .line 981
    aput-wide v7, p2, v3

    const/4 v0, 0x2

    .line 982
    aput-wide v9, p2, v0

    .line 983
    aput-wide v11, p2, v18

    .line 984
    aput-wide v13, p2, v21

    const/4 v0, 0x5

    .line 985
    aput-wide v1, p2, v0

    .line 986
    aput-wide v15, p2, v26

    .line 987
    aput-wide v22, p2, v29

    return-void
.end method

.method public encryptBlock([J[J)V
    .locals 88

    move-object/from16 v0, p0

    .line 696
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    .line 697
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    .line 698
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v5

    .line 699
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 702
    array-length v7, v3

    const/16 v8, 0x11

    if-eq v7, v8, :cond_0

    .line 704
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 706
    :cond_0
    array-length v7, v4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    .line 708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    .line 714
    aget-wide v10, p1, v7

    const/4 v12, 0x1

    .line 715
    aget-wide v13, p1, v12

    const/4 v15, 0x2

    .line 716
    aget-wide v16, p1, v15

    const/16 v18, 0x3

    .line 717
    aget-wide v19, p1, v18

    const/16 v21, 0x4

    .line 718
    aget-wide v22, p1, v21

    .line 719
    aget-wide v24, p1, v9

    const/16 v26, 0x6

    .line 720
    aget-wide v27, p1, v26

    const/16 v29, 0x7

    .line 721
    aget-wide v30, p1, v29

    .line 726
    aget-wide v32, v3, v7

    add-long v34, v10, v32

    .line 727
    aget-wide v10, v3, v12

    add-long v32, v13, v10

    .line 728
    aget-wide v10, v3, v15

    add-long v13, v16, v10

    .line 729
    aget-wide v10, v3, v18

    add-long v16, v19, v10

    .line 730
    aget-wide v10, v3, v21

    add-long v19, v22, v10

    .line 731
    aget-wide v10, v3, v9

    aget-wide v22, v4, v7

    add-long v36, v10, v22

    add-long v10, v24, v36

    .line 732
    aget-wide v22, v3, v26

    aget-wide v24, v4, v12

    add-long v36, v22, v24

    add-long v22, v27, v36

    .line 733
    aget-wide v24, v3, v29

    add-long v27, v30, v24

    move-wide v7, v10

    move-wide/from16 v38, v27

    move-wide/from16 v10, v32

    const/4 v1, 0x1

    move-wide/from16 v86, v13

    move-wide/from16 v13, v16

    move-wide/from16 v16, v86

    :goto_0
    const/16 v9, 0x12

    if-ge v1, v9, :cond_2

    .line 748
    aget v9, v5, v1

    .line 749
    aget v24, v6, v1

    const/16 v12, 0x2e

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    add-long v5, v34, v10

    .line 757
    invoke-static {v10, v11, v12, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move/from16 v42, v1

    add-long v0, v16, v13

    const/16 v12, 0x24

    .line 758
    invoke-static {v13, v14, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x13

    move-wide/from16 v43, v13

    add-long v12, v19, v7

    .line 759
    invoke-static {v7, v8, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v14, 0x25

    move-object/from16 v45, v3

    move-object/from16 v46, v4

    move-wide/from16 v47, v5

    move-wide/from16 v2, v38

    add-long v4, v22, v2

    .line 760
    invoke-static {v2, v3, v14, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v6, 0x21

    add-long v14, v0, v10

    .line 762
    invoke-static {v10, v11, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v6, 0x1b

    add-long v10, v12, v2

    .line 763
    invoke-static {v2, v3, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v6, 0xe

    add-long v12, v4, v7

    .line 764
    invoke-static {v7, v8, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v6, 0x2a

    add-long v7, v47, v43

    move-wide/from16 v49, v2

    move-wide/from16 v2, v43

    .line 765
    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v51, v14

    add-long v14, v10, v0

    const/16 v6, 0x11

    .line 767
    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v6, 0x31

    add-long v10, v12, v2

    .line 768
    invoke-static {v2, v3, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v12, v7, v4

    const/16 v6, 0x24

    .line 769
    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v6, v51, v49

    const/16 v8, 0x27

    move-wide/from16 v53, v2

    move-wide/from16 v2, v49

    .line 770
    invoke-static {v2, v3, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v8, 0x2c

    move-wide/from16 v55, v14

    add-long v14, v10, v0

    .line 772
    invoke-static {v0, v1, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x9

    add-long v10, v12, v2

    .line 773
    invoke-static {v2, v3, v8, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v8, 0x36

    add-long v12, v6, v4

    .line 774
    invoke-static {v4, v5, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v6, v55, v53

    const/16 v8, 0x38

    move-wide/from16 v57, v2

    move-wide/from16 v2, v53

    .line 775
    invoke-static {v2, v3, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 780
    aget-wide v16, v45, v9

    add-long v19, v10, v16

    add-int/lit8 v10, v9, 0x1

    .line 781
    aget-wide v16, v45, v10

    move/from16 v59, v10

    add-long v10, v0, v16

    add-int/lit8 v0, v9, 0x2

    .line 782
    aget-wide v16, v45, v0

    add-long v22, v12, v16

    add-int/lit8 v1, v9, 0x3

    .line 783
    aget-wide v12, v45, v1

    move/from16 v60, v0

    move/from16 v61, v1

    add-long v0, v2, v12

    add-int/lit8 v2, v9, 0x4

    .line 784
    aget-wide v12, v45, v2

    add-long v16, v6, v12

    add-int/lit8 v3, v9, 0x5

    .line 785
    aget-wide v6, v45, v3

    aget-wide v12, v46, v24

    add-long v27, v6, v12

    add-long v6, v4, v27

    add-int/lit8 v4, v9, 0x6

    .line 786
    aget-wide v12, v45, v4

    add-int/lit8 v5, v24, 0x1

    aget-wide v27, v46, v5

    add-long v30, v12, v27

    add-long v12, v14, v30

    add-int/lit8 v14, v9, 0x7

    .line 787
    aget-wide v27, v45, v14

    move/from16 v62, v9

    move/from16 v15, v42

    int-to-long v8, v15

    add-long v30, v27, v8

    move-wide/from16 v63, v8

    add-long v8, v57, v30

    move/from16 v65, v14

    move/from16 v66, v15

    add-long v14, v19, v10

    move/from16 v67, v5

    const/16 v5, 0x27

    .line 792
    invoke-static {v10, v11, v5, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    const/16 v5, 0x1e

    move/from16 v68, v3

    move/from16 v69, v4

    add-long v3, v22, v0

    .line 793
    invoke-static {v0, v1, v5, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v5, 0x22

    move-wide/from16 v70, v0

    add-long v0, v16, v6

    .line 794
    invoke-static {v6, v7, v5, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v7, 0x18

    move-wide/from16 v72, v14

    add-long v14, v12, v8

    .line 795
    invoke-static {v8, v9, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v9, 0xd

    add-long v12, v3, v10

    .line 797
    invoke-static {v10, v11, v9, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    const/16 v9, 0x32

    add-long v10, v0, v7

    .line 798
    invoke-static {v7, v8, v9, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v7, 0xa

    add-long v8, v14, v5

    .line 799
    invoke-static {v5, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long v14, v72, v70

    move-wide/from16 v74, v0

    move-wide/from16 v0, v70

    const/16 v7, 0x11

    .line 800
    invoke-static {v0, v1, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v7, 0x19

    move-wide/from16 v76, v12

    add-long v12, v10, v3

    .line 802
    invoke-static {v3, v4, v7, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    const/16 v7, 0x1d

    add-long v10, v8, v0

    .line 803
    invoke-static {v0, v1, v7, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v7, v14, v5

    const/16 v9, 0x27

    .line 804
    invoke-static {v5, v6, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v9, 0x2b

    add-long v14, v76, v74

    move-wide/from16 v78, v0

    move-wide/from16 v0, v74

    .line 805
    invoke-static {v0, v1, v9, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v80, v12

    add-long v12, v10, v3

    const/16 v9, 0x8

    .line 807
    invoke-static {v3, v4, v9, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    const/16 v10, 0x23

    move-wide/from16 v82, v12

    add-long v11, v7, v0

    .line 808
    invoke-static {v0, v1, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v7, v14, v5

    const/16 v10, 0x38

    .line 809
    invoke-static {v5, v6, v10, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v10, 0x16

    add-long v13, v80, v78

    move-wide/from16 v84, v0

    move-wide/from16 v0, v78

    .line 810
    invoke-static {v0, v1, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 815
    aget-wide v15, v45, v59

    add-long v34, v11, v15

    .line 816
    aget-wide v10, v45, v60

    add-long v15, v3, v10

    .line 817
    aget-wide v3, v45, v61

    add-long v10, v7, v3

    .line 818
    aget-wide v2, v45, v2

    add-long v7, v0, v2

    .line 819
    aget-wide v0, v45, v68

    add-long v19, v13, v0

    .line 820
    aget-wide v0, v45, v69

    aget-wide v2, v46, v67

    add-long v12, v0, v2

    add-long v0, v5, v12

    .line 821
    aget-wide v2, v45, v65

    const/4 v4, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-wide v4, v46, v24

    add-long v12, v2, v4

    add-long v22, v82, v12

    add-int/lit8 v9, v62, 0x8

    .line 822
    aget-wide v2, v45, v9

    add-long v4, v2, v63

    const-wide/16 v2, 0x1

    add-long v12, v4, v2

    add-long v38, v84, v12

    add-int/lit8 v2, v66, 0x2

    move-wide v13, v7

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    const/4 v12, 0x1

    move-wide v7, v0

    move v1, v2

    move-object/from16 v0, p0

    move-wide/from16 v86, v15

    const/4 v15, 0x2

    move-wide/from16 v16, v10

    move-wide/from16 v10, v86

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v27, v38

    const/4 v1, 0x0

    .line 828
    aput-wide v34, p2, v1

    const/4 v1, 0x1

    .line 829
    aput-wide v10, p2, v1

    const/4 v1, 0x2

    .line 830
    aput-wide v16, p2, v1

    .line 831
    aput-wide v13, p2, v18

    .line 832
    aput-wide v19, p2, v21

    const/4 v1, 0x5

    .line 833
    aput-wide v7, p2, v1

    .line 834
    aput-wide v22, p2, v26

    .line 835
    aput-wide v27, p2, v29

    return-void
.end method
