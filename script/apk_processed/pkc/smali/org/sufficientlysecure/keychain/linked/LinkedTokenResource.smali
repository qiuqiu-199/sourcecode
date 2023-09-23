.class public abstract Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.super Lorg/sufficientlysecure/keychain/linked/LinkedResource;
.source "LinkedTokenResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;
    }
.end annotation


# static fields
.field public static magicPattern:Ljava/util/regex/Pattern;


# instance fields
.field protected final mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSubUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\\[Verifying my (?:Open|)?PGP key(?::|) openpgp4fpr:([a-zA-Z0-9]+)]"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->magicPattern:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 57
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/linked/LinkedResource;-><init>()V

    .line 58
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mFlags:Ljava/util/Set;

    .line 59
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mParams:Ljava/util/HashMap;

    .line 60
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mSubUri:Ljava/net/URI;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;---><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static findResourceType(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 126
    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 138
    :cond_1
    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->findResourceType(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static fromUri(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
    .locals 14

    move-object/16 v11, p0

    const-string v0, "openpgpid+token"

    .line 83
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "openpgpid+cookie"

    .line 84
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v11, "unknown uri scheme in (suspected) linked id packet"

    .line 85
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v11, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v11}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v11, "non-opaque uri in (suspected) linked id packet"

    .line 90
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v11, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 94
    :cond_1
    invoke-virtual {v11}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    const-string v0, "@"

    .line 95
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v11, "unknown uri scheme in linked id packet"

    .line 96
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v11, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string v0, "@"

    const/4 v1, 0x2

    .line 100
    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    .line 101
    aget-object v3, v11, v0

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 103
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 104
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 105
    aget-object v6, v11, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    aget-object v11, v11, v2

    const-string v6, ";"

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 107
    array-length v6, v11

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v11, v7

    const-string v9, "="

    .line 108
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 109
    array-length v10, v9

    if-ne v10, v0, :cond_3

    .line 110
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_3
    aget-object v8, v9, v2

    aget-object v9, v9, v0

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v4, v5, v3}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->findResourceType(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v11

    return-object v11

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->fromUri(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static generate([B)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    const-string v0, "[Verifying my OpenPGP key: openpgp4fpr:%s]"

    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->generate([B)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getCertificatePinner(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 249
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 250
    array-length v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v7, v3

    const/4 v5, 0x1

    .line 251
    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    invoke-virtual {v0, v6, v5}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v6

    return-object v6

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->getCertificatePinner(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static varargs getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 260
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->getCertificatePinner(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getSimpleClientPinned(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient;

    move-result-object v3

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getSimpleClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 268
    :goto_0
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    .line 272
    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    if-eq v3, v1, :cond_1

    .line 275
    new-instance v2, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 278
    :cond_1
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected abstract fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public getFlags()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 69
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mFlags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->getFlags()Ljava/util/Set;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mParams:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->getParams()Ljava/util/HashMap;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubUri()Ljava/net/URI;
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mSubUri:Ljava/net/URI;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->getSubUri()Ljava/net/URI;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected matchResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 221
    sget-object v1, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->magicPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->matchResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;)Ljava/util/regex/Matcher;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toUri()Ljava/net/URI;
    .locals 9

    move-object/16 v6, p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openpgpid+token:"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mFlags:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ";"

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mParams:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    const-string v3, ";"

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "@"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->mSubUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->toUri()Ljava/net/URI;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verify(Landroid/content/Context;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 185
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 186
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 191
    :try_start_0
    invoke-virtual {v6, v7, v0, v3}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v4, "json error"

    .line 202
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_FORMAT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v7, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v4, "io error"

    .line 199
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v7, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 197
    :catch_2
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_URL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v7, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    :catch_3
    move-exception v7

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-virtual {v0, v4, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_0

    .line 208
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    invoke-direct {v7, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v7

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource data: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v6, v0, v3, v7, v8}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->verifyString(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    move-result-object v7

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->verify(Landroid/content/Context;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected verifyString(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 228
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_MATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v0, v4, 0x1

    .line 229
    invoke-virtual {v2, v3, v0, p0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->matchResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 231
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_MATCH_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 p0, 0x2

    invoke-virtual {v3, v4, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 232
    new-instance v4, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    invoke-direct {v4, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v4

    .line 235
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 238
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FP_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, p0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 239
    new-instance v4, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    invoke-direct {v4, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v4

    .line 241
    :cond_1
    sget-object p0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FP_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, p0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 243
    new-instance v4, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    const/4 p0, 0x0

    invoke-direct {v4, p0, v3}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;--->verifyString(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
