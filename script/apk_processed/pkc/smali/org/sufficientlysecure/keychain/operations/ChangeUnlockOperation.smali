.class public Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "ChangeUnlockOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;",
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

    .line 42
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 39
    check-cast p1, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->execute(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 48
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v12, :cond_4

    .line 50
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 58
    :cond_0
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;

    new-instance v5, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v6, v11, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v7, 0x46

    const/16 v8, 0x64

    invoke-direct {v5, v6, v2, v7, v8}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 62
    :try_start_0
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_FETCHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v6, v3, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 62
    invoke-virtual {v0, v5, v3, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 65
    iget-object v5, v11, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 66
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v5

    .line 67
    invoke-virtual {v4, v5, v13, v12}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->modifyKeyRingPassphrase(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v12

    .line 69
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->isPending()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 71
    invoke-virtual {v0, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 72
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v13, v0, v12}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    .line 80
    :cond_1
    invoke-virtual {v0, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 82
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->success()Z

    move-result v13

    if-nez v13, :cond_2

    .line 84
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v12, v3, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    .line 88
    :cond_2
    iget-object v13, v11, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v13}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setPreventCancel()V

    .line 91
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->getRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v12

    const v13, 0x7f110c25

    const/16 v4, 0x50

    .line 93
    invoke-virtual {v11, v13, v4, v8}, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->updateProgress(III)V

    .line 94
    iget-object v13, v11, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v13, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v13

    .line 95
    invoke-virtual {v0, v13, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 98
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v13

    if-nez v13, :cond_3

    .line 99
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v12, v3, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    :cond_3
    const v13, 0x7f110c00

    .line 102
    invoke-virtual {v11, v13, v8, v8}, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;->updateProgress(III)V

    .line 103
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v13, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 104
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v13, v2, v0, v12}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v13

    .line 75
    :catch_0
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_ERROR_KEY_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v13, 0x2

    invoke-virtual {v0, v12, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 76
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v12, v3, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    .line 51
    :cond_4
    :goto_0
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_ERROR_NO_PARCEL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 52
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v12, v3, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v12

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;--->execute(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
