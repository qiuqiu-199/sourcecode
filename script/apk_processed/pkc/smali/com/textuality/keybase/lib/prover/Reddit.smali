.class public Lcom/textuality/keybase/lib/prover/Reddit;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "Reddit.java"


# instance fields
.field private mApiUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mApiUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 5

    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/Reddit;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    .line 43
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sig_id_short"

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mShortenedMessageHash:Ljava/lang/String;

    .line 44
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "api_url"

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mApiUrl:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mApiUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 56
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getActualUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v4, "reddit.com"

    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "www.reddit.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad host for reddit proof: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 66
    :cond_1
    new-instance p1, Ljava/net/URL;

    iget-object v4, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mApiUrl:Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v4, "/r/KeybaseProofs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    const-string v1, "Reddit proof not from /r/KeybaseProofs"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 72
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "data"

    .line 73
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "children"

    .line 74
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "data"

    .line 76
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "author"

    .line 78
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Author in Reddit proof is not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_3
    const-string v1, "title"

    .line 86
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mShortenedMessageHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    const-string v1, "Reddit proof doesn\u2019t contain signed PGP message"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_4
    return v2

    :catch_0
    move-exception p1

    .line 99
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL for Reddit proof: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 97
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken JSON message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    .line 95
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keybase API problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/textuality/keybase/lib/KeybaseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0
.end method

.method public getPresenceLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "/r/KeybaseProofs"

    return-object v0
.end method

.method public getPresenceUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "https://reddit.com/r/KeybaseProofs"

    return-object v0
.end method

.method public getProofUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Reddit;->mApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public rawMessageCheckRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
