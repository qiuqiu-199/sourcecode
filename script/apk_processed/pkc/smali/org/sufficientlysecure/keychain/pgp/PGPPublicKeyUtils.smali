.class Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;
.super Ljava/lang/Object;
.source "PGPPublicKeyUtils.java"


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static keepOnlyRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 37
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 40
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v4, v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 48
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    :cond_2
    return-object v4

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->keepOnlyRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static keepOnlySelfCertsForRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;J[B)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 8

    move-object/16 v5, p0

    move-wide/16 v6, p1

    move-object/16 p0, p3

    .line 87
    invoke-virtual {v5, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 90
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 91
    invoke-static {v5, p0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    goto :goto_0

    :cond_1
    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->keepOnlySelfCertsForRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;J[B)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static keepOnlySelfCertsForUserIds(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 7

    move-object/16 v4, p0

    .line 74
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    .line 76
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 79
    invoke-static {v4, v0, v1, v3}, Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;->keepOnlySelfCertsForRawUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;J[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v4

    goto :goto_0

    :cond_0
    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->keepOnlySelfCertsForUserIds(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static keepOnlyUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 56
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 59
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->fromUTF8ByteArrayReplaceBadEncoding([B)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v4, v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 68
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    :cond_2
    return-object v4

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->keepOnlyUserId(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static removeAllDirectKeyCerts(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 5

    move-object/16 v2, p0

    const/16 v0, 0x1f

    .line 108
    invoke-virtual {v2, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-static {v2, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->removeAllDirectKeyCerts(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static removeAllUserAttributes(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 5

    move-object/16 v2, p0

    .line 98
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-static {v2, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PGPPublicKeyUtils;--->removeAllUserAttributes(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
