.class public Lorg/sufficientlysecure/keychain/daos/ApiAppDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "ApiAppDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 49
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;
    .locals 5

    move-object/16 v2, p0

    .line 42
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 43
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 45
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addAllowedKeyIdForApp(Ljava/lang/String;J)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-wide/16 v4, p2

    .line 120
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 121
    invoke-static {v4, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->bind(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->executeInsert()J

    .line 124
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyApiAppChange(Ljava/lang/String;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->addAllowedKeyIdForApp(Ljava/lang/String;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public deleteApiApp(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 86
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$DeleteByPackageName;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$DeleteByPackageName;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 87
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$DeleteByPackageName;->bind(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAppsModel$DeleteByPackageName;->executeUpdateDelete()I

    .line 90
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyApiAppChange(Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->deleteApiApp(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllApiApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/ApiApp;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 128
    sget-object v0, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->selectAll()Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

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
    sget-object v3, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->selectAllMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAppsModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/ApiApp;

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

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->getAllApiApps()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllowedKeyIdsForApp(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 94
    sget-object v0, Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;->getAllowedKeys(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v5

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v5

    :goto_0
    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lorg/sufficientlysecure/keychain/model/ApiAllowedKey;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;->getAllowedKeysMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 101
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 96
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    .line 101
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-static {v1, v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->getAllowedKeyIdsForApp(Ljava/lang/String;)Ljava/util/HashSet;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getApiApp(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/ApiApp;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 53
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->selectByPackageName(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->selectByPackageNameMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/ApiAppsModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/ApiApp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 58
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

    .line 53
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 58
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

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->getApiApp(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/ApiApp;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getApiAppCertificate(Ljava/lang/String;)[B
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 62
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->getCertificate(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    sget-object v1, Lorg/sufficientlysecure/keychain/model/ApiApp;->FACTORY:Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->getCertificateMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 67
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

    .line 62
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 67
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

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->getApiAppCertificate(Ljava/lang/String;)[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 71
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getApiApp(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/ApiApp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_signature()[B

    move-result-object v0

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_signature()[B

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v0, "Inserting existing api with different signature?!"

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 79
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_signature()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;->bind(Ljava/lang/String;[B)V

    .line 80
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;->executeInsert()J

    .line 82
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v0

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyApiAppChange(Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public saveAllowedKeyIdsForApp(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 106
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$DeleteByPackageName;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$DeleteByPackageName;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 107
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$DeleteByPackageName;->bind(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$DeleteByPackageName;->executeUpdateDelete()I

    .line 110
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 111
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 112
    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->bind(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->execute()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyApiAppChange(Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/ApiAppDao;--->saveAllowedKeyIdsForApp(Ljava/lang/String;Ljava/util/Set;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
