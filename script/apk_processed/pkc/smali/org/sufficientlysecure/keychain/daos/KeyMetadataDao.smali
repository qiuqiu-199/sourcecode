.class public Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "KeyMetadataDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;
    .locals 5

    move-object/16 v2, p0

    .line 20
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 21
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 23
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;--->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getFingerprintsForKeysOlderThan(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    move-object/16 p0, p3

    .line 53
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->selectFingerprintsForKeysOlderThan(Ljava/util/Date;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    const/4 p0, 0x0

    .line 57
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->selectFingerprintsForKeysOlderThanMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 59
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    move-object p0, v4

    .line 56
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p0, :cond_2

    .line 61
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {p0, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;--->getFingerprintsForKeysOlderThan(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyMetadata(J)Lorg/sufficientlysecure/keychain/model/KeyMetadata;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 31
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->selectByMasterKeyId(Ljava/lang/Long;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    .line 33
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->selectByMasterKeyIdMapper()Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyMetadataModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/KeyMetadata;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 32
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    .line 36
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v3, v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;--->getKeyMetadata(J)Lorg/sufficientlysecure/keychain/model/KeyMetadata;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public renewKeyLastUpdatedTime(JZ)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    move/16 p0, p3

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->FACTORY:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->bind(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)V

    .line 47
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$ReplaceKeyMetadata;->executeInsert()J

    .line 49
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyKeyMetadataChange(J)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;--->renewKeyLastUpdatedTime(JZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public resetAllLastUpdatedTimes()V
    .locals 5

    move-object/16 v2, p0

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;->execute()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;--->resetAllLastUpdatedTimes()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
