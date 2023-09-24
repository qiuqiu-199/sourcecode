.class public Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;
.super Ljava/lang/Object;
.source "PublicKeyRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final securityTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getFingerprints()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    .line 64
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->securityTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public retrieveContentUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 203
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 206
    :try_start_0
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 208
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_OPEN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 209
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-nez v9, :cond_0

    .line 211
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_ERROR_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 212
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v9

    return-object v9

    .line 215
    :cond_0
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;

    move-result-object v9

    .line 216
    :goto_0
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 218
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 219
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->containsKeyWithAnyFingerprint(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 221
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v9

    invoke-static {v0, v4, v5, v9}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithKeyringdata(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J[B)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v9

    return-object v9

    .line 223
    :cond_1
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_MISMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v3, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 226
    :cond_2
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_ERROR_NO_MATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v3, "error reading keyring from file"

    .line 228
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v3, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_CURI_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 232
    :goto_1
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v9

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;--->retrieveContentUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public retrieveKeyserver()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 10

    move-object/16 v7, p0

    .line 169
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 171
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    .line 172
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v2

    .line 174
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 177
    :try_start_0
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v5, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    .line 180
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v1, v5, v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v1

    .line 183
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->containsKeyWithAnyFingerprint(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_FP_MISMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 185
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_FP_MATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 190
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 191
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v5, v6, v1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithKeyringdata(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J[B)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v1
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 195
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const-string v2, "error retrieving key from keyserver"

    .line 196
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :catch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_KS_ERROR_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 199
    :goto_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v0

    return-object v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;--->retrieveKeyserver()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public retrieveLocal()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 13

    move-object/16 v10, p0

    .line 68
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 69
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 70
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 72
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 73
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getKeyIdFromFingerprint([B)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_SEARCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v1, v4, v5, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v4, 0x2

    .line 80
    :try_start_0
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_1

    .line 82
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v5, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 94
    :cond_1
    sget-object v9, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v6

    aget v6, v9, v6

    packed-switch v6, :pswitch_data_0

    .line 110
    new-instance v5, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 105
    :pswitch_0
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 106
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithMasterKeyId(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v5

    return-object v5

    .line 97
    :pswitch_1
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 98
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 99
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithMasterKeyIdAndSecretAvailable(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v5

    return-object v5

    :goto_1
    const-string v6, "Unhandled SecretKeyType!"

    .line 110
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v5, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_LOCAL_NONE_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v0, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 119
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;--->retrieveLocal()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public retrieveUri()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 12

    move-object/16 v9, p0

    .line 123
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 125
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->securityTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 128
    :try_start_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_NULL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 131
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v1

    return-object v1

    .line 134
    :cond_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_FETCHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 136
    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 138
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_ERROR_PARSE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 139
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v1

    return-object v1

    .line 142
    :cond_1
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getSimpleClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v4, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_ERROR_FETCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 149
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;

    move-result-object v1

    .line 150
    :cond_3
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 152
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_TEST:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v3, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 153
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->fingerprints:Ljava/util/List;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->containsKeyWithAnyFingerprint(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 155
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v5, v6, v1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithKeyringdata(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J[B)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v1

    return-object v1

    .line 159
    :cond_4
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_ERROR_NO_MATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_RET_URI_ERROR_FETCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const-string v3, "error retrieving key from uri"

    .line 162
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v0

    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;--->retrieveUri()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
