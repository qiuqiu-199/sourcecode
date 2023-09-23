.class public Lorg/sufficientlysecure/keychain/KeychainDatabase;
.super Ljava/lang/Object;
.source "KeychainDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/KeychainDatabase$Tables;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "openkeychain.db"

.field private static final DATABASE_VERSION:I = 0x1f

.field private static sInstance:Lorg/sufficientlysecure/keychain/KeychainDatabase;


# instance fields
.field private final supportSQLiteOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 80
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    .line 83
    invoke-static {v5}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    const-string v2, "openkeychain.db"

    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;

    const/16 v3, 0x1f

    invoke-direct {v2, v4, v3, v5}, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;-><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;ILandroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v5

    .line 83
    invoke-virtual {v0, v5}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/KeychainDatabase;->supportSQLiteOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/KeychainDatabase;Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/KeychainDatabase;Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/KeychainDatabase;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->onDowngrade()V

    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 441
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 442
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x200

    .line 444
    :try_start_0
    new-array v1, v5, [B

    .line 445
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 446
    invoke-virtual {v0, v1, v2, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 447
    invoke-virtual {v4, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 451
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v5

    .line 450
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 451
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 452
    throw v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->copy(Ljava/io/File;Ljava/io/File;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static debugBackup(Landroid/content/Context;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->debugBackup(Landroid/content/Context;Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 60
    sget-object v0, Lorg/sufficientlysecure/keychain/KeychainDatabase;->sInstance:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/sufficientlysecure/keychain/Constants;->IS_RUNNING_UNITTEST:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/KeychainDatabase;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeychainDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/KeychainDatabase;->sInstance:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    .line 63
    :cond_1
    sget-object v1, Lorg/sufficientlysecure/keychain/KeychainDatabase;->sInstance:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getTemporaryInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 67
    new-instance v0, Lorg/sufficientlysecure/keychain/KeychainDatabase;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/KeychainDatabase;-><init>(Landroid/content/Context;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->getTemporaryInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/KeychainDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private migrateSecretKeysFromDbToLocalStorage(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 393
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    move-result-object v5

    const-string v0, "SELECT master_key_id, key_ring_data FROM keyrings_secret"

    .line 394
    invoke-interface {v4, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 395
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 396
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 397
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 398
    invoke-virtual {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->writeSecretKey(J[B)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->migrateSecretKeysFromDbToLocalStorage(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private migrateUpdatedKeysToKeyMetadataTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    :try_start_0
    const-string v0, "ALTER TABLE updated_keys RENAME TO key_metadata;"

    .line 408
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 414
    throw v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->migrateUpdatedKeysToKeyMetadataTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "Creating database..."

    const/4 v1, 0x0

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS keyrings_public (\n    master_key_id INTEGER NOT NULL PRIMARY KEY,\n    key_ring_data BLOB NULL\n)"

    .line 125
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS keys (\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    key_id INTEGER NOT NULL,\n    key_size INTEGER,\n    key_curve_oid TEXT,\n    algorithm INTEGER NOT NULL,\n    fingerprint BLOB NOT NULL,\n    can_certify INTEGER NOT NULL,\n    can_sign INTEGER NOT NULL,\n    can_encrypt INTEGER NOT NULL,\n    can_authenticate INTEGER NOT NULL,\n    is_revoked INTEGER NOT NULL,\n    has_secret INTEGER NOT NULL DEFAULT 0,\n    is_secure INTEGER NOT NULL,\n    creation INTEGER NOT NULL,\n    expiry INTEGER,\n    PRIMARY KEY(master_key_id, rank),\n    FOREIGN KEY(master_key_id) REFERENCES\n    keyrings_public(master_key_id) ON DELETE CASCADE\n)"

    .line 126
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_packets(\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    type INTEGER,\n    user_id TEXT,\n    name TEXT,\n    email TEXT,\n    comment TEXT,\n    attribute_data BLOB,\n    is_primary INTEGER NOT NULL,\n    is_revoked INTEGER NOT NULL,\n    PRIMARY KEY(master_key_id, rank),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

    .line 127
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS certs(\n    master_key_id INTEGER NOT NULL,\n    rank INTEGER NOT NULL,\n    key_id_certifier INTEGER NOT NULL,\n    type INTEGER NOT NULL,\n    verified INTEGER NOT NULL DEFAULT 0,\n    creation INTEGER NOT NULL,\n    data BLOB NOT NULL,\n    PRIMARY KEY(master_key_id, rank, key_id_certifier),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE,\n    FOREIGN KEY(master_key_id, rank) REFERENCES user_packets(master_key_id, rank) ON DELETE CASCADE\n)"

    .line 128
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS key_metadata (\n    master_key_id INTEGER PRIMARY KEY,\n    last_updated INTEGER,\n    seen_on_keyservers INTEGER,\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

    .line 129
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS key_signatures (\n    master_key_id INTEGER NOT NULL,\n    signer_key_id INTEGER NOT NULL,\n    PRIMARY KEY(master_key_id, signer_key_id),\n    FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE\n)"

    .line 130
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS api_apps (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    package_name TEXT NOT NULL UNIQUE,\n    package_signature BLOB\n)"

    .line 131
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS overridden_warnings (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    identifier TEXT NOT NULL UNIQUE\n)"

    .line 132
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS autocrypt_peers (\n    package_name TEXT NOT NULL,\n    identifier TEXT NOT NULL,\n    last_seen INTEGER NULL,\n    last_seen_key INTEGER NULL,\n    is_mutual INTEGER NOT NULL DEFAULT 0,\n    master_key_id INTEGER NULL,\n    gossip_master_key_id INTEGER NULL,\n    gossip_last_seen_key INTEGER NULL,\n    gossip_origin INTEGER NULL,\n    PRIMARY KEY(package_name, identifier),\n    FOREIGN KEY(package_name) REFERENCES api_apps (package_name) ON DELETE CASCADE\n)"

    .line 133
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS api_allowed_keys (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key_id INTEGER,\n    package_name TEXT NOT NULL,\n    UNIQUE (key_id, package_name),\n    FOREIGN KEY (package_name) REFERENCES api_apps (package_name) ON DELETE CASCADE\n)"

    .line 134
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW unifiedKeyView AS\n    SELECT keys.master_key_id, keys.fingerprint, MIN(user_packets.rank), user_packets.user_id, user_packets.name, user_packets.email, user_packets.comment, keys.creation, keys.expiry, keys.is_revoked, keys.is_secure, keys.can_certify, certs.verified,\n        (EXISTS (SELECT * FROM user_packets AS dups WHERE dups.master_key_id != keys.master_key_id AND dups.rank = 0 AND dups.name = user_packets.name COLLATE NOCASE AND dups.email = user_packets.email COLLATE NOCASE )) AS has_duplicate_int,\n        (EXISTS (SELECT * FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.has_secret != 0 )) AS has_any_secret_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_encrypt != 0 LIMIT 1) AS has_encrypt_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_sign != 0 LIMIT 1) AS has_sign_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_authenticate != 0 LIMIT 1) AS has_auth_key_int,\n        GROUP_CONCAT(DISTINCT aTI.package_name) AS autocrypt_package_names_csv,\n        GROUP_CONCAT(user_packets.user_id, \'|||\') AS user_id_list\n    FROM keys\n         INNER JOIN user_packets ON ( keys.master_key_id = user_packets.master_key_id AND user_packets.type IS NULL AND (user_packets.rank = 0 OR user_packets.is_revoked = 0))\n         LEFT JOIN certs ON ( keys.master_key_id = certs.master_key_id AND certs.verified = 1 )\n         LEFT JOIN autocrypt_peers AS aTI ON ( aTI.master_key_id = keys.master_key_id )\n    WHERE keys.rank = 0\n    GROUP BY keys.master_key_id"

    .line 135
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW validMasterKeys AS\nSELECT master_key_id, rank, key_id, key_size, key_curve_oid, algorithm, fingerprint, can_certify, can_sign, can_encrypt, can_authenticate, is_revoked, has_secret, is_secure, creation, expiry\n    FROM keys\n    WHERE rank = 0 AND is_revoked = 0 AND is_secure = 1 AND (expiry IS NULL OR expiry >= strftime(\'%s\', \'now\'))"

    .line 136
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW uidStatus AS\n    SELECT user_packets.email, MIN(certs.verified) AS key_status_int, user_packets.user_id, user_packets.master_key_id, COUNT(DISTINCT user_packets.master_key_id) AS candidates\n    FROM user_packets\n        JOIN validMasterKeys USING (master_key_id)\n        LEFT JOIN certs ON (certs.master_key_id = user_packets.master_key_id AND certs.rank = user_packets.rank AND certs.verified > 0)\n    WHERE user_packets.email IS NOT NULL\n    GROUP BY user_packets.email"

    .line 137
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX keys_by_rank ON keys (rank, master_key_id);"

    .line 139
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX uids_by_rank ON user_packets (rank, user_id, master_key_id);"

    .line 140
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX verified_certs ON certs (verified, master_key_id);"

    .line 142
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX uids_by_email ON user_packets (email);"

    .line 144
    invoke-interface {v3, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeySignaturesTableInitialized()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onDowngrade()V
    .locals 5

    move-object/16 v2, p0

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Downgrading the database is not allowed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->onDowngrade()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;II)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading db from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    const-string p0, "ALTER TABLE keys ADD COLUMN has_secret INTEGER"

    .line 157
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :pswitch_1
    :try_start_1
    const-string p0, "ALTER TABLE keys ADD COLUMN key_curve_oid TEXT"

    .line 165
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :pswitch_2
    :try_start_2
    const-string p0, "ALTER TABLE keys ADD COLUMN can_authenticate INTEGER"

    .line 175
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :pswitch_3
    const-string p0, "ALTER TABLE user_ids ADD COLUMN type INTEGER"

    .line 184
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE user_ids ADD COLUMN attribute_data BLOB"

    .line 185
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_4
    :try_start_3
    const-string p0, "CREATE TABLE IF NOT EXISTS api_apps (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    package_name TEXT NOT NULL UNIQUE,\n    package_signature BLOB\n)"

    .line 189
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :pswitch_5
    const-string p0, "DROP TABLE IF EXISTS certs"

    .line 195
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS user_ids"

    .line 196
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS user_packets(master_key_id INTEGER, type INT, user_id TEXT, attribute_data BLOB, is_primary INTEGER, is_revoked INTEGER, rank INTEGER, PRIMARY KEY(master_key_id, rank), FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE)"

    .line 197
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS certs(master_key_id INTEGER,rank INTEGER, key_id_certifier INTEGER, type INTEGER, verified INTEGER, creation INTEGER, data BLOB, PRIMARY KEY(master_key_id, rank, key_id_certifier), FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE,FOREIGN KEY(master_key_id, rank) REFERENCES user_packets(master_key_id, rank) ON DELETE CASCADE)"

    .line 211
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_6
    const-string p0, "CREATE TABLE IF NOT EXISTS updated_keys (master_key_id INTEGER PRIMARY KEY, last_updated INTEGER, FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE)"

    .line 237
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_7
    const-string p0, "CREATE INDEX keys_by_rank ON keys (rank);"

    .line 246
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX uids_by_rank ON user_packets (rank, user_id, master_key_id);"

    .line 247
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX verified_certs ON certs (verified, master_key_id);"

    .line 249
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_8
    const-string p0, "ALTER TABLE user_packets ADD COLUMN name TEXT"

    .line 252
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE user_packets ADD COLUMN email TEXT"

    .line 253
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE user_packets ADD COLUMN comment TEXT"

    .line 254
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_9
    const-string p0, "CREATE INDEX uids_by_name ON user_packets (name COLLATE NOCASE)"

    .line 256
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX uids_by_email ON user_packets (email COLLATE NOCASE)"

    .line 257
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_a
    const-string p0, "ALTER TABLE keys ADD COLUMN is_secure INTEGER"

    .line 263
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_b
    const-string p0, "UPDATE keys SET is_secure = 1;"

    .line 266
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_c
    const-string p0, "CREATE TABLE IF NOT EXISTS overridden_warnings (_id INTEGER PRIMARY KEY AUTOINCREMENT, identifier TEXT NOT NULL UNIQUE )"

    .line 268
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_d
    :try_start_4
    const-string p0, "ALTER TABLE updated_keys ADD COLUMN seen_on_keyservers INTEGER;"

    .line 276
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :pswitch_e
    const-string p0, "CREATE TABLE IF NOT EXISTS api_autocrypt_peers (package_name TEXT NOT NULL, identifier TEXT NOT NULL, last_updated INTEGER NOT NULL, last_seen_key INTEGER NOT NULL, state INTEGER NOT NULL, master_key_id INTEGER, PRIMARY KEY(package_name, identifier), FOREIGN KEY(package_name) REFERENCES api_apps(package_name) ON DELETE CASCADE)"

    .line 282
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_f
    const-string p0, "CREATE TABLE IF NOT EXISTS key_signatures (master_key_id INTEGER NOT NULL, signer_key_id INTEGER NOT NULL, PRIMARY KEY(master_key_id, signer_key_id), FOREIGN KEY(master_key_id) REFERENCES keyrings_public(master_key_id) ON DELETE CASCADE)"

    .line 294
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    :pswitch_10
    :try_start_5
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    const-string p0, "ALTER TABLE api_autocrypt_peers RENAME TO tmp"

    .line 304
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE api_autocrypt_peers (package_name TEXT NOT NULL, identifier TEXT NOT NULL, last_seen INTEGER, last_seen_key INTEGER, is_mutual INTEGER, master_key_id INTEGER, gossip_master_key_id INTEGER, gossip_last_seen_key INTEGER, gossip_origin INTEGER, PRIMARY KEY(package_name, identifier), FOREIGN KEY(package_name) REFERENCES api_apps (package_name) ON DELETE CASCADE)"

    .line 305
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO api_autocrypt_peers (package_name, identifier, last_seen, gossip_last_seen_key, gossip_master_key_id, gossip_origin) SELECT package_name, identifier, last_updated, last_seen_key, master_key_id, 0 FROM tmp WHERE state = 1"

    .line 319
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO api_autocrypt_peers (package_name, identifier, last_seen, gossip_last_seen_key, gossip_master_key_id, gossip_origin) SELECT package_name, identifier, last_updated, last_seen_key, master_key_id, 20 FROM tmp WHERE state = 2"

    .line 323
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO api_autocrypt_peers (package_name, identifier, last_seen, last_seen_key, master_key_id, is_mutual) SELECT package_name, identifier, last_updated, last_seen_key, master_key_id, 0 FROM tmp WHERE state = 3"

    .line 327
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO api_autocrypt_peers (package_name, identifier, last_seen, last_seen_key, master_key_id, is_mutual) SELECT package_name, identifier, last_updated, last_seen_key, master_key_id, 1 FROM tmp WHERE state = 4"

    .line 331
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE tmp"

    .line 335
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 338
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    const-string p0, "CREATE INDEX IF NOT EXISTS uids_by_email ON user_packets (email);"

    .line 341
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP INDEX keys_by_rank"

    .line 342
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX keys_by_rank ON keys(rank, master_key_id);"

    .line 343
    invoke-interface {v3, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    :pswitch_11
    :try_start_6
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->migrateSecretKeysFromDbToLocalStorage(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 355
    :pswitch_12
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->migrateUpdatedKeysToKeyMetadataTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 358
    :pswitch_13
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->renameApiAutocryptPeersTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    :pswitch_14
    const-string v4, "DROP TABLE IF EXISTS api_accounts"

    .line 362
    invoke-interface {v3, v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    :pswitch_15
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->recreateUnifiedKeyView(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_0

    .line 350
    :catch_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error migrating secret keys! This is bad!!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v4

    .line 338
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 339
    throw v4

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private recreateUnifiedKeyView(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 374
    :try_start_0
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    const-string v0, "DROP VIEW IF EXISTS unifiedKeyView"

    .line 377
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW unifiedKeyView AS\n    SELECT keys.master_key_id, keys.fingerprint, MIN(user_packets.rank), user_packets.user_id, user_packets.name, user_packets.email, user_packets.comment, keys.creation, keys.expiry, keys.is_revoked, keys.is_secure, keys.can_certify, certs.verified,\n        (EXISTS (SELECT * FROM user_packets AS dups WHERE dups.master_key_id != keys.master_key_id AND dups.rank = 0 AND dups.name = user_packets.name COLLATE NOCASE AND dups.email = user_packets.email COLLATE NOCASE )) AS has_duplicate_int,\n        (EXISTS (SELECT * FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.has_secret != 0 )) AS has_any_secret_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_encrypt != 0 LIMIT 1) AS has_encrypt_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_sign != 0 LIMIT 1) AS has_sign_key_int,\n        (SELECT key_id FROM keys AS k WHERE k.master_key_id = keys.master_key_id AND k.can_authenticate != 0 LIMIT 1) AS has_auth_key_int,\n        GROUP_CONCAT(DISTINCT aTI.package_name) AS autocrypt_package_names_csv,\n        GROUP_CONCAT(user_packets.user_id, \'|||\') AS user_id_list\n    FROM keys\n         INNER JOIN user_packets ON ( keys.master_key_id = user_packets.master_key_id AND user_packets.type IS NULL AND (user_packets.rank = 0 OR user_packets.is_revoked = 0))\n         LEFT JOIN certs ON ( keys.master_key_id = certs.master_key_id AND certs.verified = 1 )\n         LEFT JOIN autocrypt_peers AS aTI ON ( aTI.master_key_id = keys.master_key_id )\n    WHERE keys.rank = 0\n    GROUP BY keys.master_key_id"

    .line 378
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS validMasterKeys"

    .line 380
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW validMasterKeys AS\nSELECT master_key_id, rank, key_id, key_size, key_curve_oid, algorithm, fingerprint, can_certify, can_sign, can_encrypt, can_authenticate, is_revoked, has_secret, is_secure, creation, expiry\n    FROM keys\n    WHERE rank = 0 AND is_revoked = 0 AND is_secure = 1 AND (expiry IS NULL OR expiry >= strftime(\'%s\', \'now\'))"

    .line 381
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS uidStatus"

    .line 383
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW uidStatus AS\n    SELECT user_packets.email, MIN(certs.verified) AS key_status_int, user_packets.user_id, user_packets.master_key_id, COUNT(DISTINCT user_packets.master_key_id) AS candidates\n    FROM user_packets\n        JOIN validMasterKeys USING (master_key_id)\n        LEFT JOIN certs ON (certs.master_key_id = user_packets.master_key_id AND certs.rank = user_packets.rank AND certs.verified > 0)\n    WHERE user_packets.email IS NOT NULL\n    GROUP BY user_packets.email"

    .line 384
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 389
    throw v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->recreateUnifiedKeyView(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private renameApiAutocryptPeersTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    :try_start_0
    const-string v0, "ALTER TABLE api_autocrypt_peers RENAME TO autocrypt_peers;"

    .line 420
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 426
    throw v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->renameApiAutocryptPeersTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearDatabase()V
    .locals 5

    move-object/16 v2, p0

    .line 482
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from keyrings_public"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from api_allowed_keys"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from api_apps"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->clearDatabase()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 115
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/KeychainDatabase;->supportSQLiteOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 119
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/KeychainDatabase;->supportSQLiteOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeychainDatabase;--->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
