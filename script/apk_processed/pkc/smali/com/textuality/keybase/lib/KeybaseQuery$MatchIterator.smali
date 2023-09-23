.class Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;
.super Ljava/lang/Object;
.source "KeybaseQuery.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/textuality/keybase/lib/KeybaseQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/textuality/keybase/lib/Match;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/textuality/keybase/lib/Match;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastIndex:I

.field private final mMatches:Lorg/json/JSONArray;

.field private mNextMatch:Lcom/textuality/keybase/lib/Match;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mMatches:Lorg/json/JSONArray;

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mLastIndex:I

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mNextMatch:Lcom/textuality/keybase/lib/Match;

    .line 138
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->hasNext()Z

    return-void
.end method

.method private findNext()I
    .locals 3

    .line 144
    :try_start_0
    iget v0, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mLastIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mMatches:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    new-instance v1, Lcom/textuality/keybase/lib/Match;

    iget-object v2, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mMatches:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/textuality/keybase/lib/Match;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mNextMatch:Lcom/textuality/keybase/lib/Match;

    .line 146
    iget-object v1, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mNextMatch:Lcom/textuality/keybase/lib/Match;

    invoke-virtual {v1}, Lcom/textuality/keybase/lib/Match;->hasKey()Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->findNext()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/textuality/keybase/lib/Match;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/textuality/keybase/lib/Match;
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->findNext()I

    move-result v0

    iput v0, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mLastIndex:I

    .line 166
    iget v0, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mLastIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->mNextMatch:Lcom/textuality/keybase/lib/Match;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/KeybaseQuery$MatchIterator;->next()Lcom/textuality/keybase/lib/Match;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UserIterator.remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
