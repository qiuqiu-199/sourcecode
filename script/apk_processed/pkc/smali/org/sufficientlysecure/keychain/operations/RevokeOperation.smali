.class public Lorg/sufficientlysecure/keychain/operations/RevokeOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "RevokeOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;",
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

    .line 40
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/RevokeOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 37
    check-cast p1, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->execute(Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    .line 49
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withNoCachePassphrase()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v12

    .line 51
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->getMasterKeyId()J

    move-result-wide v0

    .line 53
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 54
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 54
    invoke-virtual {v2, v3, v7, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 58
    :try_start_0
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 60
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_REVOKE_ERROR_KEY_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 61
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-direct {v11, v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V

    return-object v11

    .line 65
    :cond_0
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/RevokeOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    iget-object v6, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v6, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_3

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->isShouldUpload()Z

    move-result v5

    .line 76
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v11

    .line 75
    invoke-virtual {v3, v5, v4, v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setUpdateOptions(ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    .line 78
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addRevokeSubkey(J)V

    .line 80
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;

    iget-object v5, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mContext:Landroid/content/Context;

    iget-object v6, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    iget-object v8, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v9, v10, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v5, v6, v8, v9}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 82
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v3

    .line 81
    invoke-virtual {v11, v3, v12}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->execute(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    move-result-object v11

    .line 84
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->isPending()Z

    move-result v12

    if-eqz v12, :cond_1

    return-object v11

    .line 88
    :cond_1
    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 90
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->success()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 91
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_REVOKE_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 92
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-direct {v11, v7, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V

    return-object v11

    .line 94
    :cond_2
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_REVOKE_ERROR_KEY_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 95
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-direct {v11, v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V

    return-object v11

    .line 67
    :cond_3
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_EK_ERROR_DUMMY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 68
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-direct {v11, v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v11

    const-string v12, "could not find key to revoke"

    .line 99
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v11, v12, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_REVOKE_ERROR_KEY_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 101
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-direct {v11, v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V

    return-object v11

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/RevokeOperation;--->execute(Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
