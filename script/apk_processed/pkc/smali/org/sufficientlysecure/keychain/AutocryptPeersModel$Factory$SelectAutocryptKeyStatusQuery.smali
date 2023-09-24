.class final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectAutocryptKeyStatusQuery"
.end annotation


# instance fields
.field private final identifier:[Ljava/lang/String;

.field private final package_name:Ljava/lang/String;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    .line 333
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;->this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT autocryptPeer.*,\n        (CASE WHEN ac_key.expiry IS NULL THEN 0 WHEN ac_key.expiry > strftime(\'%s\', \'now\') THEN 0 ELSE 1 END) AS key_is_expired_int,\n        (CASE WHEN gossip_key.expiry IS NULL THEN 0 WHEN gossip_key.expiry > strftime(\'%s\', \'now\') THEN 0 ELSE 1 END) AS gossip_key_is_expired_int,\n        ac_key.is_revoked AS key_is_revoked_int,\n        gossip_key.is_revoked AS gossip_key_is_revoked_int,\n        EXISTS (SELECT * FROM certs WHERE certs.master_key_id = autocryptPeer.master_key_id AND verified = 1 ) AS key_is_verified_int,\n        EXISTS (SELECT * FROM certs WHERE certs.master_key_id = autocryptPeer.gossip_master_key_id AND verified = 1 ) AS gossip_key_is_verified_int\n    FROM autocrypt_peers AS autocryptPeer\n        LEFT JOIN keys AS ac_key ON (ac_key.master_key_id = autocryptPeer.master_key_id AND ac_key.rank = 0)\n        LEFT JOIN keys AS gossip_key ON (gossip_key.master_key_id = gossip_master_key_id AND gossip_key.rank = 0)\n    WHERE package_name = ?1 AND identifier IN "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    .line 344
    invoke-static {v0}, Lcom/squareup/sqldelight/internal/QuestionMarks;->ofSize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autocrypt_peers"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "keys"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "certs"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    .line 334
    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 347
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;->package_name:Ljava/lang/String;

    .line 348
    iput-object p0, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;->identifier:[Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;[Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 353
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;->package_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v7, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 357
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;->identifier:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v5, v2, 0x1

    .line 358
    invoke-interface {v7, v2, v4}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectAutocryptKeyStatusQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
