.class public abstract Lcom/textuality/keybase/lib/prover/Prover;
.super Ljava/lang/Object;
.source "Prover.java"


# instance fields
.field mFingerprintUsedInProof:Ljava/lang/String;

.field final mLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPayload:Ljava/lang/String;

.field mPgpMessage:Ljava/lang/String;

.field final mProof:Lcom/textuality/keybase/lib/Proof;

.field mShortenedMessageHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mFingerprintUsedInProof:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/textuality/keybase/lib/prover/Prover;->mProof:Lcom/textuality/keybase/lib/Proof;

    return-void
.end method

.method public static findProverFor(Lcom/textuality/keybase/lib/Proof;)Lcom/textuality/keybase/lib/prover/Prover;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :pswitch_0
    new-instance v0, Lcom/textuality/keybase/lib/prover/Website;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/Website;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/textuality/keybase/lib/prover/Twitter;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/Twitter;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/textuality/keybase/lib/prover/Reddit;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/Reddit;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 83
    :pswitch_3
    new-instance v0, Lcom/textuality/keybase/lib/prover/HackerNews;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/HackerNews;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 80
    :pswitch_4
    new-instance v0, Lcom/textuality/keybase/lib/prover/GitHub;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/GitHub;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 81
    :pswitch_5
    new-instance v0, Lcom/textuality/keybase/lib/prover/DNS;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/DNS;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    .line 84
    :pswitch_6
    new-instance v0, Lcom/textuality/keybase/lib/prover/Coinbase;

    invoke-direct {v0, p0}, Lcom/textuality/keybase/lib/prover/Coinbase;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkDnsTxt(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public checkFingerprint(Ljava/lang/String;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mFingerprintUsedInProof:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkRawMessageBytes(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    .line 134
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v2, 0x2000

    .line 135
    new-array v2, v2, [B

    .line 137
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    invoke-virtual {v1, v2, v0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Prover;->mShortenedMessageHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    const-string v1, "Proof post doesn\u2019t contain correct encoded message."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 149
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking raw message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :catch_1
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    const-string v1, "SHA-256 not available"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v0
.end method

.method public dnsTxtCheckRequired()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
.end method

.method public getLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    return-object v0
.end method

.method public getPgpMessage()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mPgpMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenceLabel()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    .line 175
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public getPresenceUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProofUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v0}, Lcom/textuality/keybase/lib/Proof;->getHumanUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawMessageCheckRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "_/api/1.0/sig/get.json?sig_id="

    .line 115
    invoke-virtual {p1, v0, p2}, Lcom/textuality/keybase/lib/KeybaseQuery;->getFromKeybase(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    const-string v0, "Successfully retrieved sig from Keybase"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 118
    new-array v0, p2, [Ljava/lang/String;

    const-string v1, "sigs"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/textuality/keybase/lib/JWalk;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    new-array v0, p2, [Ljava/lang/String;

    const-string v1, "payload_json"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mPayload:Ljava/lang/String;

    .line 120
    new-array v0, p2, [Ljava/lang/String;

    const-string v1, "sig"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mPgpMessage:Ljava/lang/String;

    .line 121
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "fingerprint"

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/textuality/keybase/lib/prover/Prover;->mFingerprintUsedInProof:Ljava/lang/String;

    .line 123
    iget-object p2, p0, Lcom/textuality/keybase/lib/prover/Prover;->mLog:Ljava/util/List;

    const-string v0, "Extracted payload & message from sig"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Prover;->mPayload:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
