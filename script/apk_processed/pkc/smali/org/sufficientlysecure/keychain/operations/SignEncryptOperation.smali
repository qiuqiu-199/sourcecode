.class public Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "SignEncryptOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 56
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 52
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;
    .locals 28

    move-object/16 v25, p0

    move-object/16 v26, p1

    move-object/16 v27, p2

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    .line 63
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 64
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_SE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 66
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getInputUris()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 67
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getOutputUris()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 71
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    .line 76
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->checkCancelled()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_1

    .line 77
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 78
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-direct {v1, v13, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;)V

    return-object v1

    .line 81
    :cond_1
    new-instance v12, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;

    iget-object v14, v0, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    new-instance v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v13, v0, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    mul-int/lit8 v16, v10, 0x64

    move-object/from16 v17, v11

    div-int v11, v16, v8

    add-int/2addr v10, v7

    mul-int/lit8 v16, v10, 0x64

    div-int v7, v16, v8

    move/from16 v18, v8

    const/16 v8, 0x64

    invoke-direct {v4, v13, v11, v7, v8}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    iget-object v7, v0, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v14, v15, v4, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz v6, :cond_2

    .line 86
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 85
    invoke-static {v4, v7, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->createForBytes(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;[B)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;

    move-result-object v4

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 88
    invoke-static {v4, v7, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->createForInputUri(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;

    move-result-object v4

    .line 92
    :goto_2
    invoke-virtual {v12, v4, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v4

    .line 93
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    .line 94
    invoke-virtual {v2, v4, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 96
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->isPending()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 97
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v4

    .line 99
    iget-object v7, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v8, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v7, v8, :cond_3

    .line 100
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-direct {v3, v2, v4, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v3

    :cond_3
    if-nez v17, :cond_4

    .line 103
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;

    iget-object v8, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    .line 104
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v24}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;-><init>(Ljava/util/Date;JJ)V

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    .line 106
    :goto_3
    invoke-virtual {v7, v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V

    move-object v11, v7

    goto :goto_4

    .line 107
    :cond_5
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->success()Z

    move-result v4

    if-nez v4, :cond_6

    .line 108
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;)V

    return-object v1

    :cond_6
    move-object/from16 v11, v17

    .line 110
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v11, :cond_7

    .line 112
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 113
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v4

    invoke-direct {v3, v2, v4, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v3

    .line 116
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 117
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Got outputs left but no inputs. This is a programming error, please report!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 120
    :cond_8
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_SE_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 121
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    .line 122
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getOutputBytes()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v2, v9, v3}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;[B)V

    return-object v1

    :cond_9
    move/from16 v8, v18

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;--->execute(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
