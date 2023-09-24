.class Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.super Ljava/lang/Object;
.source "AbstractDao.java"


# instance fields
.field private final databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

.field private final db:Lorg/sufficientlysecure/keychain/KeychainDatabase;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->db:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    .line 22
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->databaseNotifyManager:Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->getDatabaseNotifyManager()Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 26
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->db:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 30
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->db:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method mapAllRows(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            "Lcom/squareup/sqldelight/RowMapper<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v5, v4}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 44
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v1, v5

    .line 39
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 44
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
    throw v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->mapAllRows(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            "Lcom/squareup/sqldelight/RowMapper<",
            "TT;>;)TT;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 57
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v4, v3}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .line 57
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 61
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
    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            "Lcom/squareup/sqldelight/RowMapper<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v1

    :cond_0
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/AbstractDao;--->mapSingleRowOrThrow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
