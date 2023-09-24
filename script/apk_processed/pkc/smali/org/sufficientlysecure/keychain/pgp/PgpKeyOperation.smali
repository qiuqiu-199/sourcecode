.class public Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;
.super Ljava/lang/Object;
.source "PgpKeyOperation.java"


# instance fields
.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProgress:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/sufficientlysecure/keychain/pgp/Progressable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 114
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_0

    .line 116
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    .line 117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;---><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 122
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 123
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;---><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static applyNewPassphrase(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v16, p0

    move-object/16 v17, p1

    move-object/16 v18, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1344
    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v2

    const/16 v3, 0xa

    .line 1345
    invoke-interface {v2, v3}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v2

    .line 1346
    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v4, "BC"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v3

    .line 1347
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1351
    new-instance v6, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/16 v7, 0x9

    const/16 v8, 0x90

    invoke-direct {v6, v7, v2, v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    const-string v2, "BC"

    .line 1354
    invoke-virtual {v6, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v2

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1359
    :goto_0
    new-instance v5, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v9, v16

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 1360
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PASSPHRASE_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v12, v7, [Ljava/lang/Object;

    .line 1361
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    .line 1360
    invoke-virtual {v0, v11, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1367
    :try_start_0
    invoke-static {v10, v3, v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->copyWithNewPassword(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v11
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    .line 1372
    :catch_0
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v11

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-nez v15, :cond_1

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1373
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PASSPHRASE_MASTER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v1, v7

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v4

    .line 1380
    :cond_1
    :try_start_1
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PASSPHRASE_EMPTY_RETRY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v0, v11, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1381
    new-instance v11, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v11}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v12, "BC"

    .line 1382
    invoke-virtual {v11, v12}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v11

    const-string v12, ""

    .line 1383
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v11

    .line 1384
    invoke-static {v10, v11, v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->copyWithNewPassword(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v11
    :try_end_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v11, v10

    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_2

    .line 1393
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PASSPHRASE_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v12, v1, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    .line 1394
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v6

    .line 1393
    invoke-virtual {v0, v10, v12, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1398
    :cond_2
    invoke-static {v9, v11}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v9

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    if-nez v8, :cond_4

    .line 1404
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PASSPHRASES_UNCHANGED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v1, v7

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v4

    :cond_4
    return-object v9

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->applyNewPassphrase(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkCancelled()Z
    .locals 4

    move-object/16 v1, p0

    .line 127
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->checkCancelled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkCapabilitiesAreUnique(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 503
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 504
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 507
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v4

    .line 509
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canSign()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canCertify()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canEncrypt()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    .line 518
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DUPLICATE_KEYTOCARD_FOR_SLOT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr p1, v5

    invoke-virtual {p0, v9, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 523
    :cond_3
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canAuthenticate()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    .line 525
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DUPLICATE_KEYTOCARD_FOR_SLOT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr p1, v5

    invoke-virtual {p0, v9, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 531
    :cond_5
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INVALID_FLAGS_FOR_KEYTOCARD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr p1, v5

    invoke-virtual {p0, v9, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v0

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 511
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DUPLICATE_KEYTOCARD_FOR_SLOT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr p1, v5

    invoke-virtual {p0, v9, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    return v5

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->checkCapabilitiesAreUnique(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static checkSecurityTokenCompatibility(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 1702
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1737
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_BAD_SECURITY_TOKEN_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v2

    .line 1727
    :pswitch_0
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    const-string v1, "P-256"

    .line 1728
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P-384"

    .line 1729
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P-521"

    .line 1730
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_BAD_SECURITY_TOKEN_CURVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v2

    .line 1717
    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    const-string v1, "P-256"

    .line 1718
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P-384"

    .line 1719
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P-521"

    .line 1720
    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_BAD_SECURITY_TOKEN_CURVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v2

    .line 1710
    :pswitch_2
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getBitStrength()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 1711
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_BAD_SECURITY_TOKEN_RSA_KEY_SIZE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v2

    .line 1742
    :cond_0
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 1743
    :cond_2
    :goto_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_BAD_SECURITY_TOKEN_STRIPPED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->checkSecurityTokenCompatibility(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createKey(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;Ljava/util/Date;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPKeyPair;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    move/16 p1, p4

    const/4 v0, 0x0

    .line 173
    :try_start_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    if-eq v1, v2, :cond_2

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    if-eq v1, v2, :cond_3

    .line 179
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 180
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NO_KEYSIZE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    .line 183
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x800

    if-ge v1, v2, :cond_3

    .line 184
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_KEYSIZE_2048:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    .line 174
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v1

    if-nez v1, :cond_3

    .line 175
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NO_CURVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    .line 192
    :cond_3
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1e

    packed-switch v1, :pswitch_data_0

    .line 276
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_UNKNOWN_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto/16 :goto_2

    .line 262
    :pswitch_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_4

    .line 263
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_FLAGS_ECDH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_4
    const v1, 0x7f110c0a

    .line 266
    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 267
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getEccParameterSpec(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/security/spec/ECGenParameterSpec;

    move-result-object v5

    const-string v1, "ECDH"

    const-string v2, "BC"

    .line 268
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 269
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/16 v5, 0x12

    goto/16 :goto_1

    .line 246
    :pswitch_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0xc

    if-lez v5, :cond_5

    .line 247
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_FLAGS_ECDSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_5
    const v5, 0x7f110c0c

    .line 250
    invoke-direct {v4, v5, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 251
    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAGenParameterSpec;

    const-string v1, "ed25519"

    invoke-direct {v5, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAGenParameterSpec;-><init>(Ljava/lang/String;)V

    const-string v1, "EdDSA"

    const-string v2, "BC"

    .line 253
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 254
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/16 v5, 0x16

    goto/16 :goto_1

    .line 232
    :pswitch_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0xc

    if-lez v1, :cond_6

    .line 233
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_FLAGS_ECDSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_6
    const v1, 0x7f110c0b

    .line 236
    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 237
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getEccParameterSpec(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/security/spec/ECGenParameterSpec;

    move-result-object v5

    const-string v1, "ECDSA"

    const-string v2, "BC"

    .line 238
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/16 v5, 0x13

    goto/16 :goto_1

    :pswitch_3
    const v1, 0x7f110c0e

    .line 223
    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    const-string v1, "RSA"

    const-string v2, "BC"

    .line 224
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 225
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    const/4 v5, 0x1

    goto :goto_1

    .line 206
    :pswitch_4
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_7

    .line 207
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_FLAGS_ELGAMAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_7
    const v1, 0x7f110c0d

    .line 210
    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    const-string v1, "ElGamal"

    const-string v2, "BC"

    .line 211
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 212
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/util/Primes;->getBestPrime(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 213
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "2"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v3, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-direct {v3, v5, v2}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 217
    invoke-virtual {v1, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v5, 0x10

    goto :goto_1

    .line 194
    :pswitch_5
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0xc

    if-lez v1, :cond_8

    .line 195
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_FLAGS_DSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_8
    const v1, 0x7f110c09

    .line 198
    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    const-string v1, "DSA"

    const-string v2, "BC"

    .line 199
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 200
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    const/16 v5, 0x11

    .line 282
    :goto_1
    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    invoke-direct {v2, v5, v1, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;-><init>(ILjava/security/KeyPair;Ljava/util/Date;)V

    return-object v2

    .line 276
    :goto_2
    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v5

    const-string v6, "internal pgp error"

    const/4 v1, 0x0

    .line 290
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_INTERNAL_PGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    .line 287
    :catch_1
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_UNKNOWN_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :catch_2
    move-exception v5

    .line 285
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->createKey(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;Ljava/util/Date;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPKeyPair;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static firstNonDummySecretKeyID(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 5

    move-object/16 v2, p0

    .line 1310
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v2

    .line 1312
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 1314
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->firstNonDummySecretKeyID(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;)Lorg/bouncycastle/openpgp/PGPSecretKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateHashedSelfSigSubpackets(Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;ZIJ)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    .line 1533
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    .line 1546
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_SYMMETRIC_ALGORITHMS:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setPreferredSymmetricAlgorithms(Z[I)V

    .line 1548
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_HASH_ALGORITHMS:[I

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setPreferredHashAlgorithms(Z[I)V

    .line 1550
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_COMPRESSION_ALGORITHMS:[I

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setPreferredCompressionAlgorithms(Z[I)V

    .line 1552
    invoke-virtual {v0, v2, v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setPrimaryUserID(ZZ)V

    const/4 v5, 0x1

    .line 1555
    invoke-virtual {v0, v5, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 1557
    invoke-virtual {v0, v5, v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setFeature(ZB)V

    .line 1558
    invoke-virtual {v0, v5, p0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setKeyFlags(ZI)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 1561
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    sub-long v1, p1, v3

    .line 1560
    invoke-virtual {v0, v5, v1, v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setKeyExpirationTime(ZJ)V

    :cond_0
    return-object v0

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateHashedSelfSigSubpackets(Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;ZIJ)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 1600
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    .line 1603
    invoke-virtual {v0, v2, v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setRevocationReason(ZBLjava/lang/String;)V

    const/4 v1, 0x1

    .line 1604
    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 1605
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    const/16 v4, 0x30

    .line 1606
    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1607
    invoke-virtual {v3, p1, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v3

    return-object v3

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPSignature;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 1615
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1618
    invoke-virtual {v0, v2, v3, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setRevocationReason(ZBLjava/lang/String;)V

    .line 1619
    invoke-virtual {v0, v2, v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 1620
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 1622
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/16 v5, 0x20

    .line 1623
    invoke-virtual {v4, v5, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1624
    invoke-virtual {v4, v6}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v4

    return-object v4

    :cond_0
    const/16 v5, 0x28

    .line 1626
    invoke-virtual {v4, v5, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1627
    invoke-virtual {v4, v6, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v4

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static generateSubkeyBindingSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJ)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v13, p0

    move-object/16 v14, p1

    move-object/16 v15, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move/16 p4, p7

    move-wide/16 p5, p8

    move-object v0, v13

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1638
    new-instance v6, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    and-int/lit8 v7, v5, 0x2

    const/4 v8, 0x1

    if-lez v7, :cond_0

    .line 1643
    new-instance v7, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const/4 v9, 0x0

    .line 1644
    invoke-virtual {v7, v9, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    const/16 v9, 0x19

    move-object/from16 v10, p2

    .line 1645
    invoke-virtual {v3, v9, v10}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1646
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 1647
    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v3

    .line 1648
    invoke-virtual {v6, v8, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setEmbeddedSignature(ZLorg/bouncycastle/openpgp/PGPSignature;)V

    .line 1653
    :cond_0
    new-instance v3, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    .line 1654
    invoke-virtual {v3, v8, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 1655
    invoke-virtual {v3, v8, v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setKeyFlags(ZI)V

    const-wide/16 v9, 0x0

    cmp-long v1, p5, v9

    if-lez v1, :cond_1

    .line 1658
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    sub-long v11, p5, v9

    .line 1657
    invoke-virtual {v3, v8, v11, v12}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setKeyExpirationTime(ZJ)V

    :cond_1
    const/16 v1, 0x18

    move-object/from16 v5, p0

    .line 1662
    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1663
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 1664
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 1666
    invoke-virtual {v0, v2, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v0

    return-object v0

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateSubkeyBindingSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJ)Lorg/bouncycastle/openpgp/PGPSignature;"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateUserAttributeSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;IJ)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-wide/16 p3, p6

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 1589
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateHashedSelfSigSubpackets(Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;ZIJ)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    move-result-object v7

    .line 1590
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    const/16 v7, 0x13

    .line 1591
    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1592
    invoke-virtual {v6, p1, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v6

    return-object v6

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateUserAttributeSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;IJ)Lorg/bouncycastle/openpgp/PGPSignature;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-wide/16 p4, p7

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1575
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateHashedSelfSigSubpackets(Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;ZIJ)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    move-result-object v7

    .line 1576
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    const/16 v7, 0x13

    .line 1577
    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1578
    invoke-virtual {v6, p1, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v6

    return-object v6

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getEccParameterSpec(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/security/spec/ECGenParameterSpec;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 155
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 165
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v0, "Invalid choice! (can\'t happen)"

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :pswitch_0
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v0, "P-521"

    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 157
    :pswitch_1
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v0, "P-384"

    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 156
    :pswitch_2
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v0, "P-256"

    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->getEccParameterSpec(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/security/spec/ECGenParameterSpec;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    if-eqz v8, :cond_0

    .line 1514
    new-instance v8, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    .line 1515
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/16 v2, 0xa

    .line 1516
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v3

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v5

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;-><init>(IIJLjava/util/Map;)V

    const-string v6, "BC"

    .line 1517
    invoke-virtual {v8, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    move-result-object v6

    goto :goto_0

    .line 1520
    :cond_0
    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    .line 1521
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v6

    const/16 v8, 0xa

    invoke-direct {v7, v6, v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    const-string v6, "BC"

    .line 1522
    invoke-virtual {v7, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v6

    .line 1525
    :goto_0
    new-instance v7, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {v7, v6}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 1501
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 1503
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1505
    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-static {v3, v4, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static hasNotationData(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;)Z
    .locals 6

    move-object/16 v3, p0

    .line 1326
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeySignatures()Ljava/util/Iterator;

    move-result-object v3

    .line 1327
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    .line 1329
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    .line 1330
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getNotation()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->hasNotationData(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private internal(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 59

    move-object/16 v56, p0

    move-object/16 v57, p1

    move-object/16 v58, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move-object/from16 v12, v56

    move-object/from16 v1, v58

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    move/from16 v2, p6

    .line 546
    new-instance v15, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;

    .line 547
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    .line 548
    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v7

    move-object v3, v15

    invoke-direct/range {v3 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;-><init>(Ljava/util/Date;JJ)V

    .line 549
    new-instance v11, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;

    .line 550
    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v11, v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;-><init>(Ljava/lang/Long;)V

    const/4 v10, 0x0

    const v3, 0x7f110c11

    .line 552
    invoke-direct {v12, v3, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 554
    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    .line 558
    invoke-static/range {v58 .. v58}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v4

    const/16 v9, 0xa

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 560
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_DIVERT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    move-object v7, v8

    goto :goto_0

    :cond_0
    const v4, 0x7f110c1d

    .line 564
    invoke-direct {v12, v4, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 565
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 568
    :try_start_0
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v5, "BC"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v4

    .line 569
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v4

    .line 570
    invoke-virtual {v1, v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v4
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_47

    move-object v7, v4

    .line 581
    :goto_0
    :try_start_1
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCancelled()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_46
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_45
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_44

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 582
    :try_start_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 583
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v5, v14, v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    :goto_1
    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_45

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    :goto_3
    const/4 v3, 0x1

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_47

    :cond_1
    const/16 v4, 0xf

    const/16 v9, 0x17

    .line 591
    invoke-direct {v12, v4, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 592
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_44

    move-object v9, v3

    const/4 v5, 0x0

    .line 593
    :goto_5
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v10, 0x64

    if-ge v5, v8, :cond_8

    const v8, 0x7f110c13

    add-int/lit8 v16, v5, -0x1

    .line 595
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v10, v6

    mul-int v6, v16, v10

    invoke-direct {v12, v8, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 596
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 597
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UID_ADD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v32, v11

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v11, v10

    invoke-virtual {v14, v8, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const-string v8, ""

    .line 599
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 600
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UID_ERROR_EMPTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v14, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 601
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_44

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_4
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_44

    return-object v1

    .line 607
    :cond_2
    :try_start_5
    invoke-virtual {v9, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 609
    new-instance v10, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 610
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v16

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v18

    cmp-long v11, v16, v18

    if-eqz v11, :cond_3

    .line 612
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INTEGRITY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 613
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_5 .. :try_end_5} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_44

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_6
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_44

    return-object v1

    .line 615
    :cond_3
    :try_start_7
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v11

    move-object/from16 v33, v8

    const/16 v8, 0x30

    if-eq v11, v8, :cond_4

    .line 616
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v11, 0x11

    if-eq v8, v11, :cond_4

    .line 617
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v11, 0x12

    if-eq v8, v11, :cond_4

    .line 618
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v11, 0x13

    if-eq v8, v11, :cond_4

    .line 619
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v11, 0x10

    if-ne v8, v11, :cond_5

    .line 620
    :cond_4
    invoke-static {v9, v6, v10}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v9

    :cond_5
    move-object/from16 v8, v33

    goto :goto_6

    :cond_6
    if-eqz v4, :cond_7

    .line 628
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_7 .. :try_end_7} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_7} :catch_44

    if-eqz v8, :cond_7

    const/16 v21, 0x1

    goto :goto_7

    :cond_7
    const/16 v21, 0x0

    .line 632
    :goto_7
    :try_start_8
    invoke-static {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 633
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v22, p0

    move-wide/from16 v23, p1

    .line 631
    invoke-static/range {v16 .. v24}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v8

    .line 636
    invoke-static {v9, v6, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v6
    :try_end_8
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_8 .. :try_end_8} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_44

    move-object v9, v6

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 638
    :try_start_9
    iget-object v8, v6, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v6, v6, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v15, v8, v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v32

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_8
    move-object/from16 v32, v11

    .line 641
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    const/16 v5, 0x20

    const/16 v6, 0x17

    .line 644
    invoke-direct {v12, v6, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 645
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 646
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_9

    const v8, 0x7f110c12

    add-int/lit8 v11, v6, -0x1

    .line 647
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    div-int v16, v10, v16

    mul-int v11, v11, v16

    invoke-direct {v12, v8, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 648
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    .line 650
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 659
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UAT_ADD_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_a

    .line 656
    :pswitch_0
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UAT_ADD_IMAGE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v11, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_b

    .line 653
    :pswitch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UAT_ERROR_EMPTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 654
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_9 .. :try_end_9} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_44

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_a
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_a} :catch_44

    return-object v1

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    goto/16 :goto_4

    .line 659
    :goto_a
    :try_start_b
    invoke-virtual {v14, v11, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 663
    :goto_b
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    move-result-object v8
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_b .. :try_end_b} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_b} :catch_44

    .line 668
    :try_start_c
    invoke-static {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 669
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move/from16 v21, p0

    move-wide/from16 v22, p1

    .line 667
    invoke-static/range {v16 .. v23}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateUserAttributeSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;IJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v11

    .line 672
    invoke-static {v9, v8, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8
    :try_end_c
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_c .. :try_end_c} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_c .. :try_end_c} :catch_44

    move-object v9, v8

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v8, v0

    .line 674
    :try_start_d
    iget-object v11, v8, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v8, v8, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v15, v11, v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 677
    :cond_9
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    const/16 v5, 0x20

    const/16 v11, 0x28

    .line 680
    invoke-direct {v12, v5, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 681
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v5

    .line 682
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v6, :cond_d

    const v11, 0x7f110c18

    add-int/lit8 v16, v8, -0x1

    .line 683
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    div-int v17, v10, v17

    mul-int v10, v16, v17

    invoke-direct {v12, v11, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 684
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 685
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UID_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v34, v5

    move/from16 v35, v6

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v6, v5

    invoke-virtual {v14, v11, v2, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 690
    new-instance v5, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 691
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v5, 0x1

    goto :goto_e

    :cond_b
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_c

    .line 697
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_NOEXIST_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 698
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_d .. :try_end_d} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_d} :catch_44

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_e} :catch_44

    return-object v1

    .line 705
    :cond_c
    :try_start_f
    invoke-static {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v5

    .line 706
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v6

    .line 704
    invoke-static {v5, v6, v7, v3, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    .line 708
    invoke-static {v9, v10, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5
    :try_end_f
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_f .. :try_end_f} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_44

    move-object v9, v5

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v5, v0

    .line 710
    :try_start_10
    iget-object v6, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v5, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v15, v6, v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v34

    move/from16 v6, v35

    const/16 v10, 0x64

    const/16 v11, 0x28

    goto :goto_d

    .line 713
    :cond_d
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    if-eqz v4, :cond_19

    const v5, 0x7f110c17

    const/16 v11, 0x28

    .line 717
    invoke-direct {v12, v5, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 721
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UID_PRIMARY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v8, v6

    invoke-virtual {v14, v5, v2, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    .line 726
    new-instance v5, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 730
    new-instance v8, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    .line 731
    invoke-virtual {v9, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    .line 730
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v36, v5

    move-object/from16 v5, v17

    check-cast v5, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 732
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v17

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v19

    cmp-long v21, v17, v19

    if-eqz v21, :cond_e

    .line 734
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INTEGRITY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 735
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_10 .. :try_end_10} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_10 .. :try_end_10} :catch_44

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_11
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_11} :catch_44

    return-object v1

    :cond_e
    move-object/from16 v37, v8

    .line 739
    :try_start_12
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_43
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_12 .. :try_end_12} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_12 .. :try_end_12} :catch_44

    const/16 v12, 0x30

    if-ne v8, v12, :cond_f

    move-object/from16 v5, v36

    move-object/from16 v8, v37

    move-object/from16 v12, v56

    const/16 v16, 0x1

    goto :goto_11

    .line 745
    :cond_f
    :try_start_13
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v12, 0x11

    if-eq v8, v12, :cond_10

    .line 746
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v12, 0x12

    if-eq v8, v12, :cond_10

    .line 747
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v12, 0x13

    if-eq v8, v12, :cond_10

    .line 748
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v12, 0x10

    if-ne v8, v12, :cond_11

    :cond_10
    move-object v11, v5

    :cond_11
    move-object/from16 v5, v36

    move-object/from16 v8, v37

    move-object/from16 v12, v56

    goto :goto_11

    :cond_12
    move-object/from16 v36, v5

    if-nez v11, :cond_13

    .line 755
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INTEGRITY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 756
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_13 .. :try_end_13} :catch_b

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_14
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_14 .. :try_end_14} :catch_b

    return-object v1

    :cond_13
    if-eqz v16, :cond_15

    .line 762
    :try_start_15
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 763
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_REVOKED_PRIMARY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 764
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_15} :catch_b

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_16
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_16 .. :try_end_16} :catch_b

    return-object v1

    :cond_14
    :goto_12
    move-object/from16 v5, v36

    :goto_13
    const/16 v11, 0x28

    move-object/from16 v12, v56

    goto/16 :goto_10

    .line 770
    :cond_15
    :try_start_17
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 771
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->isPrimaryUserID()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 773
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v5, v36

    const/4 v10, 0x1

    goto :goto_13

    .line 778
    :cond_16
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PRIMARY_REPLACE_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v5, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 779
    invoke-static {v9, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v9
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_17 .. :try_end_17} :catch_b

    .line 783
    :try_start_18
    invoke-static {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 784
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    const/16 v21, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v22, p0

    move-wide/from16 v23, p1

    .line 782
    invoke-static/range {v16 .. v24}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    .line 787
    invoke-static {v9, v6, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5
    :try_end_18
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_18 .. :try_end_18} :catch_b

    move-object v9, v5

    goto :goto_12

    :catch_7
    move-exception v0

    move-object v5, v0

    .line 790
    :try_start_19
    iget-object v6, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v5, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v15, v6, v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    goto :goto_12

    .line 799
    :cond_17
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 801
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PRIMARY_NEW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v5, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 802
    invoke-static {v9, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_19 .. :try_end_19} :catch_b

    .line 806
    :try_start_1a
    invoke-static {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 807
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    const/16 v21, 0x1

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v22, p0

    move-wide/from16 v23, p1

    .line 805
    invoke-static/range {v16 .. v24}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v8

    .line 810
    invoke-static {v5, v6, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v6
    :try_end_1a
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_1a .. :try_end_1a} :catch_b

    move-object v5, v6

    goto :goto_14

    :catch_8
    move-exception v0

    move-object v6, v0

    .line 813
    :try_start_1b
    iget-object v8, v6, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v6, v6, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v15, v8, v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_14
    move-object v9, v5

    const/4 v10, 0x1

    goto/16 :goto_12

    :cond_18
    add-int/lit8 v2, v2, -0x1

    if-nez v10, :cond_19

    .line 825
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_NOEXIST_PRIMARY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 826
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/security/SignatureException; {:try_start_1b .. :try_end_1b} :catch_b

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1c
    invoke-direct {v1, v3, v14, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_1c .. :try_end_1c} :catch_b

    return-object v1

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_17

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_19

    :catch_b
    move-exception v0

    move-object v1, v0

    goto :goto_15

    :catch_c
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catch_d
    move-exception v0

    move-object v1, v0

    goto :goto_18

    :cond_19
    move v12, v2

    if-eq v9, v3, :cond_1a

    .line 832
    :try_start_1d
    invoke-static {v1, v9}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v1

    move-object/from16 v2, v57

    .line 834
    invoke-static {v2, v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/security/SignatureException; {:try_start_1d .. :try_end_1d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    move-object v1, v0

    move v2, v12

    :goto_15
    move-object/from16 v12, v56

    goto/16 :goto_43

    :catch_f
    move-exception v0

    move-object v1, v0

    move v2, v12

    :goto_16
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    move-object/from16 v12, v56

    goto/16 :goto_45

    :catch_10
    move-exception v0

    move-object v1, v0

    move v2, v12

    :goto_18
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    move-object/from16 v12, v56

    goto/16 :goto_47

    :cond_1a
    move-object/from16 v2, v57

    move-object v9, v3

    :goto_1a
    move-object/from16 v11, v56

    .line 840
    :try_start_1e
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCancelled()Z

    move-result v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_41
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1e .. :try_end_1e} :catch_40
    .catch Ljava/security/SignatureException; {:try_start_1e .. :try_end_1e} :catch_3f

    if-eqz v3, :cond_1b

    .line 841
    :try_start_1f
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 842
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_1f .. :try_end_1f} :catch_13

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_20
    invoke-direct {v1, v3, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/security/SignatureException; {:try_start_20 .. :try_end_20} :catch_13

    return-object v1

    :catch_11
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    :goto_1b
    move v2, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_1e

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    :goto_1c
    move v2, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_20

    :catch_13
    move-exception v0

    move-object v1, v0

    move v2, v12

    move-object v12, v11

    goto/16 :goto_43

    :catch_14
    move-exception v0

    move-object v1, v0

    move v2, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1d
    const/4 v5, 0x0

    :goto_1e
    move-object v12, v11

    goto/16 :goto_45

    :catch_15
    move-exception v0

    move-object v1, v0

    move v2, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1f
    const/4 v5, 0x0

    :goto_20
    move-object v12, v11

    goto/16 :goto_47

    :cond_1b
    const/16 v3, 0x32

    const/16 v4, 0x3c

    .line 846
    :try_start_21
    invoke-direct {v11, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 847
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v10

    .line 848
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_41
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_21 .. :try_end_21} :catch_40
    .catch Ljava/security/SignatureException; {:try_start_21 .. :try_end_21} :catch_3f

    move-object v3, v1

    move-object v4, v9

    const/4 v9, 0x0

    :goto_21
    const-wide/16 v30, 0x0

    if-ge v9, v8, :cond_31

    const v1, 0x7f110c1a

    add-int/lit8 v16, v9, -0x1

    .line 850
    :try_start_22
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x64

    div-int v17, v18, v17

    mul-int v5, v16, v17

    invoke-direct {v11, v1, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 851
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 852
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUBKEY_CHANGE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move/from16 v38, v8

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    move/from16 v40, v9

    move-object/from16 v39, v10

    .line 853
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 852
    invoke-virtual {v14, v5, v12, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 855
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v5
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_22 .. :try_end_22} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_22 .. :try_end_22} :catch_22

    if-nez v5, :cond_1c

    .line 857
    :try_start_23
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_SUBKEY_MISSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, v12, 0x1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 858
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_23 .. :try_end_23} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_23 .. :try_end_23} :catch_13

    const/4 v4, 0x0

    :try_start_24
    aput-object v1, v5, v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_19
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_24 .. :try_end_24} :catch_18
    .catch Ljava/security/SignatureException; {:try_start_24 .. :try_end_24} :catch_13

    .line 857
    :try_start_25
    invoke-virtual {v14, v2, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 859
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_25 .. :try_end_25} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_25 .. :try_end_25} :catch_13

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_26
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_17
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_26 .. :try_end_26} :catch_16
    .catch Ljava/security/SignatureException; {:try_start_26 .. :try_end_26} :catch_13

    return-object v1

    :catch_16
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_1b

    :catch_17
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_1c

    :catch_18
    move-exception v0

    move-object v1, v0

    move v2, v12

    const/4 v3, 0x1

    goto/16 :goto_1d

    :catch_19
    move-exception v0

    move-object v1, v0

    move v2, v12

    const/4 v3, 0x1

    goto/16 :goto_1f

    .line 862
    :cond_1c
    :try_start_27
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v6
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_27 .. :try_end_27} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_27 .. :try_end_27} :catch_22

    if-eqz v6, :cond_1d

    .line 865
    :try_start_28
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v5

    .line 866
    invoke-static {v2, v5}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_28 .. :try_end_28} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_28 .. :try_end_28} :catch_13

    move-object v9, v2

    move-object/from16 v41, v3

    move-object/from16 v42, v4

    move-object v10, v5

    move-object/from16 v43, v32

    goto/16 :goto_24

    .line 867
    :cond_1d
    :try_start_29
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v6
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_29 .. :try_end_29} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_29 .. :try_end_29} :catch_22

    if-eqz v6, :cond_1f

    add-int/lit8 v6, v12, 0x1

    .line 868
    :try_start_2a
    invoke-static {v5, v14, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkSecurityTokenCompatibility(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 869
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_KEYTOCARD_START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    move-object/from16 v41, v3

    move-object/from16 v42, v4

    .line 870
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2a .. :try_end_2a} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_2a .. :try_end_2a} :catch_13

    const/4 v4, 0x0

    :try_start_2b
    aput-object v3, v10, v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_19
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2b .. :try_end_2b} :catch_18
    .catch Ljava/security/SignatureException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 869
    :try_start_2c
    invoke-virtual {v14, v8, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 871
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v3

    move-object/from16 v10, v32

    invoke-virtual {v10, v3, v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->addSubkey(J)V

    goto :goto_22

    .line 874
    :cond_1e
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2c .. :try_end_2c} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_2c .. :try_end_2c} :catch_13

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2d
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_17
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2d .. :try_end_2d} :catch_16
    .catch Ljava/security/SignatureException; {:try_start_2d .. :try_end_2d} :catch_13

    return-object v1

    :cond_1f
    move-object/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v10, v32

    .line 876
    :try_start_2e
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2e .. :try_end_2e} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_2e .. :try_end_2e} :catch_22

    if-eqz v3, :cond_21

    .line 878
    :try_start_2f
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v3

    array-length v3, v3

    const/16 v9, 0x10

    if-eq v3, v9, :cond_20

    .line 879
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DIVERT_SERIAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, v12, 0x1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 880
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2f .. :try_end_2f} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_2f .. :try_end_2f} :catch_13

    const/4 v4, 0x0

    :try_start_30
    aput-object v1, v5, v4
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_19
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_30 .. :try_end_30} :catch_18
    .catch Ljava/security/SignatureException; {:try_start_30 .. :try_end_30} :catch_13

    .line 879
    :try_start_31
    invoke-virtual {v14, v2, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 881
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_31 .. :try_end_31} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_31 .. :try_end_31} :catch_13

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_32
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_17
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_32 .. :try_end_32} :catch_16
    .catch Ljava/security/SignatureException; {:try_start_32 .. :try_end_32} :catch_13

    return-object v1

    .line 883
    :cond_20
    :try_start_33
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_KEYTOCARD_FINISH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v4, v12, 0x1

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    move-object/from16 v43, v10

    .line 884
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 885
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v9

    const/16 v10, 0x8

    const/4 v6, 0x6

    invoke-static {v9, v10, v6}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    .line 883
    invoke-virtual {v14, v3, v4, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 886
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v5

    .line 887
    invoke-static {v2, v5}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_33 .. :try_end_33} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_33 .. :try_end_33} :catch_13

    goto :goto_23

    :cond_21
    :goto_22
    move-object/from16 v43, v10

    :goto_23
    move-object v9, v2

    move-object v10, v5

    .line 893
    :goto_24
    :try_start_34
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getRecertify()Z

    move-result v2
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_34 .. :try_end_34} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_34 .. :try_end_34} :catch_22

    if-nez v2, :cond_22

    :try_start_35
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_35 .. :try_end_35} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_35 .. :try_end_35} :catch_13

    if-nez v2, :cond_22

    move-object/from16 v44, v7

    move-object v5, v9

    move/from16 v47, v12

    move-object v9, v13

    move-object v11, v15

    move/from16 v27, v38

    move-object/from16 v26, v39

    move/from16 v29, v40

    move-object/from16 v1, v41

    move-object/from16 v4, v42

    move-object/from16 v46, v43

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x28

    const/16 v28, 0x10

    goto/16 :goto_2c

    .line 898
    :cond_22
    :try_start_36
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_36 .. :try_end_36} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_36 .. :try_end_36} :catch_22

    if-eqz v2, :cond_23

    :try_start_37
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v30

    if-eqz v4, :cond_23

    new-instance v2, Ljava/util/Date;

    .line 899
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 900
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PAST_EXPIRY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, v12, 0x1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 901
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v5, v16

    .line 900
    invoke-virtual {v14, v2, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 902
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_37 .. :try_end_37} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_37 .. :try_end_37} :catch_13

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_38
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_17
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_38 .. :try_end_38} :catch_16
    .catch Ljava/security/SignatureException; {:try_start_38 .. :try_end_38} :catch_13

    return-object v1

    :cond_23
    const/16 v16, 0x0

    .line 906
    :try_start_39
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v2

    move-object/from16 v4, v42

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v5

    cmp-long v8, v2, v5

    if-nez v8, :cond_28

    .line 907
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_24

    move/from16 v5, p0

    goto :goto_25

    :cond_24
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    .line 908
    :goto_25
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_25

    move-wide/from16 v19, p1

    goto :goto_26

    :cond_25
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_24
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_39 .. :try_end_39} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_39 .. :try_end_39} :catch_22

    move-wide/from16 v19, v1

    :goto_26
    and-int/lit8 v1, v5, 0x1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_26

    .line 911
    :try_start_3a
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_NO_CERTIFY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 912
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_15
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3a .. :try_end_3a} :catch_14
    .catch Ljava/security/SignatureException; {:try_start_3a .. :try_end_3a} :catch_13

    const/4 v8, 0x0

    :try_start_3b
    invoke-direct {v1, v6, v14, v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_1b
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3b .. :try_end_3b} :catch_1a
    .catch Ljava/security/SignatureException; {:try_start_3b .. :try_end_3b} :catch_13

    return-object v1

    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto/16 :goto_1b

    :catch_1b
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto/16 :goto_1c

    :cond_26
    const/4 v8, 0x0

    move-object v1, v11

    move-object/from16 v2, v41

    move-object v3, v7

    move-object/from16 v44, v7

    move-wide/from16 v6, v19

    move/from16 v27, v38

    move-object v8, v13

    move-object v13, v9

    move/from16 v29, v40

    const/16 v17, 0x10

    move-object v9, v15

    move-object/from16 v45, v15

    move-object/from16 v26, v39

    move-object/from16 v16, v43

    const/16 v28, 0x10

    move-object v15, v10

    move v10, v12

    move/from16 v47, v12

    move-object/from16 v46, v16

    const/16 v12, 0x28

    move-object v11, v14

    .line 916
    :try_start_3c
    invoke-direct/range {v1 .. v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->updateMasterCertificates(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v4

    if-nez v4, :cond_27

    .line 921
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_1d
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3c .. :try_end_3c} :catch_1c
    .catch Ljava/security/SignatureException; {:try_start_3c .. :try_end_3c} :catch_1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3d
    invoke-direct {v1, v7, v14, v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :cond_27
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 923
    invoke-static {v15, v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v3

    .line 925
    invoke-static {v13, v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v11, v45

    move-object/from16 v9, p3

    const/4 v10, 0x0

    goto/16 :goto_2d

    :catch_1c
    move-exception v0

    goto/16 :goto_2f

    :catch_1d
    move-exception v0

    goto/16 :goto_30

    :cond_28
    move-object/from16 v44, v7

    move-object v13, v9

    move/from16 v47, v12

    move-object/from16 v45, v15

    move/from16 v27, v38

    move-object/from16 v26, v39

    move/from16 v29, v40

    move-object/from16 v46, v43

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v12, 0x28

    const/16 v28, 0x10

    move-object v15, v10

    .line 930
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    .line 933
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_29

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->readKeyFlags(Lorg/bouncycastle/openpgp/PGPPublicKey;)I

    move-result v3

    :goto_27
    move/from16 v23, v3

    goto :goto_28

    :cond_29
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_27

    .line 935
    :goto_28
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 936
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v5

    cmp-long v3, v5, v30

    if-nez v3, :cond_2a

    move-wide/from16 v16, v30

    goto :goto_29

    .line 939
    :cond_2a
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v9

    const/4 v3, 0x0

    add-long v16, v5, v9

    goto :goto_29

    .line 941
    :cond_2b
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 946
    :goto_29
    new-instance v3, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide/from16 v24, v16

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 948
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2c

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v9, v30

    if-nez v6, :cond_2d

    .line 949
    :cond_2c
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v6

    if-ne v6, v12, :cond_2d

    move-wide/from16 v24, v30

    .line 952
    :cond_2d
    invoke-static {v2, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    goto :goto_2a

    .line 956
    :cond_2e
    invoke-static {v15}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 957
    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v5, "BC"

    .line 958
    invoke-virtual {v3, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v3

    move-object v5, v13

    move-object/from16 v9, p3

    .line 959
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v6

    .line 958
    invoke-virtual {v3, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v3

    .line 960
    invoke-virtual {v15, v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 963
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_SUB_STRIPPED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v12, v47, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    .line 964
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v3, v10

    .line 963
    invoke-virtual {v14, v2, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 965
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v7, v14, v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_21
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3d .. :try_end_3d} :catch_20
    .catch Ljava/security/SignatureException; {:try_start_3d .. :try_end_3d} :catch_1f

    return-object v1

    :cond_2f
    const/4 v10, 0x0

    move-object/from16 v21, v3

    goto :goto_2b

    :cond_30
    move-object v5, v13

    move-object/from16 v9, p3

    const/4 v10, 0x0

    move-object/from16 v21, v8

    :goto_2b
    move-object/from16 v1, v41

    .line 972
    :try_start_3e
    invoke-static {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 973
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    .line 974
    invoke-static {v15, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v20

    move-object/from16 v18, v4

    move-object/from16 v19, v44

    move-object/from16 v22, v2

    .line 971
    invoke-static/range {v16 .. v25}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateSubkeyBindingSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v3

    .line 978
    invoke-static {v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    .line 979
    invoke-static {v15, v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2
    :try_end_3e
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_3e .. :try_end_3e} :catch_1e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_21
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3e .. :try_end_3e} :catch_20
    .catch Ljava/security/SignatureException; {:try_start_3e .. :try_end_3e} :catch_1f

    move-object v3, v1

    move-object/from16 v11, v45

    goto :goto_2d

    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 981
    :try_start_3f
    iget-object v3, v2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v2, v2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    move-object/from16 v11, v45

    invoke-virtual {v11, v3, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3f .. :try_end_3f} :catch_20
    .catch Ljava/security/SignatureException; {:try_start_3f .. :try_end_3f} :catch_1f

    :goto_2c
    move-object v3, v1

    move-object v2, v5

    :goto_2d
    add-int/lit8 v1, v29, 0x1

    move-object v13, v9

    move-object v15, v11

    move-object/from16 v10, v26

    move/from16 v8, v27

    move-object/from16 v7, v44

    move-object/from16 v32, v46

    move/from16 v12, v47

    move-object/from16 v11, v56

    move v9, v1

    goto/16 :goto_21

    :catch_1f
    move-exception v0

    goto :goto_2e

    :catch_20
    move-exception v0

    move-object/from16 v12, v56

    move-object v1, v0

    move-object v5, v8

    move/from16 v2, v47

    goto/16 :goto_1

    :catch_21
    move-exception v0

    move-object/from16 v12, v56

    move-object v1, v0

    move-object v5, v8

    move/from16 v2, v47

    goto/16 :goto_3

    :catch_22
    move-exception v0

    move/from16 v47, v12

    :goto_2e
    move-object/from16 v12, v56

    move-object v1, v0

    move/from16 v2, v47

    goto/16 :goto_43

    :catch_23
    move-exception v0

    move/from16 v47, v12

    :goto_2f
    move-object/from16 v12, v56

    move-object v1, v0

    move/from16 v2, v47

    goto/16 :goto_40

    :catch_24
    move-exception v0

    move/from16 v47, v12

    :goto_30
    move-object/from16 v12, v56

    move-object v1, v0

    move/from16 v2, v47

    goto/16 :goto_41

    :cond_31
    move-object v1, v3

    move-object/from16 v44, v7

    move/from16 v47, v12

    move-object v9, v13

    move-object v11, v15

    move-object/from16 v46, v32

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 985
    :try_start_40
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_3e
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_40 .. :try_end_40} :catch_3d
    .catch Ljava/security/SignatureException; {:try_start_40 .. :try_end_40} :catch_3c

    const/16 v3, 0x3c

    const/16 v5, 0x41

    move-object/from16 v12, v56

    .line 988
    :try_start_41
    invoke-direct {v12, v3, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 989
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v3

    .line 990
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v2

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v5, :cond_33

    const v13, 0x7f110c1b

    add-int/lit8 v15, v2, -0x1

    .line 991
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_3b
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_41 .. :try_end_41} :catch_3a
    .catch Ljava/security/SignatureException; {:try_start_41 .. :try_end_41} :catch_39

    const/16 v8, 0x64

    :try_start_42
    div-int v16, v8, v16

    mul-int v15, v15, v16

    invoke-direct {v12, v13, v15}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 992
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 993
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUBKEY_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v15, v7, [Ljava/lang/Object;

    .line 994
    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_28
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_42 .. :try_end_42} :catch_27
    .catch Ljava/security/SignatureException; {:try_start_42 .. :try_end_42} :catch_39

    move/from16 v10, v47

    .line 993
    :try_start_43
    invoke-virtual {v14, v13, v10, v15}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 996
    invoke-virtual {v6, v8, v9}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v13

    if-nez v13, :cond_32

    .line 998
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_SUBKEY_MISSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v10, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    .line 999
    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 998
    invoke-virtual {v14, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1000
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_43 .. :try_end_43} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_43 .. :try_end_43} :catch_36

    const/4 v2, 0x0

    :try_start_44
    invoke-direct {v1, v7, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_2a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_44 .. :try_end_44} :catch_29
    .catch Ljava/security/SignatureException; {:try_start_44 .. :try_end_44} :catch_36

    return-object v1

    .line 1002
    :cond_32
    :try_start_45
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_45 .. :try_end_45} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_45 .. :try_end_45} :catch_36

    move-object/from16 v9, p3

    .line 1007
    :try_start_46
    invoke-static {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v15

    .line 1008
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v7
    :try_end_46
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_46 .. :try_end_46} :catch_26
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_46 .. :try_end_46} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_46 .. :try_end_46} :catch_36

    move-object/from16 v48, v3

    move-object/from16 v3, v44

    .line 1006
    :try_start_47
    invoke-static {v15, v7, v4, v3, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateRevocationSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v7

    .line 1011
    invoke-static {v8, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v7

    .line 1012
    invoke-static {v13, v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v7
    :try_end_47
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_47 .. :try_end_47} :catch_25
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_47 .. :try_end_47} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_47} :catch_36

    move-object v6, v7

    goto :goto_33

    :catch_25
    move-exception v0

    goto :goto_32

    :catch_26
    move-exception v0

    move-object/from16 v48, v3

    move-object/from16 v3, v44

    :goto_32
    move-object v7, v0

    .line 1014
    :try_start_48
    iget-object v8, v7, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v7, v7, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v11, v8, v7}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v44, v3

    move/from16 v47, v10

    move-object/from16 v3, v48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_31

    :catch_27
    move-exception v0

    move/from16 v10, v47

    goto/16 :goto_3e

    :catch_28
    move-exception v0

    move/from16 v10, v47

    goto/16 :goto_3f

    :cond_33
    move-object/from16 v3, v44

    move/from16 v10, v47

    .line 1017
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    const/16 v2, 0x46

    const/16 v7, 0x5a

    .line 1020
    invoke-direct {v12, v2, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 1021
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v2

    .line 1022
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move-object v8, v6

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v5, :cond_3a

    .line 1024
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCancelled()Z

    move-result v13

    if-eqz v13, :cond_34

    .line 1025
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1026
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_48 .. :try_end_48} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_48 .. :try_end_48} :catch_36

    const/4 v2, 0x0

    const/4 v13, 0x2

    :try_start_49
    invoke-direct {v1, v13, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_2a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_49 .. :try_end_49} :catch_29
    .catch Ljava/security/SignatureException; {:try_start_49 .. :try_end_49} :catch_36

    return-object v1

    :catch_29
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    goto/16 :goto_3a

    :catch_2a
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    goto/16 :goto_3c

    :cond_34
    const/4 v13, 0x2

    const v15, 0x7f110c19

    add-int/lit8 v16, v6, -0x1

    .line 1029
    :try_start_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x64

    div-int v17, v18, v17

    mul-int v7, v16, v17

    invoke-direct {v12, v15, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1030
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 1031
    sget-object v15, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUBKEY_NEW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move/from16 v49, v5

    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/Object;

    .line 1032
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v13

    move-object/from16 v50, v8

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v51, v11

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v11

    invoke-static {v13, v8, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v5, v11

    .line 1031
    invoke-virtual {v14, v15, v10, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1034
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1035
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DIVERT_NEWSUB:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1036
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4a .. :try_end_4a} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_4a .. :try_end_4a} :catch_36

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4b
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_2c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4b .. :try_end_4b} :catch_2b
    .catch Ljava/security/SignatureException; {:try_start_4b .. :try_end_4b} :catch_36

    return-object v1

    :catch_2b
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_3a

    :catch_2c
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_3c

    .line 1039
    :cond_35
    :try_start_4c
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_36

    .line 1040
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_NULL_EXPIRY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1041
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4c .. :try_end_4c} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_4c .. :try_end_4c} :catch_36

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4d
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_2c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4d .. :try_end_4d} :catch_2b
    .catch Ljava/security/SignatureException; {:try_start_4d .. :try_end_4d} :catch_36

    return-object v1

    .line 1044
    :cond_36
    :try_start_4e
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v5, v17, v30

    if-lez v5, :cond_37

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const-wide/16 v26, 0x3e8

    mul-long v3, v17, v26

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1045
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PAST_EXPIRY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1046
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4e .. :try_end_4e} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_4e .. :try_end_4e} :catch_36

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4f
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_2c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4f .. :try_end_4f} :catch_2b
    .catch Ljava/security/SignatureException; {:try_start_4f .. :try_end_4f} :catch_36

    return-object v1

    :cond_37
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const-wide/16 v26, 0x3e8

    .line 1051
    :cond_38
    :try_start_50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    div-int v3, v4, v3

    mul-int v3, v3, v16

    .line 1052
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v4, v5

    mul-int v5, v5, v6

    .line 1050
    invoke-direct {v12, v3, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v12, v7, v3, v14, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->createKey(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;Ljava/util/Date;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPKeyPair;

    move-result-object v3

    .line 1055
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    if-nez v3, :cond_39

    .line 1057
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1058
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_50 .. :try_end_50} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_50 .. :try_end_50} :catch_36

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_51
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_2c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_51 .. :try_end_51} :catch_2b
    .catch Ljava/security/SignatureException; {:try_start_51 .. :try_end_51} :catch_36

    return-object v1

    .line 1062
    :cond_39
    :try_start_52
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v4
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_52 .. :try_end_52} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_52 .. :try_end_52} :catch_36

    .line 1065
    :try_start_53
    invoke-static {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v16

    .line 1066
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v17

    const/4 v5, 0x0

    .line 1068
    invoke-static {v4, v9, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v20

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v21

    .line 1069
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v23

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v18, v52

    move-object/from16 v19, v53

    move-object/from16 v22, v4

    .line 1064
    invoke-static/range {v16 .. v25}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateSubkeyBindingSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    .line 1070
    invoke-static {v4, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addSubkeyBindingCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5
    :try_end_53
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_53 .. :try_end_53} :catch_2d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_53 .. :try_end_53} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_53 .. :try_end_53} :catch_36

    move-object/from16 v17, v5

    move-object/from16 v8, v51

    goto :goto_35

    :catch_2d
    move-exception v0

    move-object v5, v0

    .line 1072
    :try_start_54
    iget-object v7, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v5, v5, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    move-object/from16 v8, v51

    invoke-virtual {v8, v7, v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    move-object/from16 v17, v4

    .line 1077
    :goto_35
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    .line 1078
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    .line 1079
    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/16 v11, 0x9

    const/16 v13, 0x90

    invoke-direct {v7, v11, v4, v13}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    const-string v4, "BC"

    .line 1082
    invoke-virtual {v7, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v4

    .line 1083
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v7

    .line 1082
    invoke-virtual {v4, v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v20

    .line 1085
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    .line 1086
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v18

    .line 1087
    new-instance v4, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v16

    const/16 v19, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v20}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    .line 1090
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUBKEY_NEW_ID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v7, v10, 0x1

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    move/from16 v54, v6

    .line 1091
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 1090
    invoke-virtual {v14, v3, v7, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    move-object/from16 v6, v50

    .line 1093
    invoke-static {v6, v4}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v3

    add-int/lit8 v6, v54, 0x1

    move-object v11, v8

    move/from16 v5, v49

    move-object/from16 v4, v52

    const/16 v7, 0x5a

    move-object v8, v3

    move-object/from16 v3, v53

    goto/16 :goto_34

    :cond_3a
    move-object/from16 v52, v4

    move-object v6, v8

    move-object v8, v11

    .line 1096
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V

    .line 1099
    invoke-direct/range {v56 .. v56}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCancelled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1100
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1101
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_54 .. :try_end_54} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_54 .. :try_end_54} :catch_36

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_55
    invoke-direct {v1, v3, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_2a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_55 .. :try_end_55} :catch_29
    .catch Ljava/security/SignatureException; {:try_start_55 .. :try_end_55} :catch_36

    return-object v1

    .line 1105
    :cond_3b
    :try_start_56
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v1

    if-eqz v1, :cond_3d

    const v1, 0x7f110c15

    const/16 v2, 0x5a

    .line 1106
    invoke-direct {v12, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1107
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_38
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_56 .. :try_end_56} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_56 .. :try_end_56} :catch_36

    add-int/lit8 v7, v10, 0x1

    .line 1110
    :try_start_57
    invoke-virtual/range {p3 .. p3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    .line 1111
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getNewPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v4

    move-object v1, v6

    move-object/from16 v2, v52

    move-object v5, v14

    move v6, v7

    .line 1110
    invoke-static/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->applyNewPassphrase(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 1114
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_35
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_57 .. :try_end_57} :catch_34
    .catch Ljava/security/SignatureException; {:try_start_57 .. :try_end_57} :catch_33

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_58
    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_2f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_58 .. :try_end_58} :catch_2e
    .catch Ljava/security/SignatureException; {:try_start_58 .. :try_end_58} :catch_33

    return-object v1

    :catch_2e
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    move v2, v7

    goto/16 :goto_1

    :catch_2f
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    move v2, v7

    goto/16 :goto_3

    :cond_3c
    add-int/lit8 v7, v7, -0x1

    move-object v6, v1

    goto :goto_36

    :cond_3d
    move v7, v10

    .line 1121
    :goto_36
    :try_start_59
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-eqz v1, :cond_3e

    const v1, 0x7f110c16

    const/16 v2, 0x5a

    .line 1122
    invoke-direct {v12, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1123
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PIN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_59} :catch_35
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_59 .. :try_end_59} :catch_34
    .catch Ljava/security/SignatureException; {:try_start_59 .. :try_end_59} :catch_33

    add-int/lit8 v1, v7, 0x1

    .line 1126
    :try_start_5a
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    move-object/from16 v3, v46

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->setPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_32
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_5a .. :try_end_5a} :catch_31
    .catch Ljava/security/SignatureException; {:try_start_5a .. :try_end_5a} :catch_30

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    goto :goto_37

    :catch_30
    move-exception v0

    move v2, v1

    goto/16 :goto_42

    :catch_31
    move-exception v0

    move v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_44

    :catch_32
    move-exception v0

    move v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_46

    :cond_3e
    move-object/from16 v3, v46

    .line 1130
    :goto_37
    :try_start_5b
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-eqz v1, :cond_3f

    const v1, 0x7f110c14

    const/16 v2, 0x5a

    .line 1131
    invoke-direct {v12, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1132
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ADMIN_PIN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5b} :catch_35
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_5b .. :try_end_5b} :catch_34
    .catch Ljava/security/SignatureException; {:try_start_5b .. :try_end_5b} :catch_33

    add-int/lit8 v1, v7, 0x1

    .line 1135
    :try_start_5c
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->setAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_32
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_5c .. :try_end_5c} :catch_31
    .catch Ljava/security/SignatureException; {:try_start_5c .. :try_end_5c} :catch_30

    add-int/lit8 v7, v1, -0x1

    :cond_3f
    const v1, 0x7f110c00

    const/16 v2, 0x64

    .line 1154
    invoke-direct {v12, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1156
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1157
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_CONFLICTING_NFC_COMMANDS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    add-int/2addr v7, v2

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1158
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v14, v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    .line 1161
    :cond_40
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1162
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_REQUIRE_DIVERT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1163
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v2

    invoke-direct {v1, v14, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v1

    .line 1166
    :cond_41
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1167
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_REQUIRE_DIVERT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1168
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v2

    invoke-direct {v1, v14, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v1

    .line 1171
    :cond_42
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v14, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1172
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v2, v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_33
    move-exception v0

    move-object v1, v0

    move v2, v7

    goto/16 :goto_43

    :catch_34
    move-exception v0

    move-object v1, v0

    move v2, v7

    goto/16 :goto_40

    :catch_35
    move-exception v0

    move-object v1, v0

    move v2, v7

    goto/16 :goto_41

    :catch_36
    move-exception v0

    goto :goto_3d

    :catch_37
    move-exception v0

    goto :goto_3e

    :catch_38
    move-exception v0

    goto :goto_3f

    :catch_39
    move-exception v0

    goto :goto_38

    :catch_3a
    move-exception v0

    goto :goto_39

    :catch_3b
    move-exception v0

    goto :goto_3b

    :catch_3c
    move-exception v0

    move-object/from16 v12, v56

    :goto_38
    move/from16 v10, v47

    goto :goto_3d

    :catch_3d
    move-exception v0

    move-object/from16 v12, v56

    :goto_39
    move/from16 v10, v47

    move-object v1, v0

    move-object v5, v8

    :goto_3a
    move v2, v10

    goto/16 :goto_1

    :catch_3e
    move-exception v0

    move-object/from16 v12, v56

    :goto_3b
    move/from16 v10, v47

    move-object v1, v0

    move-object v5, v8

    :goto_3c
    move v2, v10

    goto/16 :goto_3

    :catch_3f
    move-exception v0

    move v10, v12

    move-object v12, v11

    :goto_3d
    move-object v1, v0

    move v2, v10

    goto :goto_43

    :catch_40
    move-exception v0

    move v10, v12

    move-object v12, v11

    :goto_3e
    move-object v1, v0

    move v2, v10

    goto :goto_40

    :catch_41
    move-exception v0

    move v10, v12

    move-object v12, v11

    :goto_3f
    move-object v1, v0

    move v2, v10

    goto :goto_41

    :catch_42
    move-exception v0

    move-object v1, v0

    :goto_40
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_45

    :catch_43
    move-exception v0

    move-object v1, v0

    :goto_41
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_47

    :catch_44
    move-exception v0

    :goto_42
    move-object v1, v0

    :goto_43
    const-string v3, "encountered SignatureException while modifying key"

    const/4 v4, 0x0

    .line 1149
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_SIG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1151
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v14, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_45
    move-exception v0

    move-object v5, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_44
    move-object v1, v0

    :goto_45
    const-string v6, "encountered pgp error while modifying key"

    .line 1145
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_PGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1147
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v3, v14, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_46
    move-exception v0

    move-object v5, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_46
    move-object v1, v0

    :goto_47
    const-string v6, "encountered IOException while modifying key"

    .line 1141
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_ENCODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1143
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v3, v14, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_47
    const/4 v3, 0x1

    .line 572
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_UNLOCK_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 573
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v14, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->internal(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private internalRestricted(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 21

    move-object/16 v18, p0

    move-object/16 v19, p1

    move-object/16 v20, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const v4, 0x7f110c11

    .line 1183
    invoke-direct {v0, v4, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1186
    invoke-static/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 1187
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_RESTRICTED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v3, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1188
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v2, v6, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v2

    .line 1192
    :cond_0
    invoke-direct/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCancelled()Z

    move-result v4

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    .line 1193
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v3, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1194
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v2, v7, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v2

    :cond_1
    const/16 v4, 0x32

    const/16 v8, 0x3c

    .line 1199
    invoke-direct {v0, v4, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 1200
    invoke-virtual/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v4

    .line 1201
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v10, v19

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x64

    if-ge v9, v8, :cond_7

    const v12, 0x7f110c1a

    add-int/lit8 v13, v9, -0x1

    .line 1202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    div-int/2addr v11, v14

    mul-int v13, v13, v11

    invoke-direct {v0, v12, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1203
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 1204
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUBKEY_CHANGE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v13, v6, [Ljava/lang/Object;

    .line 1205
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1204
    invoke-virtual {v1, v12, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1207
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v12

    if-nez v12, :cond_2

    .line 1209
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_SUBKEY_MISSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v2, v6

    new-array v7, v6, [Ljava/lang/Object;

    .line 1210
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1209
    invoke-virtual {v1, v4, v2, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1211
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v2, v6, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v2

    .line 1214
    :cond_2
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v13

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v8

    goto :goto_3

    .line 1217
    :cond_4
    :goto_1
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1218
    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v11

    move/from16 v16, v8

    goto :goto_2

    .line 1221
    :cond_5
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v13

    array-length v13, v13

    const/16 v14, 0x10

    if-eq v13, v14, :cond_6

    .line 1222
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_DIVERT_SERIAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v2, v6

    new-array v7, v6, [Ljava/lang/Object;

    .line 1223
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1222
    invoke-virtual {v1, v4, v2, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1224
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v2, v6, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v2

    .line 1226
    :cond_6
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_KEYTOCARD_FINISH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v14, v2, 0x1

    new-array v15, v7, [Ljava/lang/Object;

    move/from16 v16, v8

    .line 1227
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v3

    .line 1228
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v7

    const/16 v8, 0x8

    const/4 v5, 0x6

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v6

    .line 1226
    invoke-virtual {v1, v13, v14, v15}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 1229
    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v7

    invoke-static {v5, v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v11

    .line 1231
    :goto_2
    invoke-static {v10, v11}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v5

    move-object v10, v5

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f110c00

    .line 1237
    invoke-direct {v0, v4, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1238
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1239
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v4, v10}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    invoke-direct {v2, v3, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v2

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->internalRestricted(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z
    .locals 5

    move-object/16 v2, p0

    .line 1695
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1696
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 1697
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z
    .locals 5

    move-object/16 v2, p0

    .line 1689
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1690
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 1691
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isParcelEmpty(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z
    .locals 4

    move-object/16 v1, p0

    .line 1773
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->isParcelEmpty(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z
    .locals 6

    move-object/16 v3, p0

    .line 1752
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1753
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1754
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1755
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1756
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1757
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1758
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 1763
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getRecertify()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1764
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x1

    return v3

    :cond_4
    :goto_0
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseSecurityTokenSerialNumberIntoSubkeyChanges(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 477
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildUpon(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 479
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    .line 482
    new-array v2, v2, [B

    .line 483
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 484
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 486
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->createSecurityTokenSerialNo(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v6

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->parseSecurityTokenSerialNumberIntoSubkeyChanges(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private progress(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    .line 148
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-interface {v0, v3, v4, v1}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->progress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readKeyFlags(Lorg/bouncycastle/openpgp/PGPPublicKey;)I
    .locals 6

    move-object/16 v3, p0

    .line 1679
    new-instance v0, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1680
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getKeyFlags()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->readKeyFlags(Lorg/bouncycastle/openpgp/PGPPublicKey;)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private subProgressPop()V
    .locals 5

    move-object/16 v2, p0

    .line 137
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to pop progressable without prior push! This is a programming error, please file a bug report."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->subProgressPop()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private subProgressPush(II)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move/16 v6, p2

    .line 131
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    new-instance v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->mProgress:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v5, v6, v3}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->subProgressPush(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateMasterCertificates(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v19, p0

    move-object/16 v20, p1

    move-object/16 v21, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    move/from16 v1, p6

    move-object/from16 v2, p7

    .line 1424
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_MASTER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1431
    new-instance v4, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v6, p0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1435
    new-instance v10, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    .line 1436
    invoke-virtual {v6, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    .line 1435
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v9

    const/4 v12, 0x0

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1437
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_1

    .line 1439
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INTEGRITY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v9

    .line 1444
    :cond_1
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    .line 1450
    :cond_2
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v14

    const/16 v15, 0x11

    if-eq v14, v15, :cond_3

    .line 1451
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v14

    const/16 v15, 0x12

    if-eq v14, v15, :cond_3

    .line 1452
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v14

    const/16 v15, 0x13

    if-eq v14, v15, :cond_3

    .line 1453
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_0

    :cond_3
    move-object v11, v13

    goto :goto_1

    :cond_4
    if-nez v11, :cond_5

    .line 1460
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_INTEGRITY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v9

    :cond_5
    if-eqz v12, :cond_6

    goto :goto_0

    .line 1470
    :cond_6
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1471
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->isPrimaryUserID()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    .line 1472
    :goto_2
    invoke-static {v6, v8, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v6

    move-object/from16 v7, v20

    move-object/from16 v9, p4

    .line 1476
    :try_start_0
    invoke-static {v7, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->getSignatureGenerator(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v10

    .line 1477
    invoke-virtual/range {p4 .. p4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v11

    move-object/from16 v12, v21

    move-object/from16 v13, p0

    move-object v14, v8

    move/from16 v16, p1

    move-wide/from16 v17, p2

    .line 1475
    invoke-static/range {v10 .. v18}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->generateUserIdSignature(Lorg/bouncycastle/openpgp/PGPSignatureGenerator;Ljava/util/Date;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;ZIJ)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v10

    .line 1479
    invoke-static {v6, v8, v10}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v11, p5

    move-object v6, v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1482
    iget-object v10, v8, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v8, v8, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    move-object/from16 v11, p5

    invoke-virtual {v11, v10, v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v7, :cond_9

    .line 1490
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_MASTER_NONE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v9

    :cond_9
    return-object v6

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->updateMasterCertificates(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createSecretKeyRing(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 25

    move-object/16 v22, p0

    move-object/16 v23, p1

    move-object/from16 v11, v22

    .line 298
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 303
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v1, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const v1, 0x7f110bf7

    .line 304
    invoke-direct {v11, v1, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v10, 0x1

    .line 307
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_0

    .line 308
    :try_start_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NO_MASTER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 309
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_2
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1

    .line 312
    :cond_0
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_3
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_1

    .line 313
    :try_start_4
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NO_USER_ID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 314
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v1

    .line 317
    :cond_1
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 318
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v2
    :try_end_5
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    and-int/2addr v2, v15

    if-eq v2, v15, :cond_2

    .line 319
    :try_start_6
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NO_CERTIFY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 320
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_6
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v1

    .line 323
    :cond_2
    :try_start_7
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v2
    :try_end_7
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v2, :cond_3

    .line 324
    :try_start_8
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_NULL_EXPIRY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 325
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_8
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    return-object v1

    .line 328
    :cond_3
    :try_start_9
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/16 v3, 0x1e

    const/16 v4, 0xa

    .line 330
    invoke-direct {v11, v4, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 331
    invoke-direct {v11, v1, v2, v12, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->createKey(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;Ljava/util/Date;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPKeyPair;

    move-result-object v3

    .line 332
    invoke-direct/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPop()V
    :try_end_9
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    if-nez v3, :cond_4

    .line 336
    :try_start_a
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_a
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    return-object v1

    :cond_4
    const v5, 0x7f110bf8

    const/16 v6, 0x28

    .line 339
    :try_start_b
    invoke-direct {v11, v5, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 342
    new-instance v5, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    .line 343
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    .line 344
    new-instance v5, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/16 v6, 0x9

    const/16 v7, 0x90

    invoke-direct {v5, v6, v4, v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    const-string v4, "BC"

    .line 347
    invoke-virtual {v5, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v21

    .line 349
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    .line 350
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v19

    .line 351
    new-instance v4, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v17

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v18

    const/16 v20, 0x1

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    .line 354
    new-instance v3, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    .line 355
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getEncoded()[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v6}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 358
    invoke-static/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildUpon(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v5

    .line 359
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddSubKeys()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v8

    const/16 v5, 0x32

    const/16 v6, 0x64

    .line 362
    invoke-direct {v11, v5, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->subProgressPush(II)V

    .line 363
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v6, ""

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v7

    .line 364
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v5

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_b
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object v1, v11

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-wide/from16 v5, v16

    move-object v9, v12

    const/16 v16, 0x1

    move/from16 v10, v16

    :try_start_c
    invoke-direct/range {v1 .. v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->internal(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v1
    :try_end_c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    const/16 v16, 0x1

    :goto_0
    move-object v1, v0

    const/4 v10, 0x1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v2, "io error encoding key"

    .line 371
    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    .line 367
    :goto_1
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CR_ERROR_INTERNAL_PGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12, v2, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const-string v2, "pgp error encoding key"

    .line 368
    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v1, v15, v12, v14}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v1

    const-string v24, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->createSecretKeyRing(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public modifyKeyRingPassphrase(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    .line 1248
    new-instance v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 1251
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_6

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1257
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v9, [Ljava/lang/Object;

    .line 1258
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1257
    invoke-virtual {v6, v0, v8, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const v0, 0x7f110bf7

    .line 1260
    invoke-direct {v10, v0, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1263
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v11

    .line 1265
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    .line 1267
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getFingerprint()[B

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getFingerprint()[B

    move-result-object v2

    .line 1268
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v3

    .line 1267
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 1274
    :cond_1
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->firstNonDummySecretKeyID(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1276
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_ALL_KEYS_STRIPPED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1277
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v9, v6, v7}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 1280
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->hasPassphraseForSubkey(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1281
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_REQUIRE_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, p0, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1283
    new-instance p0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    .line 1284
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    .line 1285
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v11

    .line 1283
    invoke-static {v0, v1, v2, v3, v11}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v11

    invoke-direct {p0, v6, v11, v12}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object p0

    :cond_3
    const v11, 0x7f110c15

    const/16 v2, 0x32

    .line 1287
    invoke-direct {v10, v11, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1288
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v5, 0x2

    .line 1292
    :try_start_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    .line 1293
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getNewPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    move-object v4, v6

    .line 1292
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->applyNewPassphrase(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v11

    if-nez v11, :cond_4

    .line 1296
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v9, v6, v7}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :cond_4
    const v12, 0x7f110c00

    const/16 p0, 0x64

    .line 1303
    invoke-direct {v10, v12, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 1304
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v12, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1305
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    new-instance p0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {p0, v11}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    invoke-direct {v12, v8, v6, p0}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v12

    .line 1299
    :catch_0
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    const-string v12, "Failed to build encryptor/decryptor!"

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1269
    :cond_5
    :goto_0
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_FINGERPRINT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1270
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v9, v6, v7}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 1253
    :cond_6
    :goto_1
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_KEYID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v11, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1254
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v9, v6, v7}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->modifyKeyRingPassphrase(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public modifySecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    .line 399
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 413
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 414
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 413
    invoke-virtual {v8, v0, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const v0, 0x7f110bf7

    .line 416
    invoke-direct {v10, v0, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->progress(II)V

    .line 419
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 425
    :cond_0
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v3

    .line 426
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v4

    .line 429
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getFingerprint()[B

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getFingerprint()[B

    move-result-object v0

    .line 430
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v5

    .line 429
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 435
    :cond_1
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isParcelEmpty(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_NOOP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 437
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v1, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 440
    :cond_2
    invoke-direct {v10, v12, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->parseSecurityTokenSerialNumberIntoSubkeyChanges(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v7

    .line 442
    invoke-direct {v10, v11, v7, v8, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->checkCapabilitiesAreUnique(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 443
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v1, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 446
    :cond_3
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 447
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_EK_ERROR_DUMMY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 448
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v1, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 451
    :cond_4
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDummy(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isParcelRestrictedOnly(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    .line 457
    :cond_5
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->isDivertToCard(Lorg/bouncycastle/openpgp/PGPSecretKey;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->hasPassphraseForSubkey(J)Z

    move-result p0

    if-nez p0, :cond_6

    .line 458
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_REQUIRE_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 459
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    .line 460
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    .line 461
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object p0

    .line 459
    invoke-static {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object p0

    invoke-direct {v11, v8, p0, v12}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v11

    .line 466
    :cond_6
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    .line 467
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->readKeyFlags(Lorg/bouncycastle/openpgp/PGPPublicKey;)I

    move-result p0

    or-int/2addr p0, v1

    .line 468
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getExpiryTime()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 469
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v10

    move-object v1, v3

    move-object v2, v4

    move v3, p0

    move-wide v4, v5

    move-object v6, v12

    .line 471
    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->internal(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;IJLorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v11

    return-object v11

    .line 452
    :cond_8
    :goto_2
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_RESTRICTED_MODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v11, 0x2

    .line 453
    invoke-direct {v10, v3, v7, v8, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->internalRestricted(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v11

    return-object v11

    .line 431
    :cond_9
    :goto_3
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_FINGERPRINT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 432
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v1, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    .line 420
    :cond_a
    :goto_4
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MF_ERROR_KEYID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 421
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    invoke-direct {v11, v1, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v11

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;--->modifySecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
