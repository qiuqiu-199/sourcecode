.class public Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;
.super Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
.source "CanonicalizedSecretKeyRing.java"


# instance fields
.field private mRing:Lorg/bouncycastle/openpgp/PGPSecretKeyRing;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 39
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    .line 40
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;---><init>(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 45
    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    .line 46
    new-instance v5, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v5, v4}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>([B)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/openpgp/PGPKeyRing;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    :try_start_1
    const-string v0, "No keys given!"

    .line 50
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v2, v0

    move-object v0, v5

    move-object v5, v2

    :goto_0
    const-string v1, "Error while converting to PGPKeyRing!"

    .line 53
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    :goto_1
    check-cast v5, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;---><init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getLocalNotationData()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeySignatures()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    .line 116
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getNotation()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->getLocalNotationData()Ljava/util/HashMap;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method bridge synthetic getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    return-object v0
.end method

.method getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
    .locals 5

    move-object/16 v2, p0

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->getSecretKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 68
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/util/IterableIterator<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 92
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$2;

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$2;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Ljava/util/Iterator;)V

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public secretKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/util/IterableIterator<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing$1;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Ljava/util/Iterator;)V

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;--->secretKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
