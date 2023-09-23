.class Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;
.super Ljava/lang/Object;
.source "UncachedPublicKey.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getSignatures()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Ljava/util/Iterator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 255
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->val$it:Ljava/util/Iterator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;---><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Ljava/util/Iterator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    move-object/16 v1, p0

    .line 263
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;--->hasNext()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 255
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->next()Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;
    .locals 5

    move-object/16 v2, p0

    .line 260
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;--->next()Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public remove()V
    .locals 4

    move-object/16 v1, p0

    .line 257
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;--->remove()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
