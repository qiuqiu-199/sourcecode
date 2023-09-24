.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;
.super Ljava/lang/Object;
.source "IdentityDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;,
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;,
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;,
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;
    }
.end annotation


# instance fields
.field private final autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

.field private final db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

.field private final packageIconGetter:Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 69
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->packageManager:Landroid/content/pm/PackageManager;

    .line 70
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->packageIconGetter:Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

    .line 71
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private correlateOrAddAutocryptPeers(Ljava/util/ArrayList;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;J)V"
        }
    .end annotation

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-wide/16 v12, p2

    .line 87
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    invoke-virtual {v0, v12, p0}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getAutocryptPeersForKey(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->package_name()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->packageIconGetter:Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

    invoke-virtual {v2, v6}, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->getDrawableForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 92
    invoke-direct {v10, v6, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->getAutocryptPeerActivityIntentIfResolvable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 94
    invoke-static {v11, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->findUserIdMatchingAutocryptPeer(Ljava/util/List;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-wide v2, v12

    move-object v5, v1

    .line 98
    invoke-static/range {v2 .. v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->create(JLorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    move-result-object v1

    .line 99
    invoke-virtual {v11, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-wide v2, v12

    move-object v4, v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 102
    invoke-static/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->create(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    move-result-object v1

    .line 103
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->correlateOrAddAutocryptPeers(Ljava/util/ArrayList;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static findUserIdMatchingAutocryptPeer(Ljava/util/List;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    .line 125
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    .line 127
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->findUserIdMatchingAutocryptPeer(Ljava/util/List;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAutocryptPeerActivityIntentIfResolvable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.autocrypt.PEER_ACTION"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "autocrypt_peer_id"

    .line 113
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->getAutocryptPeerActivityIntentIfResolvable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;
    .locals 7

    move-object/16 v4, p0

    .line 58
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

    move-result-object v2

    .line 61
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    move-result-object v4

    .line 62
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;-><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;)V

    return-object v3

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadLinkedIds(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;J)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    .line 136
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    const-wide/16 v1, 0x65

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1, v5, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserAttributesByTypeAndMasterKeyId(Ljava/lang/Long;J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v5

    .line 138
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    invoke-interface {p0, v5}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v5

    :goto_0
    const/4 p0, 0x0

    .line 139
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ATTRIBUTE_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;

    .line 142
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->parseLinkedIdInfo(Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    move-result-object v0

    .line 143
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 145
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    move-object p0, v4

    .line 138
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    .line 145
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-static {p0, v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->loadLinkedIds(Ljava/util/ArrayList;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private varargs loadUserIds(Ljava/util/ArrayList;[J)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;[J)V"
        }
    .end annotation

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    .line 176
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    invoke-virtual {v0, v12}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectUserIdsByMasterKeyId([J)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v12

    .line 177
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    invoke-interface {v0, v12}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v12

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    sget-object v1, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ID_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;

    invoke-virtual {v1, v12}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    .line 181
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->rank()I

    move-result v4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->isVerified()Z

    move-result v5

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_primary()Z

    move-result v6

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->comment()Ljava/lang/String;

    move-result-object v9

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 182
    invoke-static/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->create(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v1

    .line 184
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    .line 187
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v11

    goto :goto_1

    :catch_0
    move-exception v11

    move-object v0, v11

    .line 177
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v12, :cond_5

    if-eqz v0, :cond_4

    .line 187
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v12

    invoke-static {v0, v12}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw v11

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->loadUserIds(Ljava/util/ArrayList;[J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseLinkedIdInfo(Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 164
    :try_start_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->attribute_data()[B

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->fromAttributeData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->rank()I

    move-result v4

    .line 167
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->isVerified()Z

    move-result v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->is_primary()Z

    move-result v6

    move-object v7, v0

    check-cast v7, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    .line 166
    invoke-static/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->create(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v9

    const-string v0, "Failed parsing uri attribute"

    const/4 v1, 0x0

    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v9, 0x0

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->parseLinkedIdInfo(Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getIdentityInfos(JZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    move/16 p0, p3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 78
    invoke-direct {v2, v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->loadLinkedIds(Ljava/util/ArrayList;J)V

    :cond_0
    const/4 p0, 0x1

    .line 80
    new-array p0, p0, [J

    const/4 v1, 0x0

    aput-wide v3, p0, v1

    invoke-direct {v2, v0, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->loadUserIds(Ljava/util/ArrayList;[J)V

    .line 81
    invoke-direct {v2, v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->correlateOrAddAutocryptPeers(Ljava/util/ArrayList;J)V

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->getIdentityInfos(JZ)Ljava/util/List;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLinkedIdInfo(JI)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    move/16 p0, p3

    .line 149
    sget-object v0, Lorg/sufficientlysecure/keychain/model/UserPacket;->FACTORY:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    const-wide/16 v1, 0x65

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1, v4, v5, p0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;->selectSpecificUserAttribute(Ljava/lang/Long;JI)Lcom/squareup/sqldelight/SqlDelightQuery;

    move-result-object v4

    .line 151
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    invoke-interface {v5, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    .line 152
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 153
    sget-object p0, Lorg/sufficientlysecure/keychain/model/UserPacket;->USER_ATTRIBUTE_MAPPER:Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;

    invoke-virtual {p0, v4}, Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;

    .line 155
    invoke-direct {v3, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->parseLinkedIdInfo(Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 157
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

    .line 151
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    .line 157
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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;--->getLinkedIdInfo(JI)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
