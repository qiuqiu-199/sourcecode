.class public Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "BenchmarkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 57
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;
    .locals 30

    move-object/16 v27, p0

    move-object/16 v28, p1

    move-object/16 v29, p2

    move-object/from16 v1, v27

    .line 64
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 65
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/high16 v3, 0xa00000

    .line 68
    new-array v3, v3, [B

    .line 69
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 71
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v6, "a"

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 80
    :goto_0
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;

    iget-object v12, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    new-instance v14, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v15, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    mul-int/lit8 v6, v8, 0xa

    const/4 v7, 0x1

    add-int/2addr v8, v7

    mul-int/lit8 v4, v8, 0xa

    const/16 v7, 0x64

    invoke-direct {v14, v15, v6, v4, v7}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    iget-object v4, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v12, v13, v14, v4}, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 83
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v4

    .line 84
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    const/4 v6, 0x7

    .line 85
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricEncryptionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 86
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->createSignEncryptParcel(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;[B)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v4

    .line 87
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    move-result-object v4

    const/4 v11, 0x1

    .line 88
    invoke-virtual {v2, v4, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 89
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_ENC_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v13, v11, [Ljava/lang/Object;

    const-string v14, "%.2f"

    new-array v15, v11, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResults()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move/from16 v19, v8

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mOperationTime:J

    long-to-double v7, v7

    const-wide v20, 0x408f400000000000L    # 1000.0

    div-double v7, v7, v20

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v15, v6

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v6

    const/4 v7, 0x2

    .line 89
    invoke-virtual {v2, v12, v7, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResults()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    iget-wide v11, v8, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mOperationTime:J

    add-long v13, v9, v11

    const/4 v6, 0x5

    move/from16 v8, v19

    if-lt v8, v6, :cond_3

    int-to-long v9, v6

    .line 94
    div-long v11, v13, v9

    const/4 v3, 0x0

    const-wide/16 v13, 0x0

    .line 101
    :goto_1
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v15, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    new-instance v7, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    move-wide/from16 v22, v11

    iget-object v11, v1, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v12, v12, 0x32

    const/4 v1, 0x1

    add-int/2addr v3, v1

    mul-int/lit8 v18, v3, 0xa

    add-int/lit8 v1, v18, 0x32

    move-wide/from16 v24, v9

    const/16 v9, 0x64

    invoke-direct {v7, v11, v12, v1, v9}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    invoke-direct {v8, v15, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 104
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResultBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setInputBytes([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    const/4 v6, 0x1

    .line 106
    invoke-virtual {v1, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v1

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v1

    .line 108
    invoke-virtual {v2, v1, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 109
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_DEC_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "%.2f"

    new-array v11, v6, [Ljava/lang/Object;

    move-object/from16 v26, v10

    iget-wide v9, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOperationTime:J

    long-to-double v9, v9

    div-double v9, v9, v20

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v11, v9

    move-object/from16 v6, v26

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x2

    invoke-virtual {v2, v7, v6, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 110
    iget-wide v6, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOperationTime:J

    add-long v8, v13, v6

    const/4 v1, 0x5

    if-lt v3, v1, :cond_2

    .line 113
    div-long v8, v8, v24

    .line 118
    :try_start_0
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    const-string v3, "BC"

    .line 119
    invoke-virtual {v1, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    .line 120
    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-direct {v3, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    const-string v1, "BC"

    .line 121
    invoke-virtual {v3, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    move-result-object v1

    const-string v3, ""

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 121
    invoke-virtual {v1, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;

    move-result-object v1

    const/16 v3, 0x8

    .line 124
    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const-wide/16 v16, 0x0

    :goto_2
    const/16 v5, 0xff

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x64

    cmp-long v7, v16, v5

    if-gez v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 129
    new-instance v5, Lorg/bouncycastle/bcpg/S2K;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, v4}, Lorg/bouncycastle/bcpg/S2K;-><init>(I[BI)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v10, 0x7

    .line 131
    invoke-virtual {v1, v10, v5}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v5, 0x0

    sub-long v13, v11, v6

    .line 134
    rem-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_0

    .line 135
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_S2K_FOR_IT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v7, v12

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v7, v12

    invoke-virtual {v2, v5, v12, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x2

    :goto_3
    move-wide/from16 v16, v13

    goto :goto_2

    .line 147
    :cond_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_S2K_100MS_ITS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v1, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 148
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_ENC_TIME_AVG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "%.2f"

    new-array v7, v3, [Ljava/lang/Object;

    move-wide/from16 v11, v22

    long-to-double v10, v11

    div-double v10, v10, v20

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 149
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_DEC_TIME_AVG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "%.2f"

    new-array v7, v3, [Ljava/lang/Object;

    long-to-double v8, v8

    div-double v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 151
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BENCH_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 152
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;

    invoke-direct {v1, v6, v2}, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v3, "internal error during benchmark"

    const/4 v7, 0x0

    .line 142
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_INTERNAL_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 144
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;

    const/4 v15, 0x1

    invoke-direct {v1, v15, v2}, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :cond_2
    move-wide v13, v8

    move-wide/from16 v11, v22

    move-wide/from16 v9, v24

    move-object/from16 v1, v27

    const/4 v6, 0x5

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_3
    move-wide v9, v13

    const/4 v4, 0x0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;--->execute(Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 53
    check-cast p1, Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;->execute(Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;

    move-result-object p1

    return-object p1
.end method
