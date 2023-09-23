.class final Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;
.super Ljava/lang/Object;
.source "UncachedKeyRing.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow<",
        "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;",
        ">;"
    }
.end annotation


# instance fields
.field mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

.field mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 195
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->val$stream:Ljava/io/InputStream;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 197
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 198
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;---><init>(Ljava/io/InputStream;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private cacheNext()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 201
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    if-nez v0, :cond_2

    .line 209
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->val$stream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 210
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->val$stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 213
    :cond_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->val$stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 215
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->val$stream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 216
    new-instance v1, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    .line 221
    :cond_2
    :goto_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    instance-of v1, v0, Lorg/bouncycastle/openpgp/PGPKeyRing;

    if-nez v1, :cond_3

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping object of bad type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in stream"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 228
    :cond_3
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    check-cast v0, Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 232
    iput-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mObjectFactory:Lorg/bouncycastle/openpgp/PGPObjectFactory;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;--->cacheNext()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasNext()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 241
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->cacheNext()V

    .line 242
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;--->hasNext()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->next()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->cacheNext()V

    .line 249
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;->mNext:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 252
    throw v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;--->next()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
