.class public Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "KeySyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_STALE_THRESHOLD_MILLIS:J

.field private static final ORBOT_CIRCUIT_TIMEOUT_SECONDS:I


# instance fields
.field private final keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

.field private final preferences:Lorg/sufficientlysecure/keychain/util/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->KEY_STALE_THRESHOLD_MILLIS:J

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->ORBOT_CIRCUIT_TIMEOUT_SECONDS:I

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 40
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 42
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    .line 43
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->preferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private directUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;",
            "Z)",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move/16 p0, p3

    const-string v0, "Starting normal update"

    const/4 v1, 0x0

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 84
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->preferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    .line 85
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    invoke-static {v6, v1, p0}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v6

    .line 84
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->execute(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v6

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;--->directUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private fingerprintListToParcelableKeyRings(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "Keyserver sync: Updating %s"

    const/4 v3, 0x1

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 75
    invoke-static {v1, v2, v2, v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;--->fingerprintListToParcelableKeyRings(Ljava/util/List;)Ljava/util/List;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private staggeredUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;",
            ")",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    move-object/16 v14, p2

    const-string v0, "Starting staggered update"

    const/4 v1, 0x0

    .line 100
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;

    .line 106
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;-><init>(ILorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 112
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 114
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    div-int v8, v1, v8

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 115
    sget v8, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->ORBOT_CIRCUIT_TIMEOUT_SECONDS:I

    if-lt v7, v8, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    sget v7, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->ORBOT_CIRCUIT_TIMEOUT_SECONDS:I

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget v10, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->ORBOT_CIRCUIT_TIMEOUT_SECONDS:I

    add-int/2addr v10, v4

    .line 119
    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v7, v8

    :goto_1
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_1
    const-string v8, "Updating key with a wait time of %d seconds"

    .line 127
    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    .line 129
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->checkCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    new-instance v14, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v14}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    invoke-direct {v13, v9, v14}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v13

    .line 141
    :cond_2
    new-instance v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    iget-object v8, v12, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mContext:Landroid/content/Context;

    iget-object v9, v12, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    iget-object v10, v12, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v8, v9, v3, v10}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v8, v12, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->preferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    .line 146
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v8

    .line 144
    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v7

    .line 143
    invoke-virtual {v6, v7, v14}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->execute(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isPending()Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    .line 153
    :cond_3
    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->accumulateKeyImport(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v7, "Exception during sleep between key updates"

    .line 131
    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :cond_4
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->getConsolidatedResult()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v13

    return-object v13

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;--->staggeredUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;->getRefreshAll()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sget-wide v2, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->KEY_STALE_THRESHOLD_MILLIS:J

    :goto_0
    const/4 v8, 0x0

    sub-long v4, v0, v2

    .line 50
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-virtual {v8, v4, v5, v0}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getFingerprintsForKeysOlderThan(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v8

    .line 52
    invoke-direct {v6, v8}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->fingerprintListToParcelableKeyRings(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 54
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->checkCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    const/4 v8, 0x2

    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    invoke-direct {v7, v8, v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v7

    .line 59
    :cond_1
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    .line 60
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;->getRefreshAll()Z

    move-result v7

    if-nez v7, :cond_2

    .line 63
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->preferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-direct {v6, v8, v0}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->staggeredUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v7

    goto :goto_1

    .line 66
    :cond_2
    invoke-direct {v6, v8, v0, v7}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->directUpdate(Ljava/util/List;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Z)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v7

    :goto_1
    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;--->execute(Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 27
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->execute(Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object p1

    return-object p1
.end method
