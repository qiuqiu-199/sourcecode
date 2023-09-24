.class public Lorg/sufficientlysecure/keychain/daos/KeyRepository;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "KeyRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
    }
.end annotation


# instance fields
.field final localSecretKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

.field mIndent:I

.field final mLocalPublicKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

.field mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 71
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    .line 79
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    .line 80
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLocalPublicKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    .line 81
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->localSecretKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    .line 82
    iput p3, v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mIndent:I

    .line 83
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;
    .locals 7

    move-object/16 v4, p0

    .line 59
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    move-result-object v0

    .line 60
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    move-result-object v1

    .line 61
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v2

    .line 62
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v4

    .line 64
    new-instance v3, Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v3, v2, v4, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;)V

    return-object v3

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyRingAsArmoredData([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    new-instance v1, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 263
    invoke-virtual {v1, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->write([B)V

    .line 264
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getKeyRingAsArmoredData([B)[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getLongListAsArray(Ljava/util/List;)[J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 326
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 328
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    add-int/lit8 v3, v1, 0x1

    .line 329
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getLongListAsArray(Ljava/util/List;)[J"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getConfirmedUserIds$0$KeyRepository(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 229
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ID_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    invoke-virtual {v0, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearLog()V
    .locals 4

    move-object/16 v1, p0

    .line 103
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->clearLog()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllMasterKeyIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 129
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;->selectAllMasterKeyIds()Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    sget-object v3, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;->selectAllMasterKeyIdsMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 131
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    .line 136
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v2, v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getAllMasterKeyIds()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllUnifiedKeyInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 188
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectAllUnifiedKeyInfo()Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 191
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 193
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 190
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    .line 195
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v2, v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getAllUnifiedKeyInfo()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllUnifiedKeyInfoWithSecret()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 200
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectAllUnifiedKeyInfoWithSecret()Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 203
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 202
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    .line 207
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v2, v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 107
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v2

    .line 112
    :cond_0
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadPublicKeyRingData(J)[B

    move-result-object v2

    .line 113
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;-><init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 117
    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadSecretKeyRingData(J)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 123
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing expected secret key data!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_1
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;-><init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    return-object v4

    .line 119
    :cond_2
    :goto_0
    new-instance v3, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getConfirmedUserIds(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 224
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/Certification;->FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v0, v1, v4, v5, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdsByMasterKeyIdAndVerification(Lorg/sufficientlysecure/keychain/CertsModel$Factory;JLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 226
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v0, 0x0

    .line 228
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;->$instance:Lcom/squareup/sqldelight/RowMapper;

    .line 230
    invoke-interface {v1, v4}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 233
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v5

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    .line 227
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    .line 233
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v0, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getConfirmedUserIds(J)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprintByKeyId(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 255
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectFingerprintByKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 256
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectFingerprintByKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getFingerprintByKeyId(J)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;
    .locals 4

    move-object/16 v1, p0

    .line 87
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 154
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectMasterKeyIdBySubkey(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 155
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectMasterKeyIdBySubkeyMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIdsBySigner(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 141
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getLongListAsArray(Ljava/util/List;)[J

    move-result-object v4

    .line 142
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeySignature;->FACTORY:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;->selectMasterKeyIdsBySigner([J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lorg/sufficientlysecure/keychain/model/KeySignature;->FACTORY:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;->selectMasterKeyIdsBySignerMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 144
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 149
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getMasterKeyIdsBySigner(Ljava/util/List;)Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKeyRingAsArmoredString(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 270
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadPublicKeyRingData(J)[B

    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getKeyRingAsArmoredData([B)[B

    move-result-object v1

    .line 272
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getPublicKeyRingAsArmoredString(J)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretAuthenticationId(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 312
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectEffectiveAuthKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 313
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectEffectiveAuthKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getSecretAuthenticationId(J)J"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKeyRingAsArmoredData(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 276
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadSecretKeyRingData(J)[B

    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getKeyRingAsArmoredData([B)[B

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getSecretKeyRingAsArmoredData(J)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 250
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectSecretKeyType(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 251
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->SKT_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretSignId(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 307
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectEffectiveSignKeyIdByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 308
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectEffectiveSignKeyIdByMasterKeyIdMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getSecretSignId(J)J"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubKeysByMasterKeyId(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 238
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectSubkeysByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    sget-object v1, Lorg/sufficientlysecure/keychain/model/SubKey;->SUBKEY_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$Mapper;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 243
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 245
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .line 240
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 245
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {v0, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getSubKeysByMasterKeyId(J)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs getUnifiedKeyInfo([J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 164
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectUnifiedKeyInfoByMasterKeyIds([J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 171
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 166
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 171
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getUnifiedKeyInfo([J)Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 159
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectUnifiedKeyInfoByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 160
    sget-object v3, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnifiedKeyInfosByMailAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 176
    sget-object v0, Lorg/sufficientlysecure/keychain/model/SubKey;->FACTORY:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectUnifiedKeyInfoSearchMailAddress(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    .line 179
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    sget-object v2, Lorg/sufficientlysecure/keychain/model/SubKey;->UNIFIED_KEY_INFO_MAPPER:Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 183
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 178
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 183
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getUnifiedKeyInfosByMailAddress(Ljava/lang/String;)Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs getUserIds([J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 212
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdsByMasterKeyId([J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ID_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 219
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 214
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 219
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->getUserIds([J)Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final loadPublicKeyRingData(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 281
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->FACTORY:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;->selectByMasterKeyId(J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v0

    .line 282
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 283
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    sget-object v2, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->MAPPER:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    .line 285
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->key_ring_data()[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 287
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLocalPublicKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;

    invoke-virtual {v2, v4, v5}, Lorg/sufficientlysecure/keychain/daos/LocalPublicKeyStorage;->readPublicKey(J)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 291
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .line 282
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 291
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    invoke-static {v1, v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v4

    const-string v5, "Error reading public key from storage!"

    const/4 v0, 0x0

    .line 292
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_5
    :goto_2
    new-instance v4, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->loadPublicKeyRingData(J)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final loadSecretKeyRingData(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 299
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->localSecretKeyStorage:Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->readSecretKey(J)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "Error reading secret key from storage!"

    const/4 v0, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    new-instance v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->loadSecretKeyRingData(J)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 91
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v1, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mIndent:I

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 97
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v1, v2, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->mIndent:I

    invoke-virtual {v0, v3, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyRepository;--->log(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;[Ljava/lang/Object;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
