.class public Lcom/textuality/keybase/lib/prover/HackerNews;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "HackerNews.java"


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 7

    const/4 v0, 0x0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/HackerNews;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    .line 39
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "sig_id_short"

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mShortenedMessageHash:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getProofUrl()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v3

    .line 55
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v6, "http"

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const-string v5, "news.ycombinator.com"

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mShortenedMessageHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

    const-string v1, "Hacker News post doesn\u2019t contain signed PGP message"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_3
    return v2

    .line 61
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proof either doesn\u2019t come from news.ycombinator.com or isn\u2019t specific to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 77
    :catch_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

    const-string v1, "Malformed URL for proof post"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 75
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

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

    goto :goto_1

    :catch_2
    move-exception p1

    .line 73
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mLog:Ljava/util/List;

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

    :goto_1
    return v0
.end method

.method public getPresenceLabel()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/HackerNews;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    .line 86
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    invoke-super {p0}, Lcom/textuality/keybase/lib/prover/Prover;->getPresenceLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public rawMessageCheckRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
