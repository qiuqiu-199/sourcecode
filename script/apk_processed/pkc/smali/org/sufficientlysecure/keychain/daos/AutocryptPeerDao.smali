.class public Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "AutocryptPeerDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 51
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private ensureAutocryptPeerExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 84
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$InsertPeer;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$InsertPeer;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 85
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$InsertPeer;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$InsertPeer;->executeInsert()J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->ensureAutocryptPeerExists(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private varargs getAutocryptPeers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 74
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectByIdentifiers(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 75
    sget-object v3, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->PEER_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->mapAllRows(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/util/List;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getAutocryptPeers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;
    .locals 5

    move-object/16 v2, p0

    .line 44
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 45
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 47
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deleteByIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 132
    invoke-virtual {v3, v5}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getMasterKeyIdForAutocryptPeer(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 133
    new-instance v1, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByIdentifier;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByIdentifier;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 134
    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByIdentifier;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByIdentifier;->execute()V

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyAutocryptDelete(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->deleteByIdentifier(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public deleteByMasterKeyId(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;->bind(Ljava/lang/Long;)V

    .line 144
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;->execute()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->deleteByMasterKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 79
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 80
    sget-object v3, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->KEY_STATUS_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->mapAllRows(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/util/List;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAutocryptPeer(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getAutocryptPeers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    return-object v3

    :cond_0
    const/4 v3, 0x0

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getAutocryptPeer(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAutocryptPeersForKey(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    .line 122
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    .line 123
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->PEER_MAPPER:Lcom/squareup/sqldelight/RowMapper;

    invoke-interface {v1, v3}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 127
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 122
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    .line 127
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {v4, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getAutocryptPeersForKey(J)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIdForAutocryptPeer(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 55
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectMasterKeyIdByIdentifier(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectMasterKeyIdByIdentifierMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 60
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {v0, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->getMasterKeyIdForAutocryptPeer(Ljava/lang/String;)Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public insertOrUpdateLastSeen(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 90
    invoke-direct {v3, v4, v5}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->ensureAutocryptPeerExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    .line 93
    invoke-virtual {v0, v4, v5, p0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 94
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->executeUpdateDelete()I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->insertOrUpdateLastSeen(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JZ)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move/16 p3, p6

    .line 99
    invoke-direct {v7, v8, v9}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->ensureAutocryptPeerExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateKey;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-direct {v6, v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateKey;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v6

    move-object v1, v8

    move-object v2, v9

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateKey;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Z)V

    .line 103
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateKey;->executeUpdateDelete()I

    .line 105
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v8

    invoke-virtual {v8, v9, p1, p2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyAutocryptUpdate(Ljava/lang/String;J)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->updateKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JZ)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateKeyGossip(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    .line 110
    invoke-direct {v7, v8, v9}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->ensureAutocryptPeerExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateGossipKey;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->FACTORY:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-direct {v6, v0, v1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateGossipKey;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v6

    move-object v1, v8

    move-object v2, v9

    move-object v3, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateGossipKey;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V

    .line 114
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateGossipKey;->executeUpdateDelete()I

    .line 116
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v8

    invoke-virtual {v8, v9, p1, p2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyAutocryptUpdate(Ljava/lang/String;J)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;--->updateKeyGossip(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
