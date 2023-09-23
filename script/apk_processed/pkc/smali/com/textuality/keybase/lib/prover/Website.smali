.class public Lcom/textuality/keybase/lib/prover/Website;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "Website.java"


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 6

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Website;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/Website;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    .line 44
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "api_url"

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getActualUrl()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v3, p0, Lcom/textuality/keybase/lib/prover/Website;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    .line 64
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proof either doesn\u2019t come from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or isn\u2019t at an HTTP URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Website;->mPgpMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

    const-string v1, "Website claiming post doesn\u2019t contain signed PGP message"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    return v2

    .line 83
    :catch_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

    const-string v1, "Malformed proof URL"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 81
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

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

    .line 79
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Website;->mLog:Ljava/util/List;

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

    .line 90
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Website;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
