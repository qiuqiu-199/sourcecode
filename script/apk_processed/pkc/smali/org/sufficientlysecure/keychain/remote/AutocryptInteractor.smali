.class public Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;
.super Ljava/lang/Object;
.source "AutocryptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;,
        Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;
    }
.end annotation


# static fields
.field private static final AUTOCRYPT_DISCOURAGE_THRESHOLD_MILLIS:J = 0xb43e9400L


# instance fields
.field private autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

.field private keyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

.field private final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    .line 48
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->keyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    .line 49
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;---><init>(Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private determineAutocryptGossipRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 207
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->hasGossipKey()Z

    move-result v0

    .line 208
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isGossipKeyRevoked()Z

    move-result v1

    .line 209
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isGossipKeyExpired()Z

    move-result v2

    .line 210
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isGossipKeyVerified()Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_master_key_id()Ljava/lang/Long;

    move-result-object v0

    .line 217
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_GOSSIP:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-direct {v1, v5, v2, v0, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->determineAutocryptGossipRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private determineAutocryptKeyRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;
    .locals 16

    move-object/16 v13, p0

    move-object/16 v14, p1

    .line 178
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    .line 180
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->master_key_id()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 182
    :goto_0
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isKeyRevoked()Z

    move-result v5

    .line 183
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isKeyExpired()Z

    move-result v6

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen()Ljava/util/Date;

    move-result-object v4

    .line 189
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen_key()Ljava/util/Date;

    move-result-object v5

    .line 190
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->isKeyVerified()Z

    move-result v14

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide v9, 0xb43e9400L

    sub-long v11, v7, v9

    cmp-long v4, v5, v11

    if-gez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 194
    new-instance v2, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_OLD:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-direct {v2, v0, v3, v1, v14}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V

    return-object v2

    .line 197
    :cond_3
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->is_mutual()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    new-instance v2, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->MUTUAL:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-direct {v2, v0, v3, v1, v14}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V

    return-object v2

    .line 201
    :cond_4
    new-instance v2, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->AVAILABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-direct {v2, v0, v3, v1, v14}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V

    return-object v2

    :cond_5
    :goto_1
    const/4 v14, 0x0

    return-object v14

    const-string v15, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->determineAutocryptKeyRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private determineAutocryptRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 167
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->determineAutocryptKeyRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 170
    :cond_0
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->determineAutocryptGossipRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 173
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;Ljava/lang/Long;Z)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->determineAutocryptRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 39
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    move-result-object v0

    .line 40
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v2

    .line 42
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    invoke-direct {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;-><init>(Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Ljava/lang/String;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private importAutocryptKeyData(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 128
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->keyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->savePublicKeyRing(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v4, "Keychain"

    const/4 v0, 0x1

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Error inserting key - ignoring!"

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :cond_0
    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->importAutocryptKeyData(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseAndImportAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 119
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->parseAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->importAutocryptKeyData(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->parseAndImportAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 140
    :try_start_0
    invoke-virtual {v5}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->getKeyData()[B

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v5, "Keychain"

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Found secret key in autocrypt id! - Ignoring"

    aput-object v3, v2, v1

    invoke-static {v5, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v5

    :catch_0
    const-string v5, "Keychain"

    .line 142
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error parsing public key! - Ignoring"

    aput-object v3, v2, v1

    invoke-static {v5, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->parseAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public varargs determineAutocryptRecommendations([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 153
    new-instance v0, Ljava/util/HashMap;

    array-length v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getAutocryptKeyStatus(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;

    .line 156
    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->determineAutocryptRecommendation(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;

    move-result-object v1

    .line 157
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptRecommendationResult;->peerId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->determineAutocryptRecommendations([Ljava/lang/String;)Ljava/util/Map;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method updateAutocryptPeerGossipState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 88
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getAutocryptPeer(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    move-result-object v0

    .line 89
    invoke-virtual {v10}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->getEffectiveDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_last_seen_key()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-virtual {v10}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->hasKeyData()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 104
    :cond_2
    invoke-direct {v8, v10}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->parseAndImportAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v10

    if-nez v10, :cond_3

    return-void

    .line 111
    :cond_3
    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    .line 113
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-object v3, v9

    invoke-virtual/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->updateKeyGossip(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->updateAutocryptPeerGossipState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method updateAutocryptPeerState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 53
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getAutocryptPeer(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    move-result-object v0

    .line 54
    invoke-virtual {v10}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->getEffectiveDate()Ljava/util/Date;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen_key()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v4, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen()Ljava/util/Date;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    :cond_3
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v4}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->insertOrUpdateLastSeen(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 69
    :cond_4
    invoke-virtual {v10}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->hasKeyData()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    invoke-direct {v8, v10}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->parseAndImportAutocryptKeyData(Lorg/openintents/openpgp/AutocryptPeerUpdate;)Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 80
    :cond_6
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    .line 82
    invoke-virtual {v10}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->getPreferEncrypt()Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    move-result-object v10

    sget-object v1, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    if-ne v10, v1, :cond_7

    const/4 v10, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 84
    :goto_1
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v3, v9

    invoke-virtual/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->updateKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JZ)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->updateAutocryptPeerState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateKeyGossipFromDedup(Ljava/lang/String;J)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-wide/16 v9, p2

    .line 225
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v6, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-object v2, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->updateKeyGossip(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->updateKeyGossipFromDedup(Ljava/lang/String;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateKeyGossipFromSignature(Ljava/lang/String;Ljava/util/Date;J)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-wide/16 p0, p3

    .line 221
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->autocryptPeerDao:Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->packageName:Ljava/lang/String;

    sget-object v6, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-object v2, v8

    move-object v3, v9

    move-wide v4, p0

    invoke-virtual/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->updateKeyGossip(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;--->updateKeyGossipFromSignature(Ljava/lang/String;Ljava/util/Date;J)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
