.class public Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
.super Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
.source "CanonicalizedPublicKey.java"


# instance fields
.field final mRing:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 62
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 63
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mRing:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;---><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public canAuthenticate()Z
    .locals 5

    move-object/16 v2, p0

    .line 124
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->canAuthenticate()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public canCertify()Z
    .locals 6

    move-object/16 v3, p0

    .line 92
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 101
    :cond_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSigningAlgo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->canCertify()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public canEncrypt()Z
    .locals 6

    move-object/16 v3, p0

    .line 110
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 115
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isEncryptionAlgo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->canEncrypt()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public canSign()Z
    .locals 6

    move-object/16 v3, p0

    .line 80
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 84
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSigningAlgo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->canSign()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createUserKeyingMaterial(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 272
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->createUserKeyingMaterial(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 9

    move-object/16 v6, p0

    .line 184
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getValidSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-lez v4, :cond_0

    const-string v0, "error, expiry time too large"

    const/4 v1, 0x0

    .line 187
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    return-object v2

    .line 194
    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    .line 195
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xd

    long-to-int v0, v0

    .line 197
    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 199
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getExpiryTime()Ljava/util/Date;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getJcaPublicKey()Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 214
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    .line 217
    :try_start_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getJcaPublicKey()Ljava/security/PublicKey;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 67
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mRing:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getKeyRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyUsage()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 204
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getKeyUsage()Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getKeyUsage()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getPubKeyEncryptionGenerator(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 75
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;Z)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getPubKeyEncryptionGenerator(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenECPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 227
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getJcaPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getSecurityTokenECPublicKey()Ljava/security/interfaces/ECPublicKey;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenHashAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 232
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isEC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Key encryption OID is valid only for EC key!"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 238
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hash algorithm for EC key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :pswitch_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 242
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 240
    :pswitch_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getSecurityTokenHashAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenSymmetricKeySize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 252
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isEC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Key encryption OID is valid only for EC key!"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 258
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid symmetric encryption algorithm for EC key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x100

    return v0

    :pswitch_1
    const/16 v0, 0xc0

    return v0

    :pswitch_2
    const/16 v0, 0x80

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getSecurityTokenSymmetricKeySize()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUserIds()Lorg/sufficientlysecure/keychain/util/IterableIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/util/IterableIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 71
    new-instance v0, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getUserIds()Lorg/sufficientlysecure/keychain/util/IterableIterator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getValidSeconds()J
    .locals 14

    move-object/16 v11, p0

    .line 152
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isMasterKey()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 155
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 158
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getUnorderedRawUserIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 159
    invoke-virtual {v11, v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getSignaturesForRawId([B)Ljava/util/Iterator;

    move-result-object v6

    .line 160
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 161
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    .line 162
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-eqz v10, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 169
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    :cond_4
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    .line 171
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyExpirySeconds()J

    move-result-wide v0

    goto :goto_0

    .line 177
    :cond_5
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v0

    :cond_6
    return-wide v0

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->getValidSeconds()J"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isExpired()Z
    .locals 5

    move-object/16 v2, p0

    .line 138
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getExpiryTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->isExpired()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevoked()Z
    .locals 5

    move-object/16 v2, p0

    .line 132
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->isRevoked()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSecure()Z
    .locals 4

    move-object/16 v1, p0

    .line 143
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkForSecurityProblems(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->isSecure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isValid()Z
    .locals 4

    move-object/16 v1, p0

    .line 209
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isRevoked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;--->isValid()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
