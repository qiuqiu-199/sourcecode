.class Lcom/textuality/keybase/lib/User$ProofIterator;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/textuality/keybase/lib/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProofIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/textuality/keybase/lib/Proof;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/textuality/keybase/lib/Proof;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArray:Lorg/json/JSONArray;

.field private mLastIndex:I

.field final synthetic this$0:Lcom/textuality/keybase/lib/User;


# direct methods
.method public constructor <init>(Lcom/textuality/keybase/lib/User;Lorg/json/JSONArray;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->this$0:Lcom/textuality/keybase/lib/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mLastIndex:I

    .line 78
    iput-object p2, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 83
    iget v0, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mLastIndex:I

    iget-object v1, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/textuality/keybase/lib/Proof;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/textuality/keybase/lib/Proof;
    .locals 3

    .line 89
    :try_start_0
    new-instance v0, Lcom/textuality/keybase/lib/Proof;

    iget-object v1, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mArray:Lorg/json/JSONArray;

    iget v2, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mLastIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/textuality/keybase/lib/User$ProofIterator;->mLastIndex:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/textuality/keybase/lib/Proof;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/User$ProofIterator;->next()Lcom/textuality/keybase/lib/Proof;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProofIterator doesn\u2019t support remove"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
