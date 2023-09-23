.class public Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;
.super Lorg/sufficientlysecure/keychain/daos/KeyRepository;
.source "KeyWritableRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;
    }
.end annotation


# static fields
.field private static final LOG_TYPES_FLAG_MASTER:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

.field private static final LOG_TYPES_FLAG_SUBKEY:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

.field private static final MAX_CACHED_KEY_SIZE:I = 0xc800


# instance fields
.field private autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

.field private final context:Landroid/content/Context;

.field private databaseBatchInteractor:Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;

.field private final databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x10

    .line 140
    new-array v1, v0, [Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XXXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CXXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XEXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CEXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XXSX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CXSX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XESX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CESX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XXXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CXXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XEXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CEXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XXSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CXSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_XESA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_CESA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v17, 0xf

    aput-object v2, v1, v17

    sput-object v1, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->LOG_TYPES_FLAG_MASTER:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    .line 152
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XXXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CXXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XEXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CEXX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XXSX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CXSX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XESX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CESX:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XXXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CXXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XEXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CEXA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v14

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XXSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v15

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CXSA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    aput-object v1, v0, v16

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_XESA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_CESA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->LOG_TYPES_FLAG_SUBKEY:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    return-void

    const-string v18, "M_InsDal"

    const-string v19, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;---><clinit>()V"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 104
    new-instance v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move/16 p4, p7

    move-object/16 p5, p8

    move-object v0, v7

    move-object v1, v9

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    .line 112
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V

    .line 114
    iput-object v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->context:Landroid/content/Context;

    .line 115
    iput-object p2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    .line 116
    iput-object p5, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    .line 117
    new-instance v8, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    iput-object v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseBatchInteractor:Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private buildCertOperations(JILorg/sufficientlysecure/keychain/pgp/WrappedSignature;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 15

    move-object/16 v12, p0

    move-wide/16 v13, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move v1, p0

    int-to-long v3, v1

    .line 1013
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v5

    .line 1014
    invoke-virtual/range {p1 .. p1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual/range {p1 .. p1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getEncoded()[B

    move-result-object v11

    move-wide v1, v13

    move-object/from16 v9, p2

    .line 1013
    invoke-static/range {v1 .. v11}, Lorg/sufficientlysecure/keychain/model/Certification;->create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;Ljava/util/Date;[B)Lorg/sufficientlysecure/keychain/model/Certification;

    move-result-object v1

    .line 1015
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->createInsertCertification(Lorg/sufficientlysecure/keychain/model/Certification;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1017
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->buildCertOperations(JILorg/sufficientlysecure/keychain/pgp/WrappedSignature;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;
    .locals 11

    move-object/16 v8, p0

    .line 90
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    move-result-object v3

    .line 91
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    move-result-object v4

    .line 92
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v5

    .line 93
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    move-result-object v6

    .line 94
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v2

    .line 96
    new-instance v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-object v0, v7

    move-object v1, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getTrustedMasterKeys()Landroid/support/v4/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;",
            ">;"
        }
    .end annotation

    move-object/16 v7, p0

    .line 121
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 123
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 126
    :try_start_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->loadPublicKeyRingData(J)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v4

    new-instance v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    .line 129
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v2

    invoke-direct {v6, v3, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;-><init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error reading secret key data, this should not happen!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->getTrustedMasterKeys()Landroid/support/v4/util/LongSparseArray;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveCanonicalizedPublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Z)I
    .locals 49

    move-object/16 v46, p0

    move-object/16 v47, p1

    move/16 v48, p2

    move-object/from16 v7, v46

    .line 176
    invoke-virtual/range {v47 .. v47}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getMasterKeyId()J

    move-result-wide v5

    .line 177
    invoke-virtual/range {v47 .. v47}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v1

    .line 179
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_PREPARE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 180
    iget v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 184
    :try_start_0
    invoke-virtual/range {v47 .. v47}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 193
    :try_start_1
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_INSERT_KEYRING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 195
    array-length v8, v2

    const v14, 0xc800

    if-ge v8, v14, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 196
    :goto_0
    invoke-static {v5, v6, v8}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->create(J[B)Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    move-result-object v8

    .line 197
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->createInsertKeyRingPublic(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_INSERT_SUBKEYS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 200
    iget v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v8, v4

    iput v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 203
    invoke-virtual/range {v47 .. v47}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v19, 0x8

    if-eqz v8, :cond_f

    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-object/from16 v28, v13

    .line 204
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v12

    cmp-long v9, v12, v5

    if-nez v9, :cond_1

    .line 205
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    :cond_1
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    :goto_2
    new-array v11, v4, [Ljava/lang/Object;

    .line 206
    invoke-static {v12, v13}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    .line 205
    invoke-virtual {v7, v9, v11}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 208
    iget v9, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v9, v4

    iput v9, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 210
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canCertify()Z

    move-result v18

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canEncrypt()Z

    move-result v20

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canSign()Z

    move-result v21

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canAuthenticate()Z

    move-result v22

    cmp-long v9, v5, v12

    const/4 v11, 0x4

    const/16 v16, 0x2

    if-nez v9, :cond_6

    .line 214
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_2

    .line 215
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_FLAGS_UNSPECIFIED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_9

    .line 217
    :cond_2
    sget-object v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->LOG_TYPES_FLAG_MASTER:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    if-eqz v20, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    add-int v16, v18, v16

    if-eqz v21, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    add-int v16, v16, v11

    if-eqz v22, :cond_5

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    add-int v16, v16, v19

    aget-object v9, v9, v16

    invoke-virtual {v7, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_9

    .line 220
    :cond_6
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_7

    .line 221
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_FLAGS_UNSPECIFIED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_9

    .line 223
    :cond_7
    sget-object v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->LOG_TYPES_FLAG_SUBKEY:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    if-eqz v20, :cond_8

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    add-int v16, v18, v16

    if-eqz v21, :cond_9

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    add-int v16, v16, v11

    if-eqz v22, :cond_a

    goto :goto_8

    :cond_a
    const/16 v19, 0x0

    :goto_8
    add-int v16, v16, v19

    aget-object v9, v9, v16

    invoke-virtual {v7, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 227
    :goto_9
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v25

    .line 228
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getExpiryTime()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 230
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isExpired()Z

    move-result v9

    if-eqz v9, :cond_c

    cmp-long v9, v12, v5

    if-nez v9, :cond_b

    .line 231
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_EXPIRED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_a

    :cond_b
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_EXPIRED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    :goto_a
    new-array v12, v4, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v15

    .line 231
    invoke-virtual {v7, v9, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_c
    cmp-long v9, v12, v5

    if-nez v9, :cond_d

    .line 235
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MASTER_EXPIRES:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_b

    :cond_d
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUBKEY_EXPIRES:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    :goto_b
    new-array v12, v4, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v15

    .line 235
    invoke-virtual {v7, v9, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    :cond_e
    :goto_c
    int-to-long v12, v10

    .line 241
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v16

    .line 242
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getAlgorithm()I

    move-result v24

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getFingerprint()[B

    move-result-object v26

    .line 243
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isRevoked()Z

    move-result v29

    sget-object v30, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isSecure()Z

    move-result v31

    move-wide v8, v5

    move/from16 v33, v10

    move-object/from16 v32, v11

    move-wide v10, v12

    move-object/from16 v27, v28

    move-wide/from16 v12, v16

    move-object/from16 v14, v19

    move-object/from16 v15, v23

    move/from16 v16, v24

    move-object/from16 v17, v26

    move/from16 v19, v21

    move/from16 v21, v22

    move/from16 v22, v29

    move-object/from16 v23, v30

    move/from16 v24, v31

    move-object/from16 v26, v32

    .line 241
    invoke-static/range {v8 .. v26}, Lorg/sufficientlysecure/keychain/model/SubKey;->create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZLjava/util/Date;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/model/SubKey;

    move-result-object v8

    .line 244
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->createInsertSubKey(Lorg/sufficientlysecure/keychain/model/SubKey;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v33, 0x1

    .line 247
    iget v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v8, v4

    iput v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, v27

    const v14, 0xc800

    const/4 v15, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x1

    goto/16 :goto_29

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_28

    .line 250
    :cond_f
    :try_start_3
    iget v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v8, v4

    iput v8, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 253
    invoke-direct/range {v46 .. v46}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getTrustedMasterKeys()Landroid/support/v4/util/LongSparseArray;

    move-result-object v8

    .line 257
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 259
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-virtual {v8}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v10, :cond_10

    .line 262
    :try_start_4
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CLASSIFYING_ZERO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    goto :goto_d

    .line 264
    :cond_10
    :try_start_5
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CLASSIFYING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v14, 0x0

    :try_start_6
    aput-object v12, v11, v14

    invoke-virtual {v7, v10, v11}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 266
    :goto_d
    iget v10, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v10, v4

    iput v10, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 267
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getUnorderedRawUserIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v11, :cond_1d

    :try_start_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 268
    invoke-static {v11}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->fromUTF8ByteArrayReplaceBadEncoding([B)Ljava/lang/String;

    move-result-object v12

    .line 269
    new-instance v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x0

    :try_start_8
    invoke-direct {v13, v14}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$1;)V

    .line 270
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v14

    .line 272
    iput-object v12, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->userId:Ljava/lang/String;

    .line 273
    iget-object v4, v14, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    iput-object v4, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->name:Ljava/lang/String;

    .line 274
    iget-object v4, v14, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    iput-object v4, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->email:Ljava/lang/String;

    .line 275
    iget-object v4, v14, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    iput-object v4, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->comment:Ljava/lang/String;

    .line 278
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_PROCESSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v34, v2

    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v2, v16

    invoke-virtual {v7, v4, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 279
    iget v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v2, v14

    iput v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 281
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    .line 282
    invoke-virtual {v1, v11}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getSignaturesForRawId([B)Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    .line 281
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    move-object/from16 v35, v15

    .line 283
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v14

    cmp-long v16, v14, v5

    if-nez v16, :cond_12

    .line 289
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v14

    if-nez v14, :cond_11

    .line 290
    iput-object v12, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfCert:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    .line 291
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isPrimaryUserId()Z

    move-result v12

    iput-boolean v12, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    :goto_10
    move-object/from16 v36, v2

    :goto_11
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    goto/16 :goto_14

    .line 293
    :cond_11
    iput-object v12, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    .line 294
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_REVOKED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_10

    :cond_12
    move-object/from16 v36, v2

    .line 301
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 302
    invoke-static {v5, v6, v14, v15}, Lorg/sufficientlysecure/keychain/model/KeySignature;->create(JJ)Lorg/sufficientlysecure/keychain/model/KeySignature;

    move-result-object v2

    .line 303
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->createInsertSignerKey(Lorg/sufficientlysecure/keychain/model/KeySignature;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_13
    invoke-virtual {v8, v14, v15}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_12

    :cond_14
    const/4 v2, 0x0

    :goto_12
    if-nez v2, :cond_15

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, v35

    move-object/from16 v2, v36

    goto :goto_f

    .line 314
    :cond_15
    invoke-virtual {v8, v14, v15}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 317
    :try_start_9
    invoke-virtual {v12, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 319
    invoke-virtual {v12, v1, v11}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;[B)Z

    move-result v14

    if-nez v14, :cond_16

    .line 320
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_11

    .line 324
    :cond_16
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v14

    if-eqz v14, :cond_17

    sget-object v14, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_GOOD_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_13

    :cond_17
    sget-object v14, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_GOOD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_9
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_13
    move-object/from16 v37, v9

    const/4 v15, 0x1

    :try_start_a
    new-array v9, v15, [Ljava/lang/Object;
    :try_end_a
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    .line 327
    :try_start_b
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHexShort(J)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 324
    invoke-virtual {v7, v14, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 331
    iget-object v2, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v2, :cond_1a

    .line 334
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 335
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_14

    .line 339
    :cond_18
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevokable()Z

    move-result v2

    if-nez v2, :cond_19

    .line 340
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_NONREVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_14

    .line 343
    :cond_19
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_NEW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 345
    :cond_1a
    iget-object v2, v13, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10, v12}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_b
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_14

    :catch_1
    move-object/from16 v37, v9

    :catch_2
    move-object/from16 v38, v10

    move-object/from16 v39, v11

    .line 348
    :catch_3
    :try_start_c
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERT_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 349
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 348
    invoke-virtual {v7, v2, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    :goto_14
    move-object/from16 v15, v35

    move-object/from16 v2, v36

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v11, v39

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v35, v15

    if-lez v4, :cond_1c

    .line 355
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_CERTS_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v10, v9

    invoke-virtual {v7, v2, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 357
    :cond_1c
    iget v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v4, 0x1

    const/4 v14, 0x0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x1

    goto/16 :goto_28

    :cond_1d
    move-object/from16 v34, v2

    move-object/from16 v35, v15

    .line 360
    :try_start_d
    iget v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 362
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getUnorderedUserAttributes()Ljava/util/ArrayList;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v4, :cond_1e

    .line 365
    :try_start_e
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CLASSIFYING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 368
    :cond_1e
    :try_start_f
    iget v4, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 369
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v4, :cond_2a

    :try_start_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    .line 371
    new-instance v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;

    const/4 v14, 0x0

    invoke-direct {v9, v14}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$1;)V

    move-object/from16 v15, v35

    .line 372
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    .line 374
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getEncoded()[B

    move-result-object v10

    iput-object v10, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->attributeData:[B

    .line 378
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1f

    .line 383
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_PROCESSING_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_16

    .line 380
    :cond_1f
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_PROCESSING_IMAGE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 386
    :goto_16
    iget v10, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 388
    new-instance v10, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    .line 389
    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getSignaturesForUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Ljava/util/Iterator;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    .line 388
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    move-object/from16 v40, v15

    .line 390
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v14

    cmp-long v13, v14, v5

    if-nez v13, :cond_21

    .line 397
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v13

    if-nez v13, :cond_20

    .line 398
    iput-object v12, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfCert:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    :goto_18
    move-object/from16 v41, v1

    move-object/from16 v43, v2

    move-object/from16 v42, v3

    goto/16 :goto_1b

    .line 400
    :cond_20
    iput-object v12, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    .line 401
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_REVOKED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_18

    .line 408
    :cond_21
    invoke-virtual {v8, v14, v15}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v13

    if-gez v13, :cond_22

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v15, v40

    :goto_19
    const/4 v14, 0x0

    goto :goto_17

    .line 414
    :cond_22
    invoke-virtual {v8, v14, v15}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 417
    :try_start_11
    invoke-virtual {v12, v13}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 419
    invoke-virtual {v12, v1, v4}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 420
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v13}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_18

    .line 424
    :cond_23
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v14

    if-eqz v14, :cond_24

    sget-object v14, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_GOOD_REVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_1a

    :cond_24
    sget-object v14, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_GOOD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_11
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_1a
    move-object/from16 v41, v1

    const/4 v15, 0x1

    :try_start_12
    new-array v1, v15, [Ljava/lang/Object;
    :try_end_12
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v43, v2

    move-object/from16 v42, v3

    .line 427
    :try_start_13
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHexShort(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 424
    invoke-virtual {v7, v14, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 431
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v1, :cond_27

    .line 434
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 435
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_1b

    .line 439
    :cond_25
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevokable()Z

    move-result v1

    if-nez v1, :cond_26

    .line 440
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_NONREVOKE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    goto :goto_1b

    .line 443
    :cond_26
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_NEW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 445
    :cond_27
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v12}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_13
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_1b

    :catch_5
    move-object/from16 v41, v1

    :catch_6
    move-object/from16 v43, v2

    move-object/from16 v42, v3

    .line 448
    :catch_7
    :try_start_14
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERT_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 449
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v3, v12

    .line 448
    invoke-virtual {v7, v1, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    :goto_1b
    move-object/from16 v15, v40

    move-object/from16 v1, v41

    move-object/from16 v3, v42

    move-object/from16 v2, v43

    goto/16 :goto_19

    :cond_28
    move-object/from16 v41, v1

    move-object/from16 v43, v2

    move-object/from16 v42, v3

    move-object/from16 v40, v15

    if-lez v11, :cond_29

    .line 455
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UAT_CERTS_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v7, v1, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_29
    const/4 v4, 0x0

    .line 457
    :goto_1c
    iget v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object/from16 v35, v40

    move-object/from16 v1, v41

    move-object/from16 v3, v42

    move-object/from16 v2, v43

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v42, v3

    move-object/from16 v40, v35

    const/4 v4, 0x0

    .line 460
    :try_start_15
    iget v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 462
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_UID_REORDER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    move-object/from16 v1, v40

    .line 465
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 467
    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 468
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;

    .line 469
    iget-object v8, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v8, :cond_2b

    :try_start_16
    iget-object v8, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object v11, v8

    goto :goto_1e

    :cond_2b
    const/4 v11, 0x0

    .line 470
    :goto_1e
    :try_start_17
    iget-object v12, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->userId:Ljava/lang/String;

    iget-object v13, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->name:Ljava/lang/String;

    iget-object v14, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->email:Ljava/lang/String;

    iget-object v15, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->comment:Ljava/lang/String;

    iget-object v10, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->attributeData:[B

    iget-boolean v8, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    iget-object v9, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v9, :cond_2c

    move/from16 v17, v8

    const/16 v18, 0x1

    goto :goto_1f

    :cond_2c
    move/from16 v17, v8

    const/16 v18, 0x0

    :goto_1f
    move-wide v8, v5

    move-object/from16 v16, v10

    move v10, v2

    const/16 v21, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v8 .. v18}, Lorg/sufficientlysecure/keychain/model/UserPacket;->create(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lorg/sufficientlysecure/keychain/model/UserPacket;

    move-result-object v1

    .line 472
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->createInsertUserPacket(Lorg/sufficientlysecure/keychain/model/UserPacket;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v1

    move-object/from16 v8, v42

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v1, :cond_2d

    .line 475
    iget-object v9, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    sget-object v10, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SELF:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-object v1, v7

    move v12, v2

    move-object v11, v8

    move-object/from16 v8, v34

    move-wide v2, v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    move v4, v12

    move-wide/from16 v44, v5

    move-object v5, v9

    move-object v6, v10

    :try_start_18
    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->buildCertOperations(JILorg/sufficientlysecure/keychain/pgp/WrappedSignature;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2d
    move v12, v2

    move-wide/from16 v44, v5

    move-object v11, v8

    move-object/from16 v8, v34

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 481
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfCert:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-nez v1, :cond_2e

    .line 482
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "User ids MUST be self-certified at this point!!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 485
    :cond_2e
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfCert:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v48, :cond_2f

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    goto :goto_20

    :cond_2f
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SELF:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    :goto_20
    move-object v6, v1

    move-object v1, v7

    move-object v10, v3

    move-wide/from16 v2, v44

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->buildCertOperations(JILorg/sufficientlysecure/keychain/pgp/WrappedSignature;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    .line 489
    :goto_21
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_31

    .line 490
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v15}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    .line 492
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_22

    .line 497
    :cond_30
    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-object v1, v7

    move-wide/from16 v2, v44

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->buildCertOperations(JILorg/sufficientlysecure/keychain/pgp/WrappedSignature;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :goto_22
    add-int/lit8 v15, v15, 0x1

    goto :goto_21

    :cond_31
    :goto_23
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v34, v8

    move-object/from16 v42, v11

    move-object/from16 v1, v22

    move-wide/from16 v5, v44

    const/4 v4, 0x0

    const/16 v20, 0x1

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    goto/16 :goto_27

    :cond_32
    move-wide/from16 v44, v5

    move-object/from16 v8, v34

    move-object/from16 v11, v42

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 507
    iget v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v1, v13

    iput v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 510
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseBatchInteractor:Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->getDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    .line 512
    :try_start_19
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 515
    new-instance v2, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    move-wide/from16 v3, v44

    .line 516
    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;->bind(J)V

    .line 517
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;->executeUpdateDelete()I

    move-result v2

    if-lez v2, :cond_33

    .line 520
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_DELETE_OLD_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    const/16 v19, 0xc

    goto :goto_24

    .line 523
    :cond_33
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_DELETE_OLD_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 526
    :goto_24
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_APPLY_BATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 527
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseBatchInteractor:Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;

    invoke-virtual {v2, v11}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->applyBatch(Ljava/util/List;)V

    .line 528
    array-length v2, v8

    const v5, 0xc800

    if-lt v2, v5, :cond_34

    .line 529
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLocalPublicKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    invoke-virtual {v2, v3, v4, v8}, Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;->writePublicKey(J[B)V

    .line 531
    :cond_34
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyKeyChange(J)V

    .line 533
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 534
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 541
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return v19

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_25

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 537
    :try_start_1a
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_ERROR_OP_EXC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    const-string v3, "OperationApplicationException during import"

    .line 538
    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 541
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return v13

    :goto_25
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 542
    throw v2

    :catch_a
    move-exception v0

    const/4 v13, 0x1

    goto :goto_27

    :catchall_2
    move-exception v0

    const/4 v13, 0x1

    :goto_26
    move-object v1, v0

    goto :goto_29

    :catch_b
    move-exception v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_27
    move-object v1, v0

    .line 503
    :goto_28
    :try_start_1b
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_ERROR_IO_EXC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    const-string v2, "IOException during import"

    .line 504
    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 507
    iget v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v1, v13

    iput v1, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return v13

    :catchall_3
    move-exception v0

    goto :goto_26

    :goto_29
    iget v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v2, v13

    iput v2, v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 508
    throw v1

    :catch_c
    const/4 v13, 0x1

    .line 186
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_ENCODE_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    return v13

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->saveCanonicalizedPublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Z)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveCanonicalizedSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;)I
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 614
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v0

    .line 615
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v8, v2, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 616
    iget v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v2, v3

    iput v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    const/16 v2, 0x10

    .line 625
    :try_start_0
    invoke-direct {v8, v9, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->writeSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :try_start_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v4

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/model/SubKey;->createUpdateHasSecretByMasterKeyIdStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;

    move-result-object v4

    .line 635
    sget-object v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v4, v0, v1, v5}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->bind(JLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)V

    .line 636
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->executeUpdateDelete()I

    .line 638
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->createUpdateHasSecretByKeyId(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;

    move-result-object v0

    .line 641
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_IMPORTING_SUBKEYS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 642
    iget v1, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v1, v3

    iput v1, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 643
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->secretKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    .line 644
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v4

    .line 645
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getSecretKeyTypeSuperExpensive()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v1

    .line 646
    invoke-virtual {v0, v4, v5, v1}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;->bind(JLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)V

    .line 647
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByKeyId;->executeUpdateDelete()I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 649
    sget-object v7, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v1

    aget v1, v7, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 660
    :pswitch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUBKEY_DIVERT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 657
    :pswitch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUBKEY_STRIPPED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 654
    :pswitch_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUBKEY_EMPTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 651
    :pswitch_3
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUBKEY_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUBKEY_NONEXISTENT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v8, v1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    :cond_1
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v3

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 673
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v3

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return v2

    :catchall_0
    move-exception v9

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_2
    const-string v0, "Failed to encode key!"

    .line 627
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_ERROR_IO_EXC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v3

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return v3

    :goto_1
    iget v0, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v0, v3

    iput v0, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 678
    throw v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->saveCanonicalizedSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;)I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    .line 547
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getEncoded()[B

    move-result-object v2

    .line 548
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->localSecretKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    invoke-virtual {v0, v3, p0, v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->writeSecretKey(J[B)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->writeSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deleteKeyRing(J)Z
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    const/4 v0, 0x0

    .line 553
    :try_start_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLocalPublicKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;->deletePublicKey(J)V

    .line 554
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->localSecretKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->deleteSecretKey(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->deleteByMasterKeyId(J)V

    .line 561
    new-instance v1, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 562
    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;->bind(J)V

    .line 563
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$DeleteByMasterKeyId;->executeUpdateDelete()I

    move-result v1

    .line 565
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    invoke-virtual {v2, v4, v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyKeyChange(J)V

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v4

    const-string v5, "Could not delete file!"

    .line 556
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->deleteKeyRing(J)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 824
    invoke-virtual {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v0, 0x0

    .line 828
    invoke-virtual {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[B)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    .line 815
    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BLjava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v7

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[B)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BLjava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;",
            ">;ZZ)",
            "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 697
    :try_start_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    .line 698
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v8, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 699
    iget v4, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v4, v1

    iput v4, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 701
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_BAD_TYPE_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 703
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    :cond_0
    const/4 v4, 0x4

    .line 711
    :try_start_1
    invoke-virtual {v8, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->loadPublicKeyRingData(J)[B

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v2
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :try_start_2
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MERGE_PUBLIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 716
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v5, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v2, v9, v3, v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v3
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    .line 720
    :try_start_3
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object p1, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, p1, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    .line 724
    :cond_1
    :try_start_4
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v5, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v3, v9, v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v9

    check-cast v9, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    if-nez v9, :cond_2

    .line 726
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object p1, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, p1, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    :cond_2
    if-eqz p0, :cond_3

    .line 728
    :try_start_5
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p1, :cond_4

    .line 731
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    .line 732
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 733
    sget-object p1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_SUCCESS_IDENTICAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, p1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 734
    new-instance p1, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {p1, v4, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 810
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v1

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object p1

    :cond_4
    move-object p1, v9

    const/4 v9, 0x1

    goto :goto_1

    :catch_0
    move-object v3, v9

    :catch_1
    const/4 v9, 0x1

    goto :goto_0

    :catch_2
    move-object v3, v9

    const/4 v9, 0x0

    .line 740
    :goto_0
    :try_start_6
    iget-object p1, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v3, p1, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    if-nez p1, :cond_5

    .line 742
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    :cond_5
    if-eqz p0, :cond_6

    .line 744
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 750
    :cond_6
    :goto_1
    :try_start_8
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object p0

    .line 751
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object p0

    .line 754
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_MERGE_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 755
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v5, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {p0, v3, v2, v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object p0

    if-nez p0, :cond_7

    .line 757
    new-instance p0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {p0, v1, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_8
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 810
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v1

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object p0

    .line 760
    :cond_7
    :try_start_9
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v3, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {p0, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    if-nez p0, :cond_8

    .line 762
    new-instance p0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {p0, v1, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_9
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 810
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v1

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object p0

    :catch_3
    move-object p0, v0

    :cond_8
    if-eqz v10, :cond_a

    .line 773
    :try_start_a
    invoke-virtual {p1, v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->containsBoundSubkey([B)Z

    move-result v10

    if-nez v10, :cond_9

    .line 774
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_FINGERPRINT_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 775
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    .line 777
    :cond_9
    :try_start_b
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_FINGERPRINT_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v10}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    :cond_a
    if-eqz p2, :cond_c

    if-eqz v9, :cond_b

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    or-int/lit8 v9, v4, 0x8

    goto :goto_3

    :cond_c
    if-eqz p0, :cond_d

    const/4 v7, 0x1

    .line 787
    :cond_d
    invoke-direct {v8, p1, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveCanonicalizedPublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Z)I

    move-result v9

    :goto_3
    if-eqz p0, :cond_f

    if-eqz p2, :cond_e

    const/16 v10, 0x10

    goto :goto_4

    .line 797
    :cond_e
    invoke-direct {v8, p0}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveCanonicalizedSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;)I

    move-result v10

    :goto_4
    and-int/2addr v10, v1

    if-eq v10, v1, :cond_f

    or-int/lit8 v9, v9, 0x10

    .line 805
    :cond_f
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object p0, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v10, v9, p0, p1}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 810
    iget v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v9, v1

    iput v9, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v10

    :catchall_0
    move-exception v9

    goto :goto_5

    .line 807
    :catch_4
    :try_start_c
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IP_ERROR_IO_EXC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 808
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9, v1, v10, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 810
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v9

    :goto_5
    iget v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v10, v1

    iput v10, v8, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 811
    throw v9

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BLjava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move/16 p0, p3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v4, p0

    .line 820
    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BLjava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v7

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;[BZ)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 957
    invoke-virtual {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/ArrayList;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/ArrayList;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;",
            ">;Z)",
            "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"
        }
    .end annotation

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move/16 p0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 836
    :try_start_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    .line 837
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v11, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 838
    iget v4, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    add-int/2addr v4, v1

    iput v4, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 840
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v4

    if-nez v4, :cond_0

    .line 841
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_BAD_TYPE_PUBLIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 842
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v13, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_0
    const/4 v4, 0x4

    .line 850
    :try_start_1
    invoke-virtual {v11, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v5
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    :try_start_2
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_MERGE_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v6}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 855
    iget-object v6, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v8, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v12, v5, v6, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v6
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_1

    .line 859
    :try_start_3
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v5, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v5, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    .line 864
    :cond_1
    :try_start_4
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v8, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v6, v12, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v12

    check-cast v12, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    if-nez v12, :cond_2

    .line 866
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v5, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v5, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_2
    if-eqz v13, :cond_3

    .line 868
    :try_start_5
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_3
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    .line 872
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    if-ne v8, v5, :cond_4

    .line 873
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_SUCCESS_IDENTICAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v1, [Ljava/lang/Object;

    .line 874
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 873
    invoke-virtual {v11, v12, v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V

    .line 875
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v5, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v4, v5, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_4
    move-object v5, v12

    const/4 v12, 0x1

    goto :goto_2

    :catch_0
    move-object v6, v12

    :catch_1
    const/4 v12, 0x1

    goto :goto_0

    :catch_2
    move-object v6, v12

    const/4 v12, 0x0

    .line 882
    :goto_0
    :try_start_6
    iget-object v5, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v8, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v6, v5, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_6

    .line 888
    :try_start_7
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_MERGE_SPECIAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v8}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 889
    invoke-virtual {v11, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v8

    .line 890
    iget-object v9, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v10, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v6, v8, v9, v10}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v8
    :try_end_7
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 891
    :try_start_8
    iget-object v6, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v9, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v8, v6, v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;
    :try_end_8
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-object v8, v6

    :catch_4
    :goto_1
    if-nez v5, :cond_5

    .line 897
    :try_start_9
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v13, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_5
    move-object v6, v8

    :cond_6
    if-eqz v13, :cond_7

    .line 900
    :try_start_a
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 906
    :cond_7
    :goto_2
    :try_start_b
    invoke-virtual {v11, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v13

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v13

    .line 909
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_MERGE_PUBLIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 910
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v3, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v13, v6, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v13

    if-nez v13, :cond_8

    .line 912
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v2, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v13, v1, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_b
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 952
    iget v12, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v12, v1

    iput v12, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v13

    .line 916
    :catch_5
    :try_start_c
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_PUBRING_GENERATE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v13}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 917
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->extractPublicKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v13

    .line 920
    :cond_8
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v3, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    invoke-virtual {v13, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v13

    check-cast v13, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    if-nez v13, :cond_9

    .line 923
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v13, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_9
    if-eqz p0, :cond_a

    const/16 v13, 0x8

    goto :goto_3

    .line 931
    :cond_a
    :try_start_d
    invoke-direct {v11, v13, v1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveCanonicalizedPublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Z)I

    move-result v13

    :goto_3
    and-int/2addr v13, v1

    if-ne v13, v1, :cond_b

    .line 935
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v13, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :cond_b
    if-eqz p0, :cond_d

    if-eqz v12, :cond_c

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    or-int/lit8 v12, v4, 0x10

    goto :goto_5

    .line 944
    :cond_d
    :try_start_e
    invoke-direct {v11, v5}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->saveCanonicalizedSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;)I

    move-result v12

    .line 947
    :goto_5
    new-instance v13, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object p0, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v13, v12, p0, v5}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 952
    iget v12, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v12, v1

    iput v12, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v13

    :catchall_0
    move-exception v12

    goto :goto_6

    .line 949
    :catch_6
    :try_start_f
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_IS_ERROR_IO_EXC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 950
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    iget-object v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v12, v1, v13, v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 952
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    return-object v12

    :goto_6
    iget v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    sub-int/2addr v13, v1

    iput v13, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->mIndent:I

    .line 953
    throw v12

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->saveSecretKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/ArrayList;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateTrustDb(Ljava/util/List;Lorg/sufficientlysecure/keychain/pgp/Progressable;)Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/sufficientlysecure/keychain/pgp/Progressable;",
            ")",
            "Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;"
        }
    .end annotation

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    .line 962
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 964
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 966
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->isKeySignaturesTableInitialized()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 971
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST_INITIALIZE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v12, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 972
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getAllMasterKeyIds()Ljava/util/List;

    move-result-object v12

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {v11, v12}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->getMasterKeyIdsBySigner(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 977
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 981
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST_COUNT_NONE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v5, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    :cond_1
    const v5, 0x7f110c29

    .line 983
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    .line 984
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST_COUNT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 987
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 989
    :try_start_0
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v0, v8, v4, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 991
    invoke-virtual {v11, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->loadPublicKeyRingData(J)[B

    move-result-object v6

    .line 992
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v6

    .line 994
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->clearLog()V

    .line 995
    invoke-virtual {v11, v6, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Z)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v6

    .line 997
    invoke-virtual {v0, v6, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    add-int/lit8 v6, v5, 0x1

    .line 998
    invoke-interface {v13, v5, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(II)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v12

    const-string v13, "Error updating trust database"

    .line 1000
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;

    invoke-direct {v12, v4, v0}, Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v12

    .line 1005
    :cond_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeySignaturesTableInitialized()V

    .line 1007
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_TRUST_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v12, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1008
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;

    invoke-direct {v12, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v12

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;--->updateTrustDb(Ljava/util/List;Lorg/sufficientlysecure/keychain/pgp/Progressable;)Lorg/sufficientlysecure/keychain/operations/results/UpdateTrustResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
