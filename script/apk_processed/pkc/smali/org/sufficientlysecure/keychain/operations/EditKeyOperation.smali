.class public Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "EditKeyOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 65
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 67
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;
    .locals 20

    move-object/16 v17, p0

    move-object/16 v18, p1

    move-object/16 v19, p2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    .line 81
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 82
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    .line 85
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_ERROR_NO_PARCEL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 86
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v6, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    .line 90
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 93
    :goto_0
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;

    new-instance v9, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v11, 0xa

    const/16 v12, 0x3c

    const/16 v13, 0x64

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v9, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v9, 0x2

    if-nez v7, :cond_2

    .line 100
    :try_start_0
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_FETCHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v11, v6, [Ljava/lang/Object;

    .line 101
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v5

    .line 100
    invoke-virtual {v3, v10, v6, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 102
    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 103
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v10

    .line 105
    invoke-virtual {v8, v10, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->modifySecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v8

    .line 106
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->isPending()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 107
    invoke-virtual {v3, v8, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 108
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    :catch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_ERROR_KEY_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 113
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v6, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    .line 117
    :cond_2
    invoke-virtual {v8, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->createSecretKeyRing(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v8

    .line 122
    :cond_3
    invoke-virtual {v3, v8, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 125
    invoke-virtual/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->checkCancelled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 126
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 127
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v9, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    .line 131
    :cond_4
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->success()Z

    move-result v10

    if-nez v10, :cond_5

    .line 133
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v6, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    .line 137
    :cond_5
    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v10}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setPreventCancel()V

    .line 140
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->getRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v8

    .line 142
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUpload()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 145
    :try_start_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->extractPublicKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v10

    .line 146
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->createWithKeyringBytes(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;[B)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v10

    .line 155
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/UploadOperation;

    iget-object v14, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    new-instance v5, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v6, 0x50

    invoke-direct {v5, v4, v12, v6, v13}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v14, v15, v5, v4}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 157
    invoke-virtual {v11, v10, v2}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->execute(Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    move-result-object v4

    .line 159
    invoke-virtual {v3, v4, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 161
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->isPending()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 162
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V

    return-object v1

    .line 163
    :cond_6
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->success()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUploadAtomic()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRetryUploadOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v1

    .line 148
    :catch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_ERROR_EXTRACTING_PUBLIC_UPLOAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 149
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    :cond_7
    const/4 v2, 0x1

    const v4, 0x7f110c25

    const/16 v5, 0x5a

    .line 170
    invoke-virtual {v0, v4, v5, v13}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->updateProgress(III)V

    .line 171
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v4, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v4

    .line 172
    invoke-virtual {v3, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    if-nez v7, :cond_8

    .line 174
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUpload()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    :cond_8
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUpload()Z

    move-result v1

    invoke-virtual {v2, v5, v6, v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->renewKeyLastUpdatedTime(JZ)V

    .line 179
    :cond_9
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v1

    if-nez v1, :cond_a

    .line 180
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    :cond_a
    const v1, 0x7f110c00

    .line 183
    invoke-virtual {v0, v1, v13, v13}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->updateProgress(III)V

    .line 186
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->requestContactsSync()V

    .line 188
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_ED_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 189
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;--->execute(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 59
    check-cast p1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;->execute(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    move-result-object p1

    return-object p1
.end method
