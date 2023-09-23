.class public Lorg/sufficientlysecure/keychain/operations/DeleteOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "DeleteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;",
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

    .line 49
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/DeleteOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onlyDeleteKey([JZ)Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move/16 v13, p2

    .line 65
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 67
    array-length v1, v12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 68
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_ERROR_EMPTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 69
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    invoke-direct {v12, v2, v0, v3, v3}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V

    return-object v12

    :cond_0
    if-eqz v13, :cond_1

    .line 72
    array-length v1, v12

    if-le v1, v2, :cond_1

    .line 73
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_ERROR_MULTI_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v12, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 74
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    invoke-direct {v12, v2, v0, v3, v3}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V

    return-object v12

    .line 77
    :cond_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v2, [Ljava/lang/Object;

    array-length v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 81
    array-length v1, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-wide v7, v12, v4

    .line 82
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->checkCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    .line 86
    :cond_2
    iget-object v9, v11, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v9, v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->deleteKeyRing(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 88
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v3

    invoke-virtual {v0, v9, v2, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    :cond_3
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_KEY_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v3

    invoke-virtual {v0, v9, v2, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v13, :cond_5

    if-lez v5, :cond_5

    .line 97
    iget-object v13, v11, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    aget-wide v7, v12, v3

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iget-object v4, v11, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    .line 97
    invoke-virtual {v13, v12, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->updateTrustDb(Ljava/util/List;Lorg/sufficientlysecure/keychain/pgp/Progressable;)Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;

    move-result-object v12

    .line 99
    invoke-virtual {v0, v12, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    :cond_5
    if-lez v5, :cond_6

    .line 105
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->requestContactsSync()V

    .line 107
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v13, v3

    invoke-virtual {v0, v12, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    :cond_6
    if-lez v6, :cond_7

    .line 110
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v3

    invoke-virtual {v0, v12, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v12, 0x4

    if-nez v5, :cond_8

    const/4 v12, 0x5

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 117
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v13, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    or-int/lit8 v12, v12, 0x2

    .line 121
    :cond_9
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    invoke-direct {v13, v12, v0, v5, v6}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V

    return-object v13

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/DeleteOperation;--->onlyDeleteKey([JZ)Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 46
    check-cast p1, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->execute(Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 57
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->getMasterKeyIds()[J

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->isDeleteSecret()Z

    move-result v1

    .line 60
    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;->onlyDeleteKey([JZ)Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/DeleteOperation;--->execute(Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
