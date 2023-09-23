.class public Lcom/textuality/keybase/lib/KeybaseQuery;
.super Ljava/lang/Object;
.source "KeybaseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;
    }
.end annotation


# instance fields
.field private connectionClient:Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;

.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->connectionClient:Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;

    return-void
.end method

.method public static snarf(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 88
    new-array v1, v0, [B

    .line 90
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 91
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;
    .locals 6

    .line 97
    new-instance v0, Lcom/textuality/keybase/lib/prover/Fetch;

    invoke-direct {v0}, Lcom/textuality/keybase/lib/prover/Fetch;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, p1

    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge p1, v4, :cond_0

    .line 103
    :try_start_0
    iput-object v1, v0, Lcom/textuality/keybase/lib/prover/Fetch;->mActualUrl:Ljava/lang/String;

    .line 104
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->connectionClient:Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;

    iget-object v5, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->proxy:Ljava/net/Proxy;

    invoke-interface {v4, v3, v5, v2}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;->getUrlResponse(Ljava/net/URL;Ljava/net/Proxy;Z)Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result v4

    const/16 v5, 0x12d

    if-ne v4, v5, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 108
    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Location"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result p1

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result p1

    const/16 v2, 0x12c

    if-ge p1, v2, :cond_1

    .line 114
    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseQuery;->snarf(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/textuality/keybase/lib/prover/Fetch;->mBody:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch failed, status "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/textuality/keybase/lib/prover/Fetch;->mProblem:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/textuality/keybase/lib/prover/Fetch;->mProblem:Ljava/lang/String;

    goto :goto_2

    .line 120
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/textuality/keybase/lib/prover/Fetch;->mProblem:Ljava/lang/String;

    :goto_2
    return-object v0
.end method

.method public getFromKeybase(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->connectionClient:Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;

    invoke-interface {v1}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;->getKeybaseBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "utf8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->connectionClient:Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;

    iget-object v2, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->proxy:Ljava/net/Proxy;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;->getUrlResponse(Ljava/net/URL;Ljava/net/Proxy;Z)Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseQuery;->snarf(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "status"

    aput-object v4, v0, v2

    const-string v2, "code"

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/textuality/keybase/lib/JWalk;->getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api.keybase.io query failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using proxy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->queryScrewup(Ljava/lang/String;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 75
    :try_start_2
    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api.keybase.io query error (status="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->networkScrewup(Ljava/lang/String;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->networkScrewup(Ljava/lang/Exception;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
.end method

.method public search(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/textuality/keybase/lib/Match;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "_/api/1.0/user/autocomplete.json?q="

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/textuality/keybase/lib/KeybaseQuery;->getFromKeybase(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    :try_start_0
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "completions"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/textuality/keybase/lib/JWalk;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;-><init>(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery;->proxy:Ljava/net/Proxy;

    return-void
.end method
