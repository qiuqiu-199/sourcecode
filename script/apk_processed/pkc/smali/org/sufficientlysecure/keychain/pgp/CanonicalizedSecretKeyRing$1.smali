.class Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;
.super Ljava/lang/Object;
.source "CanonicalizedSecretKeyRing.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->secretKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Ljava/util/Iterator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->this$0:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;---><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Ljava/util/Iterator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    move-object/16 v1, p0

    .line 76
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;--->hasNext()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->next()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
    .locals 6

    move-object/16 v3, p0

    .line 81
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->this$0:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;--->next()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public remove()V
    .locals 4

    move-object/16 v1, p0

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;--->remove()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
