.class public Lcom/textuality/keybase/lib/prover/Coinbase;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "Coinbase.java"


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 5

    const/4 v0, 0x0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/Coinbase;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getProofUrl()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1, v1}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 52
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "coinbase.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v4}, Lcom/textuality/keybase/lib/Proof;->getHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/public-key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getActualUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coinbase.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Coinbase proof doesn\u2019t come from coinbase.com: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getActualUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mPgpMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

    const-string v1, "Coinbase proof doesn\u2019t contain signed PGP message"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 56
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bogus Coinbase proof URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

    const-string v1, "Malformed Coinbase proof URL"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 77
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

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

    .line 75
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Coinbase;->mLog:Ljava/util/List;

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
