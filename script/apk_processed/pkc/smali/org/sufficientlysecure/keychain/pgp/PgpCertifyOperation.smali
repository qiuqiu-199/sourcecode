.class public Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;
.super Ljava/lang/Object;
.source "PgpCertifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public certify(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;Ljava/util/Map;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "I",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;",
            "Ljava/util/Date;",
            ")",
            "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 55
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isMasterKey()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "tried to certify with non-master key, this is a programming error!"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 58
    :cond_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 59
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "key tried to self-certify, this is a programming error!"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 63
    :cond_1
    invoke-virtual {v8, p3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getCertSignatureGenerator(Ljava/util/Map;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v8

    .line 66
    new-instance p1, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const/4 p3, 0x0

    if-eqz p4, :cond_2

    .line 68
    invoke-virtual {p1, p3, p4}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For NFC: set sig creation time to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p1

    .line 72
    invoke-virtual {v8, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 76
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    .line 78
    new-instance v6, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;

    .line 79
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;-><init>(Ljava/util/Date;JJ)V

    .line 82
    :try_start_0
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getUserIds()Ljava/util/ArrayList;

    move-result-object p4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p4, :cond_3

    .line 83
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 84
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_CERTIFY_UIDS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    .line 85
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getMasterKeyId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 84
    invoke-virtual {p0, v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    :try_start_1
    invoke-virtual {v8, v2, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v3

    .line 91
    invoke-static {p1, v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2
    :try_end_1
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_2

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 93
    :try_start_2
    iget-object v3, v2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v2, v2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v6, v3, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getUserAttributes()Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 100
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_CRT_CERTIFY_UATS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    .line 102
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getMasterKeyId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    .line 101
    invoke-virtual {p0, v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    .line 106
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    move-result-object p2
    :try_end_2
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :try_start_3
    invoke-virtual {v8, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p4

    .line 109
    invoke-static {p1, p2, p4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p2
    :try_end_3
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 111
    :try_start_4
    iget-object p4, p2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget p2, p2, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    invoke-virtual {v6, p4, p2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->addHash([BI)V
    :try_end_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 122
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V

    return-object v8

    .line 125
    :cond_5
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v8

    invoke-static {v8, p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->insertPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v8

    .line 126
    new-instance v9, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;

    new-instance p0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {p0, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    invoke-direct {v9, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    return-object v9

    :catch_2
    move-exception v8

    const-string v9, "signing error"

    .line 117
    new-array p0, p3, [Ljava/lang/Object;

    invoke-static {v8, v9, p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;

    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;-><init>()V

    return-object v8

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;--->certify(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;Ljava/util/Map;Ljava/util/Date;)Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
