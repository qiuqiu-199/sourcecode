.class public Lcom/textuality/keybase/lib/User;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/textuality/keybase/lib/User$ProofIterator;
    }
.end annotation


# instance fields
.field private final mJson:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/textuality/keybase/lib/User;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static findByFingerprint(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lcom/textuality/keybase/lib/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "_/api/1.0/user/lookup.json?key_fingerprint="

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/textuality/keybase/lib/KeybaseQuery;->getFromKeybase(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, 0x1

    .line 44
    :try_start_0
    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "them"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/textuality/keybase/lib/JWalk;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key retrieval produced "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " results"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/textuality/keybase/lib/KeybaseException;->queryScrewup(Ljava/lang/String;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p0

    throw p0

    .line 49
    :cond_0
    new-instance p1, Lcom/textuality/keybase/lib/User;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/textuality/keybase/lib/User;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 51
    invoke-static {p0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p0

    throw p0
.end method

.method public static findByUsername(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lcom/textuality/keybase/lib/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "_/api/1.0/user/lookup.json?username="

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/textuality/keybase/lib/KeybaseQuery;->getFromKeybase(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, 0x1

    .line 32
    :try_start_0
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "them"

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/textuality/keybase/lib/JWalk;->getObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance p1, Lcom/textuality/keybase/lib/User;

    invoke-direct {p1, p0}, Lcom/textuality/keybase/lib/User;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 34
    invoke-static {p0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p0

    throw p0
.end method

.method public static keyForUsername(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/textuality/keybase/lib/User;->findByUsername(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lcom/textuality/keybase/lib/User;

    move-result-object p0

    invoke-virtual {p0}, Lcom/textuality/keybase/lib/User;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/User;->mJson:Lorg/json/JSONObject;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_keys"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "primary"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bundle"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method

.method public getProofs()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/textuality/keybase/lib/Proof;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Lcom/textuality/keybase/lib/User$ProofIterator;

    iget-object v1, p0, Lcom/textuality/keybase/lib/User;->mJson:Lorg/json/JSONObject;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "proofs_summary"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "all"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/textuality/keybase/lib/JWalk;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/textuality/keybase/lib/User$ProofIterator;-><init>(Lcom/textuality/keybase/lib/User;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    throw v0
.end method
