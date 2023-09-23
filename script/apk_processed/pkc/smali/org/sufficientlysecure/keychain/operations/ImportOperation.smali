.class public Lorg/sufficientlysecure/keychain/operations/ImportOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.source "ImportOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CACHE_FILE_NAME:Ljava/lang/String; = "key_import.pcl"

.field private static final MAX_THREADS:I = 0xa


# instance fields
.field private facebookServer:Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

.field private final keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

.field private keybaseServer:Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 99
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 101
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 106
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 108
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/operations/ImportOperation;Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p7}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object p0

    return-object p0
.end method

.method private fetchKeyFromFacebook(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    .line 445
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->facebookServer:Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->getInstance()Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    move-result-object v0

    iput-object v0, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->facebookServer:Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 450
    :try_start_0
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_FACEBOOK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v9, v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 451
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->facebookServer:Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v8}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 452
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 455
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYSERVER_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 457
    :cond_1
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_DECODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :catch_0
    move-exception v8

    const-string p0, "query failed"

    .line 463
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, p0, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    invoke-virtual {v9, p0, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v8, 0x0

    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->fetchKeyFromFacebook(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private fetchKeyFromInternet(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v6, :cond_1

    .line 344
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 348
    :try_start_0
    invoke-direct {v5, v6, v7, p0, p1}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->fetchKeyFromKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v6
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v4, v3

    move-object v3, v6

    move-object v6, v4

    :goto_1
    if-eqz v6, :cond_2

    move-object p2, v6

    .line 358
    :cond_2
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v2, 0x3

    if-eqz v6, :cond_4

    .line 360
    invoke-direct {v5, v7, p0, p1}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->fetchKeyFromKeybase(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 362
    invoke-direct {v5, p0, v2, p2, v6}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mergeKeysOrUseEither(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object p2

    .line 366
    :cond_4
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 368
    invoke-direct {v5, v7, p0, p1}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->fetchKeyFromFacebook(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 370
    invoke-direct {v5, p0, v2, p2, v6}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mergeKeysOrUseEither(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object p2

    :cond_6
    if-nez p2, :cond_7

    if-eqz v3, :cond_7

    .line 375
    throw v3

    :cond_7
    return-object p2

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->fetchKeyFromInternet(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private fetchKeyFromKeybase(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    .line 419
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keybaseServer:Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;->getInstance()Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    move-result-object v0

    iput-object v0, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keybaseServer:Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 424
    :try_start_0
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYBASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v9, v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 425
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keybaseServer:Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v8}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 426
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 429
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYSERVER_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 431
    :cond_1
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_DECODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :catch_0
    move-exception v8

    const-string p0, "query failed"

    .line 437
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, p0, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    invoke-virtual {v9, p0, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v8, 0x0

    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->fetchKeyFromKeybase(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private fetchKeyFromKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException;
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 386
    :try_start_0
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v9, v4, v1

    invoke-virtual {p0, v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 388
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    move-result-object v9

    .line 391
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object p1

    invoke-static {p1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 393
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    .line 394
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 393
    invoke-virtual {p0, v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1, v10}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_0

    .line 397
    :cond_0
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1, v10}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 400
    :goto_0
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 402
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_KEYSERVER_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    .line 404
    :cond_1
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_DECODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v9

    :catch_0
    move-exception v9

    const-string v10, "query failed"

    .line 411
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v9, v10, p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_KEYSERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v1

    invoke-virtual {p0, v10, v0, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v9, 0x0

    return-object v9

    :catch_1
    move-exception v9

    .line 409
    throw v9

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->fetchKeyFromKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mergeKeysOrUseEither(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    if-nez p0, :cond_0

    return-object p1

    .line 476
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_MERGE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v3, v3, 0x1

    .line 477
    invoke-virtual {p0, p1, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 482
    :cond_1
    sget-object p1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_MERGE_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, p1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object p0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->mergeKeysOrUseEither(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private multiThreadedKeyImport(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "ZZ)",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v13, p0

    move-object/16 v14, p1

    move-object/16 v15, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    const-string v1, "Multi-threaded key import starting"

    const/4 v2, 0x0

    .line 526
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 529
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    .line 531
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0xa

    const-wide/16 v7, 0x1e

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 533
    new-instance v4, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v4, v11}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 536
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 540
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;

    move-object v6, v5

    move-object v7, v13

    move-object v9, v15

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v6 .. v12}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;-><init>(Lorg/sufficientlysecure/keychain/operations/ImportOperation;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)V

    .line 558
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 561
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;

    move-object v5, v13

    iget-object v6, v5, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v1, v3, v6}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;-><init>(ILorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 562
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->isImportFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 564
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->accumulateKeyImport(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v6, "A key could not be imported during multi-threaded import"

    .line 566
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    instance-of v6, v3, Ljava/util/concurrent/ExecutionException;

    if-eqz v6, :cond_1

    .line 573
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 577
    :cond_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->getConsolidatedResult()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v1

    return-object v1

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->multiThreadedKeyImport(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;I",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/pgp/Progressable;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "ZZ)",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v24, p0

    move-object/16 v25, p1

    move/16 v26, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move-object/from16 v7, v24

    move-object/from16 v8, p1

    move/from16 v9, p3

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    const v1, 0x7f110c10

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v8, v1, v10, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    .line 157
    :cond_0
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 158
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v13, v1, v10, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    if-eqz v25, :cond_1b

    .line 161
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_15

    .line 166
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 175
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_d

    .line 176
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 179
    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->checkCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v10, v5

    move-object v11, v6

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_2
    const/16 v21, 0x0

    .line 191
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getBytes()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_3

    .line 192
    :try_start_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v22, v3

    move-object v10, v5

    move-object v11, v6

    const/4 v12, 0x2

    const/16 v21, 0x0

    move-object v6, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_9

    :cond_3
    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    const/4 v12, 0x2

    move-object v4, v13

    move-object v10, v5

    move-object/from16 v5, v22

    move-object v11, v6

    move-object/from16 v6, v21

    .line 195
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->fetchKeyFromInternet(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v1
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_5

    .line 212
    :try_start_3
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_KEYSERVER_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    :cond_4
    move-object v6, v1

    const/16 v21, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v1

    const/16 v21, 0x0

    :goto_1
    if-nez v6, :cond_6

    .line 221
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 229
    :cond_6
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    :try_start_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->clearLog()V

    .line 231
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_7

    .line 232
    :try_start_5
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v1, v6, v10, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/ArrayList;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v22, v5

    move-object v12, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_7

    .line 234
    :cond_7
    :try_start_6
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-object/from16 v2, v22

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v6

    move-object v4, v10

    move-object/from16 v22, v5

    move/from16 v5, p4

    move-object v12, v6

    move v6, v9

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BLjava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v1

    .line 237
    :goto_2
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 238
    :try_start_8
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v18, v18, 0x1

    :cond_8
    :goto_3
    const/4 v2, 0x2

    goto :goto_5

    .line 241
    :cond_9
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->updated()Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v17, v17, 0x1

    .line 243
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 246
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 247
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_b
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    if-nez v9, :cond_8

    if-eqz v21, :cond_8

    .line 253
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->renewKeyLastUpdatedTime(JZ)V

    goto :goto_3

    .line 257
    :goto_5
    invoke-virtual {v13, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v4, 0x0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v22, v5

    :goto_6
    move-object v1, v0

    .line 237
    :goto_7
    :try_start_9
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-object/from16 v2, v22

    .line 198
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_FETCH_ERROR_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x2

    invoke-virtual {v13, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v19, v19, 0x1

    .line 201
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v1

    if-eqz v1, :cond_c

    .line 203
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    .line 204
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getKeyIdFromFingerprint([B)J

    move-result-wide v3

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v2, v3, v4, v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->renewKeyLastUpdatedTime(JZ)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v10, v5

    move-object v11, v6

    :goto_8
    move-object v1, v0

    :goto_9
    const-string v2, "Encountered bad key on import!"

    const/4 v4, 0x0

    .line 259
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    add-int/lit8 v18, v18, 0x1

    :goto_a
    add-int/lit8 v1, v20, 0x1

    move/from16 v2, v26

    .line 265
    invoke-interface {v8, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(II)V

    move/from16 v20, v1

    :cond_c
    :goto_b
    move-object v5, v10

    move-object v6, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    move-object v10, v5

    move-object v11, v6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_c
    if-nez v9, :cond_e

    .line 272
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 273
    invoke-virtual/range {v24 .. v24}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->setPreventCancel()V

    .line 274
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    monitor-enter v2

    .line 275
    :try_start_b
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v5, v15, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->updateTrustDb(Ljava/util/List;Lorg/sufficientlysecure/keychain/pgp/Progressable;)Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;

    move-result-object v5

    const/4 v6, 0x1

    .line 276
    invoke-virtual {v13, v5, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 277
    monitor-exit v2

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 286
    :cond_e
    :goto_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v5, 0x0

    .line 287
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 288
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_f
    if-eqz v1, :cond_10

    .line 293
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    invoke-virtual {v13, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_f

    :cond_10
    const/4 v3, 0x0

    :goto_f
    if-nez v18, :cond_11

    if-nez v16, :cond_11

    if-nez v17, :cond_11

    const/16 v12, 0x41

    goto :goto_10

    :cond_11
    if-lez v16, :cond_12

    or-int/lit8 v3, v3, 0x8

    :cond_12
    if-lez v17, :cond_13

    or-int/lit8 v3, v3, 0x10

    :cond_13
    if-lez v18, :cond_14

    or-int/lit8 v3, v3, 0x20

    if-nez v16, :cond_14

    if-nez v17, :cond_14

    or-int/lit8 v3, v3, 0x1

    .line 314
    :cond_14
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->containsWarnings()Z

    move-result v4

    if-eqz v4, :cond_15

    or-int/lit8 v3, v3, 0x4

    :cond_15
    move v12, v3

    :goto_10
    if-nez v1, :cond_1a

    if-gtz v16, :cond_17

    if-lez v17, :cond_16

    goto :goto_11

    :cond_16
    const/4 v3, 0x1

    goto :goto_12

    :cond_17
    :goto_11
    if-lez v18, :cond_16

    .line 322
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_PARTIAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_14

    :goto_12
    if-gtz v16, :cond_19

    if-lez v17, :cond_18

    goto :goto_13

    .line 326
    :cond_18
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_14

    .line 324
    :cond_19
    :goto_13
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v13, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 330
    :cond_1a
    :goto_14
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    .line 331
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v11, v1

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v19

    move/from16 v17, v18

    move/from16 v18, v3

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v19}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIIII[J)V

    .line 334
    invoke-virtual {v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->setCanonicalizedKeyRings(Ljava/util/ArrayList;)V

    return-object v1

    .line 162
    :cond_1b
    :goto_15
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    const/16 v2, 0x41

    invoke-direct {v1, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private serialKeyRingImport(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "ZZ)",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 123
    :try_start_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->readCache()Lorg/sufficientlysecure/keychain/util/IteratorWithSize;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/util/IteratorWithSize;->getSize()I

    move-result v2

    .line 126
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    move-object v0, v8

    move-object v3, v10

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 130
    :catch_0
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 131
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 p0, 0x1

    new-array p1, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-virtual {v9, v10, p2, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 132
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IMPORT_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array p1, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-virtual {v9, v10, p2, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 134
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-direct {v10, p0, v9}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->serialKeyRingImport(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    .line 490
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyList()Ljava/util/List;

    move-result-object v1

    .line 491
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    .line 492
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->isSkipSave()Z

    move-result v9

    .line 493
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->isForceReinsert()Z

    move-result v8

    if-nez v1, :cond_0

    .line 497
    new-instance v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

    iget-object v11, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mContext:Landroid/content/Context;

    const-string v12, "key_import.pcl"

    invoke-direct {v4, v11, v12}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v10

    move v7, v9

    .line 499
    invoke-direct/range {v3 .. v8}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->serialKeyRingImport(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v11

    goto :goto_1

    .line 502
    :cond_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v11

    if-nez v11, :cond_2

    .line 504
    iget-object v11, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInRequiredState(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 506
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    const/4 v0, 0x0

    .line 507
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    invoke-direct {v11, v0, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v11

    .line 509
    :cond_1
    iget-object v11, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v11

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v11

    :goto_0
    move-object v3, v11

    move-object v0, v10

    move v4, v9

    move v5, v8

    .line 514
    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->multiThreadedKeyImport(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v11

    :goto_1
    if-nez v9, :cond_3

    .line 518
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->requestContactsSync()V

    :cond_3
    return-object v11

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->execute(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 87
    check-cast p1, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->execute(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object p1

    return-object p1
.end method

.method public serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;I",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "ZZ)",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move/16 v10, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 114
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v9

    return-object v9

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/ImportOperation;--->serialKeyRingImport(Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
