.class public Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;
.super Ljava/lang/Object;
.source "WrappedSignature.java"


# static fields
.field public static final CASUAL_CERTIFICATION:I = 0x12

.field public static final CERTIFICATION_REVOCATION:I = 0x30

.field public static final DEFAULT_CERTIFICATION:I = 0x10

.field public static final NO_CERTIFICATION:I = 0x11

.field public static final POSITIVE_CERTIFICATION:I = 0x13


# instance fields
.field final mSig:Lorg/bouncycastle/openpgp/PGPSignature;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPSignature;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;---><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([B)Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;
    .locals 6

    move-object/16 v3, p0

    .line 228
    new-instance v0, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignatureList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    return-object v3

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "No signatures given!"

    .line 232
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string v2, "Error while converting to PGPSignature!"

    .line 236
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->fromBytes([B)Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCreationTime()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 78
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getCreationTime()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEmbeddedSignatures()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
            ">;"
        }
    .end annotation

    move-object/16 v6, p0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->hasSubpackets()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 92
    :try_start_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getEmbeddedSignatures()Lorg/bouncycastle/openpgp/PGPSignatureList;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 95
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getEmbeddedSignatures()Lorg/bouncycastle/openpgp/PGPSignatureList;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 101
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "exception reading embedded signatures"

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getEmbeddedSignatures()Ljava/util/ArrayList;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 112
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getEncoded()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 74
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyAlgorithm()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getKeyAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyExpirySeconds()J
    .locals 5

    move-object/16 v2, p0

    .line 82
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getKeyExpirationTime()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getKeyExpirySeconds()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 66
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNotation()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v6, p0

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    .line 268
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getNotationDataOccurrences()[Lorg/bouncycastle/bcpg/sig/NotationData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 271
    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/sig/NotationData;->getNotationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/sig/NotationData;->getNotationValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getNotation()Ljava/util/HashMap;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRevocationReason()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 124
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isRevocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Not a revocation signature."

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 130
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 136
    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/bcpg/sig/RevocationReason;

    if-nez v1, :cond_3

    .line 137
    new-instance v1, Lorg/bouncycastle/bcpg/sig/RevocationReason;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Lorg/bouncycastle/bcpg/sig/RevocationReason;-><init>(ZZ[B)V

    move-object v0, v1

    .line 139
    :cond_3
    check-cast v0, Lorg/bouncycastle/bcpg/sig/RevocationReason;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/RevocationReason;->getRevocationDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getRevocationReason()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureType()I
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->getSignatureType()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 152
    :try_start_0
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v1, "BC"

    .line 154
    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v0

    .line 155
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 157
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public init(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 143
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->init(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public init(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 147
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->init(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isLocal()Z
    .locals 5

    move-object/16 v2, p0

    .line 255
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    .line 256
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    .line 260
    check-cast v0, Lorg/bouncycastle/bcpg/sig/Exportable;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/Exportable;->isExportable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->isLocal()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPrimaryUserId()Z
    .locals 4

    move-object/16 v1, p0

    .line 120
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->isPrimaryUserID()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->isPrimaryUserId()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevocation()Z
    .locals 5

    move-object/16 v2, p0

    .line 116
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->isRevocation()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevokable()Z
    .locals 5

    move-object/16 v2, p0

    .line 246
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    .line 247
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    .line 251
    check-cast v0, Lorg/bouncycastle/bcpg/sig/Revocable;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/Revocable;->isRevocable()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->isRevokable()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public update(B)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 166
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->update(B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public update([BII)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 162
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v2, v3, p0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->update([BII)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verify()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 171
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->verify()Z

    move-result v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verify()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 179
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v3
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    .line 181
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Error!"

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 195
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    .line 197
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Error!"

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 187
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    .line 189
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Error!"

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 211
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    .line 213
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Error!"

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 203
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->mSig:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/openpgp/PGPSignature;->verifyCertification([BLorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    .line 205
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Error!"

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifySignature(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 221
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Z

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;Ljava/lang/String;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 224
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Z

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 218
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Z

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;--->verifySignature(Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;[B)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
