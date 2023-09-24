.class public Lorg/sufficientlysecure/keychain/daos/UserIdDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "UserIdDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 25
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/UserIdDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/UserIdDao;
    .locals 5

    move-object/16 v2, p0

    .line 18
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 19
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 21
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/UserIdDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/UserIdDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/UserIdDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public varargs getUidStatusByEmail([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 34
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdStatusByEmail([Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v5

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v5

    :goto_0
    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lorg/sufficientlysecure/keychain/model/UserPacket;->UID_STATUS_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    invoke-virtual {v2, v5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    .line 39
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->email()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 41
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 36
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    .line 41
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

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/UserIdDao;--->getUidStatusByEmail([Ljava/lang/String;)Ljava/util/Map;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUidStatusByEmailLike(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 29
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdStatusByEmailLike(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v2

    .line 30
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->UID_STATUS_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusMapper;

    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/daos/UserIdDao;->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/UserIdDao;--->getUidStatusByEmailLike(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
