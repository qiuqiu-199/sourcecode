.class public Lorg/sufficientlysecure/keychain/operations/CertifyOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "CertifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;",
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

    .line 68
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 70
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/CertifyOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;
    .locals 25

    move-object/16 v22, p0

    move-object/16 v23, p1

    move-object/16 v24, p2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    .line 77
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 78
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 82
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getMasterKeyId()J

    move-result-wide v7

    const/4 v12, 0x2

    const/4 v13, 0x1

    .line 85
    :try_start_0
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_MASTER_FETCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 88
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/CertifyOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v3, v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    .line 117
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x2

    goto/16 :goto_7

    :pswitch_0
    move-object v2, v14

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v2, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_0

    .line 93
    :try_start_1
    invoke-virtual {v0, v7, v8, v7, v8}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    :catch_0
    :cond_0
    if-nez v2, :cond_1

    .line 100
    :try_start_2
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    .line 101
    invoke-static {v7, v8, v7, v8, v14}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    invoke-direct {v2, v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v2

    .line 122
    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 123
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getMasterKeyId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v15

    .line 126
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 127
    invoke-virtual {v15, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 130
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-direct {v1, v13, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v1

    .line 140
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_CERTIFYING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 146
    new-instance v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;

    .line 147
    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v4

    move-object v3, v2

    move-wide v5, v7

    invoke-direct/range {v3 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;-><init>(Ljava/util/Date;JJ)V

    .line 150
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getCertifyActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x3

    if-eqz v3, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    .line 153
    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->checkCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 155
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-direct {v1, v12, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 160
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getMasterKeyId()J

    move-result-wide v3

    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getMasterKeyId()J

    move-result-wide v17

    cmp-long v5, v3, v17

    if-nez v5, :cond_4

    .line 161
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_SELF:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v3, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 166
    :cond_4
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 167
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getMasterKeyId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v4

    .line 169
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;-><init>()V

    const/16 v17, 0x2

    .line 171
    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v18

    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v19
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v2

    move-object v2, v3

    move-object v3, v15

    move-object v14, v5

    move-object v5, v10

    move-object/from16 v20, v6

    move/from16 v6, v17

    const/4 v12, 0x3

    move-object/from16 v7, v20

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    move-object v11, v9

    move-object/from16 v9, v19

    .line 170
    :try_start_4
    invoke-virtual/range {v2 .. v9}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;->certify(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;Ljava/util/Map;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->success()Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->nfcInputRequired()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 178
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->getRequiredInput()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v2

    .line 179
    invoke-virtual {v14, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V

    goto :goto_2

    .line 183
    :cond_6
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->getCertifiedRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-object v14, v2

    move-object/from16 v17, v8

    move-object v11, v9

    const/4 v12, 0x3

    :catch_2
    add-int/lit8 v16, v16, 0x1

    .line 187
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_WARN_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v2, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_2
    move-object v9, v11

    move-object v2, v14

    move-object/from16 v8, v17

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_7
    move-object v14, v2

    move-object v11, v9

    const/4 v12, 0x3

    .line 192
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 193
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_NFC_RETURN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 194
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    invoke-direct {v2, v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v2

    .line 197
    :cond_8
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_SAVING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 200
    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->checkCancelled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 201
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 202
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 207
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getParcelableKeyServer()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 208
    new-instance v14, Lorg/sufficientlysecure/keychain/operations/UploadOperation;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v5, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    .line 212
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 215
    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->checkCancelled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 216
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 217
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x2

    move-object v1, v8

    move-object v3, v10

    move/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V

    return-object v8

    .line 221
    :cond_b
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_SAVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v8, v13, [Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    const/4 v9, 0x2

    .line 221
    invoke-virtual {v10, v5, v9, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 224
    iget-object v5, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->clearLog()V

    .line 225
    iget-object v5, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v5

    if-eqz v14, :cond_d

    .line 229
    invoke-virtual/range {v23 .. v23}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->getParcelableKeyServer()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v8

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v11

    .line 228
    invoke-static {v8, v11, v12}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->createWithKeyId(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;J)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v8

    .line 230
    invoke-virtual {v14, v8, v1}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->execute(Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    move-result-object v8

    .line 231
    invoke-virtual {v10, v8, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 233
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->success()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 234
    iget-object v8, v0, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-virtual {v8, v11, v12, v3}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->renewKeyLastUpdatedTime(JZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 242
    :cond_d
    :goto_5
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x2

    const/4 v8, 0x3

    goto :goto_6

    .line 245
    :cond_e
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_WARN_SAVE_FAILED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v8, 0x3

    invoke-virtual {v10, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v3, 0x2

    .line 248
    :goto_6
    invoke-virtual {v10, v5, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_f
    if-nez v4, :cond_10

    .line 252
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_NOTHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 253
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x1

    move-object v1, v8

    move-object v3, v10

    move/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V

    return-object v8

    .line 258
    :cond_10
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->requestContactsSync()V

    .line 260
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    if-eqz v7, :cond_11

    .line 262
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x4

    move-object v1, v8

    move-object v3, v10

    move/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V

    return-object v8

    .line 265
    :cond_11
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x0

    move-object v1, v8

    move-object v3, v10

    move/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V

    return-object v8

    .line 117
    :goto_7
    :try_start_5
    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    :try_start_6
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_6
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v1

    .line 136
    :catch_3
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_MASTER_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x2

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 137
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :catch_4
    const/4 v2, 0x2

    :catch_5
    const/4 v3, 0x1

    .line 133
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 134
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-direct {v1, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/CertifyOperation;--->execute(Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 63
    check-cast p1, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;->execute(Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    move-result-object p1

    return-object p1
.end method
