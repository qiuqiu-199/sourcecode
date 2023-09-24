.class public Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;
.super Ljava/lang/Object;
.source "FacebookKeyserverClient.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;


# static fields
.field private static final FB_HOST:Ljava/lang/String; = "facebook.com"

.field private static final FB_HOST_WWW:Ljava/lang/String; = "www.facebook.com"

.field private static final FB_KEY_URL_FORMAT:Ljava/lang/String; = "https://www.facebook.com/%s/publickey/download"


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getEntry(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 149
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;-><init>()V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setSecretKey(Z)V

    .line 154
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFbUsername(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getUnorderedUserIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUserIds(Ljava/util/ArrayList;)V

    .line 159
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setPrimaryUserId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getKeyId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyId(J)V

    .line 162
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getFingerprint()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFingerprint([B)V

    .line 165
    :try_start_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->isEC()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "ECDH/ECDSA key - not supported."

    .line 166
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "ECDH/ECDSA keys not supported yet"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setBitStrength(I)V

    .line 171
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v5

    .line 172
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v2

    .line 173
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v5, v2, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setAlgorithm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    const-string v5, "Conversion for bit size, algorithm, or creation date failed."

    .line 175
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Conversion for bit size, algorithm, or creation date failed."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->getEntry(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance()Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;
    .locals 4

    .line 53
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->getInstance()Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getUsernameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 186
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->getUsernameFromUri(Landroid/net/Uri;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isFacebookHost(Landroid/net/Uri;)Z
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v1, "facebook.com"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "www.facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->isFacebookHost(Landroid/net/Uri;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private query(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    const/4 v0, 0x0

    .line 100
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.facebook.com/%s/publickey/download"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetching from Facebook with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 109
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (X11; Linux x86_64; rv:49.0) Gecko/20100101 Firefox/49.0"

    .line 110
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 113
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 123
    :cond_0
    new-instance v2, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found on Facebook.response:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    const-string v1, "IOException at Facebook key download"

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v6, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot connect to Facebook. Check your Internet connection!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Using proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->query(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 138
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Uploading keys not supported yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookKeyserver get: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using Proxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->query(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v4, "data is null"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_0
    sget-object v4, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_PUBLIC_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 93
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 95
    :cond_1
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v4, "data is null"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v4
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :try_start_1
    invoke-static {v4, v3}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->getEntry(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v3, "Parsing retrieved Facebook key failed!"

    .line 72
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v0

    :catch_1
    move-exception v3

    const-string v4, "Failed parsing key from Facebook during search"

    .line 75
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v4, "No valid key found on Facebook"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;--->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
