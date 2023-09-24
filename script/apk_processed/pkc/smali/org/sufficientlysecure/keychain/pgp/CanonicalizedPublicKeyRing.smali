.class public Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;
.super Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
.source "CanonicalizedPublicKeyRing.java"


# instance fields
.field private mRing:Lorg/bouncycastle/openpgp/PGPPublicKeyRing;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 45
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    .line 46
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;---><init>(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 50
    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    .line 51
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    if-nez v3, :cond_1

    .line 53
    new-instance v3, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 55
    :try_start_0
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v2

    .line 56
    instance-of v0, v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    if-nez v0, :cond_0

    .line 57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error constructing CanonicalizedPublicKeyRing, should never happen!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    .line 60
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Encountered trailing data after keyring, should never happen!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Error constructing CanonicalizedPublicKeyRing, should never happen!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;---><init>([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createDivertSecretRing([BLjava/util/List;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "[B>;)",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 159
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->constructDummyFromPublic(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;[B)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v5

    if-nez v6, :cond_0

    .line 162
    new-instance v6, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    return-object v6

    .line 167
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->constructDummyFromPublic(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    .line 168
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 169
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToKeyId([B)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {v0, v2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    return-object v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;--->createDivertSecretRing([BLjava/util/List;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method bridge synthetic getRing()Lorg/bouncycastle/openpgp/PGPKeyRing;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0

    return-object v0
.end method

.method getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;--->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public minimize(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 104
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    if-eqz v8, :cond_0

    .line 109
    :try_start_0
    invoke-static {v0, v8}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->keepOnlyUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move-object v0, v8

    const/4 v8, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_1

    .line 117
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRawPrimaryUserId()[B

    move-result-object v8

    .line 118
    invoke-static {v0, v8}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->keepOnlyRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    .line 121
    :cond_1
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->keepOnlySelfCertsForUserIds(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8

    .line 122
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->removeAllUserAttributes(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8

    .line 123
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->removeAllDirectKeyCerts(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v8

    .line 125
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getEncoded()[B

    move-result-object v8

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 v8, 0x0

    .line 129
    :try_start_1
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getEncryptId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getMasterKeyId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    .line 134
    invoke-static {v0, v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->insertPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getSigningId()J

    move-result-wide v2

    .line 144
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getMasterKeyId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {v7, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->insertPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    :cond_3
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    return-object v8

    :catch_1
    return-object v8

    :catch_2
    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;--->minimize(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 75
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing$1;

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing$1;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Ljava/util/Iterator;)V

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;--->publicKeyIterator()Lorg/sufficientlysecure/keychain/util/IterableIterator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
