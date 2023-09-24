.class public Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "OverriddenWarningsDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 39
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;
    .locals 5

    move-object/16 v2, p0

    .line 32
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 33
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 35
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;--->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deleteOverride(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$DeleteByIdentifier;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$DeleteByIdentifier;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 56
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$DeleteByIdentifier;->bind(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$DeleteByIdentifier;->executeInsert()J

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;--->deleteOverride(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isWarningOverridden(Ljava/lang/String;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 43
    sget-object v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning;->FACTORY:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;->selectCountByIdentifier(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v5

    .line 44
    sget-object v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning;->FACTORY:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;->selectCountByIdentifierMapper()Lcom/squareup/sqldelight/RowMapper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;->get$Lambda(Lcom/squareup/sqldelight/RowMapper;)Lcom/squareup/sqldelight/RowMapper;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->mapSingleRow(Landroid/arch/persistence/db/SupportSQLiteQuery;Lcom/squareup/sqldelight/RowMapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;--->isWarningOverridden(Ljava/lang/String;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putOverride(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 49
    new-instance v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$InsertIdentifier;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->getWritableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$InsertIdentifier;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 50
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$InsertIdentifier;->bind(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$InsertIdentifier;->executeInsert()J

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;--->putOverride(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
