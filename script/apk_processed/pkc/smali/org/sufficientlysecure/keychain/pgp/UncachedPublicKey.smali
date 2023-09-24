.class public Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
.super Ljava/lang/Object;
.source "UncachedPublicKey.java"


# instance fields
.field private mCacheUsage:Ljava/lang/Integer;

.field protected final mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mCacheUsage:Ljava/lang/Integer;

    .line 45
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;---><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 78
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getBitStrength()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 82
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->isEC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getBitStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getBitStrength()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getCreationTime()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCurveOid()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 89
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->isEC()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    if-nez v0, :cond_1

    return-object v1

    .line 95
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getCurveOid()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 245
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 49
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getKeyUsage()Ljava/lang/Integer;
    .locals 12

    move-object/16 v9, p0

    .line 317
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mCacheUsage:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 319
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x1b

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 320
    iget-object v4, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v4

    iget-object v6, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 349
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mCacheUsage:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 362
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 363
    invoke-virtual {v0, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 364
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getKeyFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mCacheUsage:Ljava/lang/Integer;

    .line 369
    :cond_6
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mCacheUsage:Ljava/lang/Integer;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getKeyUsage()Ljava/lang/Integer;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPrimaryUserId()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 108
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getRawPrimaryUserId()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->fromUTF8ByteArrayReplaceBadEncoding([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getPrimaryUserId()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPrimaryUserIdWithFallback()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 190
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPrimaryUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getPrimaryUserIdWithFallback()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 4

    move-object/16 v1, p0

    .line 250
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRawPrimaryUserId()[B
    .locals 13

    move-object/16 v10, p0

    .line 129
    new-instance v0, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v1, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 133
    iget-object v5, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v6, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 143
    :try_start_0
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_5

    .line 145
    new-instance v8, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v9, "BC"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v8

    iget-object v9, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v7, v8, v9}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 147
    iget-object v8, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v7, v4, v8}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification([BLorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 150
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v2, v1

    :cond_4
    move-object v6, v7

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->isPrimaryUserID()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    .line 163
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    .line 167
    :cond_7
    new-instance v8, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v9, "BC"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v8

    iget-object v9, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v7, v8, v9}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 169
    iget-object v8, v10, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v7, v4, v8}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification([BLorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    move-object v6, v1

    move-object v2, v4

    move-object v3, v7

    goto/16 :goto_1

    :cond_8
    return-object v2

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getRawPrimaryUserId()[B"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatures()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 254
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$1;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Ljava/util/Iterator;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getSignatures()Ljava/util/Iterator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignaturesForRawId([B)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 269
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$2;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$2;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getSignaturesForRawId([B)Ljava/util/Iterator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignaturesForUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 288
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForUserAttribute(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$3;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey$3;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getSignaturesForUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Ljava/util/Iterator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnorderedRawUserIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getUnorderedRawUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnorderedUserAttributes()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 219
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;-><init>(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getUnorderedUserAttributes()Ljava/util/ArrayList;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnorderedUserIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 202
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->fromUTF8ByteArrayReplaceBadEncoding([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getUnorderedUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getUnsafeExpiryTimeForTesting()Ljava/util/Date;
    .locals 9

    move-object/16 v6, p0

    .line 375
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-lez v4, :cond_0

    const-string v0, "error, expiry time too large"

    const/4 v1, 0x0

    .line 378
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    return-object v2

    .line 385
    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    .line 386
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 387
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xd

    long-to-int v0, v0

    .line 388
    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 390
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->getUnsafeExpiryTimeForTesting()Ljava/util/Date;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isDSA()Z
    .locals 5

    move-object/16 v2, p0

    .line 235
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isDSA()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEC()Z
    .locals 5

    move-object/16 v2, p0

    .line 239
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 240
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    .line 241
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isEC()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isElGamalEncrypt()Z
    .locals 5

    move-object/16 v2, p0

    .line 225
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isElGamalEncrypt()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isMasterKey()Z
    .locals 4

    move-object/16 v1, p0

    .line 74
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isMasterKey()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isMaybeExpired()Z
    .locals 11

    move-object/16 v8, p0

    .line 65
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    .line 66
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    new-instance v1, Ljava/util/Date;

    .line 67
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long v6, v2, v4

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 69
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isMaybeExpired()Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isMaybeRevoked()Z
    .locals 5

    move-object/16 v2, p0

    .line 54
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->mPublicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isMaybeRevoked()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRSA()Z
    .locals 6

    move-object/16 v3, p0

    .line 229
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 230
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 231
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;--->isRSA()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
