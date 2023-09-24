.class public Lcom/textuality/keybase/lib/prover/Twitter;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "Twitter.java"


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method

.method private endsWithDigits(Ljava/lang/String;)Z
    .locals 3

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/textuality/keybase/lib/prover/Twitter;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    .line 44
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "sig_id_short"

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mShortenedMessageHash:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getProofUrl()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 61
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v6, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    .line 66
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "twitter.com"

    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/status/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-direct {p0, v1}, Lcom/textuality/keybase/lib/prover/Twitter;->endsWithDigits(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unacceptable Twitter proof Url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object p1

    const-string v1, "</head>"

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 79
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    const-string v1, "</head> not found in proof tweet"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    const-string v1, "Proof tweet is malformed."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 83
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "<title>"

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v5, "</title>"

    .line 86
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v1, v4, :cond_6

    if-eq v5, v4, :cond_6

    if-lt v1, v5, :cond_4

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mShortenedMessageHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    const-string v1, "Encoded message not found in proof tweet."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 88
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bogus head locations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    const-string v1, "Unable to find proof tweet header."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_0
    move-object v2, v1

    .line 108
    :catch_1
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparsable tweet URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_2
    move-exception p1

    .line 106
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

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

    :catch_3
    move-exception p1

    .line 104
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Twitter;->mLog:Ljava/util/List;

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

.method public rawMessageCheckRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
