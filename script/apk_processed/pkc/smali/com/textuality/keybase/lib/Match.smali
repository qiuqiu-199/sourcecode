.class public Lcom/textuality/keybase/lib/Match;
.super Ljava/lang/Object;
.source "Match.java"


# instance fields
.field private final mComponents:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "components"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/textuality/keybase/lib/JWalk;->getObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getAlgorithmId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key_fingerprint"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "algo"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method

.method public getBitStrength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key_fingerprint"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "nbits"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key_fingerprint"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "val"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "full_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "val"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/Match;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, " "

    const-string v2, ""

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProofLabels()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 91
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Twitter: @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "twitter"

    aput-object v7, v6, v2

    const-string v7, "val"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GitHub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "github"

    aput-object v7, v6, v2

    const-string v7, "val"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :catch_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reddit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "reddit"

    aput-object v7, v6, v2

    const-string v7, "val"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :catch_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hacker News: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "hackernews"

    aput-object v7, v6, v2

    const-string v7, "val"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    :catch_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Coinbase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "coinbase"

    aput-object v6, v1, v2

    const-string v6, "val"

    aput-object v6, v1, v3

    invoke-static {v5, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 116
    :catch_4
    :try_start_5
    iget-object v1, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "websites"

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/textuality/keybase/lib/JWalk;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 117
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x0

    .line 119
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 120
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "val"

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Web: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 126
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v2, v6, :cond_1

    const-string v6, ", "

    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "username"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "val"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method

.method public hasKey()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Match;->mComponents:Lorg/json/JSONObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "key_fingerprint"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/textuality/keybase/lib/JWalk;->optObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method
