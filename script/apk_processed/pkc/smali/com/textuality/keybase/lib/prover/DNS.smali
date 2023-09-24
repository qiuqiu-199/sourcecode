.class public Lcom/textuality/keybase/lib/prover/DNS;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "DNS.java"


# instance fields
.field private mDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkDnsTxt(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;)Z"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 69
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/textuality/keybase/lib/prover/DNS;->mShortenedMessageHash:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/DNS;->mLog:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TXT records"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mLog:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No DNS TXT record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contains signed PGP message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public dnsTxtCheckRequired()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/DNS;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 4

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/DNS;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    .line 40
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sig_id_short"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mShortenedMessageHash:Ljava/lang/String;
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 49
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mLog:Ljava/util/List;

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

    :catch_1
    move-exception p1

    .line 47
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/DNS;->mLog:Ljava/util/List;

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

.method public getProofUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public rawMessageCheckRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
