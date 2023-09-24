.class public abstract Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
.super Lorg/sufficientlysecure/keychain/pgp/KeyRing;
.source "CanonicalizedKeyRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    }
.end annotation


# instance fields
.field private final mVerified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 48
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;-><init>()V

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->mVerified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;---><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public containsBoundSubkey([B)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 168
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 169
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isMasterKey()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canSign()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getFingerprint()[B

    move-result-object v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_4
    return v2

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->containsBoundSubkey([B)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 135
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPKeyRing;->encode(Ljava/io/OutputStream;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->encode(Ljava/io/OutputStream;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 90
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getCreationDate()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 163
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getEncoded()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getEncoded()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptId()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 117
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 118
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v0

    return-wide v0

    .line 122
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;

    const-string v1, "No valid encryption key found!"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getEncryptId()J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptIds()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 109
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canEncrypt()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getEncryptIds()Ljava/util/Set;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 94
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getExpiryTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getExpirationDate()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 61
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 53
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPrimaryUserIdWithFallback()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 69
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getPrimaryUserIdWithFallback()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
    .locals 5

    move-object/16 v2, p0

    .line 151
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 155
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 159
    :cond_0
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-direct {v3, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRawPrimaryUserId()[B
    .locals 4

    move-object/16 v1, p0

    .line 65
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getRawPrimaryUserId()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getRawPrimaryUserId()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;
.end method

.method public getSigningId()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 126
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 127
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canSign()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v0

    return-wide v0

    .line 131
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;

    const-string v1, "No valid signing key found!"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getSigningId()J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 5

    move-object/16 v2, p0

    .line 143
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getUncachedKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnorderedRawUserIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 73
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getUnorderedRawUserIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getUnorderedRawUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnorderedUserIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 77
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getUnorderedUserIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getUnorderedUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 4

    move-object/16 v1, p0

    .line 57
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->mVerified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isExpired()Z
    .locals 6

    move-object/16 v3, p0

    .line 99
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    .line 100
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->isExpired()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 82
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->hasRevocation()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->isRevoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSecure()Z
    .locals 4

    move-object/16 v1, p0

    .line 86
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isSecure()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;--->isSecure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/util/IterableIterator<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;",
            ">;"
        }
    .end annotation
.end method
