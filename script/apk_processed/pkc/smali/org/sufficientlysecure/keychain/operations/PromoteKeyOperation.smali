.class public Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "PromoteKeyOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 54
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static naiveArraySearch(Ljava/util/List;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)Z"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 134
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;--->naiveArraySearch(Ljava/util/List;[B)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 51
    check-cast p1, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->execute(Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    .line 62
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 63
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 70
    :try_start_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_FETCHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v3, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getMasterKeyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 70
    invoke-virtual {v13, v4, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 72
    iget-object v4, v11, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 73
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v4

    .line 75
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getFingerprints()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    .line 77
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_ALL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v6, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 81
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v8

    .line 83
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getFingerprint()[B

    move-result-object v7

    invoke-static {v5, v7}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->naiveArraySearch(Ljava/util/List;[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_SUBKEY_MATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v1

    invoke-virtual {v13, v7, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_1
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_SUBKEY_NOMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v1

    invoke-virtual {v13, v7, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getCardAid()[B

    move-result-object v12

    invoke-virtual {v4, v12, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->createDivertSecretRing([BLjava/util/List;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v12
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v12, :cond_3

    .line 103
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-direct {v12, v3, v13, v2}, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    .line 107
    :cond_3
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->checkCancelled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v12, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 109
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-direct {v12, v0, v13, v2}, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    .line 113
    :cond_4
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->setPreventCancel()V

    const v0, 0x7f110c25

    const/16 v4, 0x50

    const/16 v5, 0x64

    .line 116
    invoke-virtual {v11, v0, v4, v5}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->updateProgress(III)V

    .line 117
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v0, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v0

    .line 118
    invoke-virtual {v13, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 121
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-direct {v12, v3, v13, v2}, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    :cond_5
    const v0, 0x7f110c00

    .line 125
    invoke-virtual {v11, v0, v5, v5}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;->updateProgress(III)V

    .line 127
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 128
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v13, v12}, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v0

    .line 95
    :catch_0
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PR_ERROR_KEY_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v12, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 96
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-direct {v12, v3, v13, v2}, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;--->execute(Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
