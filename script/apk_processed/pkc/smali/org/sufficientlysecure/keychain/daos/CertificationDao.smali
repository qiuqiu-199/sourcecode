.class public Lorg/sufficientlysecure/keychain/daos/CertificationDao;
.super Lorg/sufficientlysecure/keychain/daos/AbstractDao;
.source "CertificationDao.java"


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 22
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/AbstractDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/CertificationDao;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/CertificationDao;
    .locals 5

    move-object/16 v2, p0

    .line 15
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    .line 16
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v2

    .line 18
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/CertificationDao;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/daos/CertificationDao;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/CertificationDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/CertificationDao;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getVerifyingCertDetails(JI)Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    move/16 p0, p3

    .line 26
    sget-object v0, Lorg/sufficientlysecure/keychain/model/Certification;->FACTORY:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    int-to-long v1, p0

    invoke-virtual {v0, v4, v5, v1, v2}, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->selectVerifyingCertDetails(JJ)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 27
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/daos/CertificationDao;->getReadableDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    .line 28
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 29
    sget-object p0, Lorg/sufficientlysecure/keychain/model/Certification;->CERT_DETAILS_MAPPER:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;

    invoke-virtual {p0, v4}, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 31
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v5

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 27
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    .line 31
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-static {v5, v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw p0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/CertificationDao;--->getVerifyingCertDetails(JI)Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
