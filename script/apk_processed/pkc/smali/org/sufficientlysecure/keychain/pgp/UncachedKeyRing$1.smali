.class Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;
.super Ljava/lang/Object;
.source "UncachedKeyRing.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getPublicKeys()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/Iterator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 123
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;->this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;---><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/Iterator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    move-object/16 v1, p0

    .line 131
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;--->hasNext()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;->next()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
    .locals 5

    move-object/16 v2, p0

    .line 128
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;--->next()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public remove()V
    .locals 4

    move-object/16 v1, p0

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;--->remove()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
