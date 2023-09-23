.class public Lcom/textuality/keybase/lib/prover/GitHub;
.super Lcom/textuality/keybase/lib/prover/Prover;
.source "GitHub.java"


# static fields
.field private static final sAllowedApiBases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https://gist.githubusercontent.com/"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "https://gist.github.com/"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/textuality/keybase/lib/prover/GitHub;->sAllowedApiBases:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/prover/Prover;-><init>(Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method


# virtual methods
.method public fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z
    .locals 13

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Proof;->getSigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/textuality/keybase/lib/prover/GitHub;->readSig(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    .line 41
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "api_url"

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v3, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mProof:Lcom/textuality/keybase/lib/Proof;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/Proof;->getNametag()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v1}, Lcom/textuality/keybase/lib/KeybaseQuery;->fetchProof(Ljava/lang/String;)Lcom/textuality/keybase/lib/prover/Fetch;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->problem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 48
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mLog:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getActualUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 61
    sget-object v6, Lcom/textuality/keybase/lib/prover/GitHub;->sAllowedApiBases:[Ljava/lang/String;

    array-length v7, v6

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v11, v6, v5

    .line 62
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 64
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2f

    .line 65
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    const/4 v9, 0x1

    .line 67
    :cond_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 71
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/textuality/keybase/lib/prover/Fetch;->getBody()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mPgpMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 78
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mLog:Ljava/util/List;

    const-string v1, "GitHub gist doesn\u2019t contain signed PGP message"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_5
    return v2

    .line 72
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mLog:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bogus GitHub API URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 87
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mLog:Ljava/util/List;

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

    goto :goto_2

    :catch_1
    move-exception p1

    .line 85
    iget-object v1, p0, Lcom/textuality/keybase/lib/prover/GitHub;->mLog:Ljava/util/List;

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

    :goto_2
    return v0
.end method
