.class public Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
.super Ljava/lang/Object;
.source "UncachedKeyRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;
    }
.end annotation


# static fields
.field private static final CANONICALIZE_MAX_USER_IDS:I = 0x64

.field static final KNOWN_ALGORITHMS:[I


# instance fields
.field final mIsSecret:Z

.field final mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    .line 272
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->KNOWN_ALGORITHMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x10
        0x11
        0x12
        0x13
        0x14
        0x16
    .end array-data

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 100
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    .line 102
    instance-of v1, v1, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mIsSecret:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;---><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 160
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Object not recognized as PGPKeyRing!"

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    .line 168
    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Expected single keyring in stream, found at least two"

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static forTestingOnlyAddDummyLocalSignature(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 1375
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    .line 1377
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v1

    .line 1378
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v8

    .line 1379
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v8

    .line 1380
    iget-object v7, v7, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v7

    .line 1383
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    .line 1384
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    const-string v2, "BC"

    .line 1386
    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v1

    .line 1387
    new-instance v2, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    .line 1389
    new-instance v1, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const/4 v3, 0x0

    .line 1390
    invoke-virtual {v1, v3, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setExportable(ZZ)V

    const-string v4, "dummynotationdata"

    const-string v5, "some data"

    const/4 v6, 0x1

    .line 1391
    invoke-virtual {v1, v3, v6, v4, v5}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setNotationData(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    const/16 v1, 0x1f

    .line 1394
    invoke-virtual {v2, v1, v8}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 1395
    invoke-virtual {v2, v7}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v8

    .line 1397
    invoke-static {v7, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v7

    .line 1399
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v7

    .line 1398
    invoke-static {v0, v7}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v7

    .line 1401
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v8, v7}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->forTestingOnlyAddDummyLocalSignature(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow<",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 193
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 195
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$2;-><init>(Ljava/io/InputStream;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static isEncryptionAlgo(I)Z
    .locals 5

    move/16 v2, p0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/16 v1, 0x10

    if-eq v2, v1, :cond_1

    const/16 v1, 0x14

    if-eq v2, v1, :cond_1

    const/16 v1, 0x12

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->isEncryptionAlgo(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static isSigningAlgo(I)Z
    .locals 5

    move/16 v2, p0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/16 v1, 0x11

    if-eq v2, v1, :cond_1

    const/16 v1, 0x14

    if-eq v2, v1, :cond_1

    const/16 v1, 0x13

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->isSigningAlgo(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static removeSubKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 1344
    instance-of v0, v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    if-eqz v0, :cond_0

    .line 1345
    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-static {v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->removePublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v2

    return-object v2

    .line 1347
    :cond_0
    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v3

    .line 1348
    invoke-static {v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->removeSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->removeSubKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 1320
    instance-of v0, v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    if-eqz v0, :cond_0

    .line 1321
    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    .line 1322
    invoke-static {v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->insertPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object v2

    return-object v2

    .line 1324
    :cond_0
    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    .line 1325
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1329
    invoke-static {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v0

    .line 1331
    :cond_1
    invoke-static {v0, v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v3

    .line 1332
    invoke-static {v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v0, 0x0

    .line 322
    invoke-virtual {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;
    .locals 44

    move-object/16 v41, p0

    move-object/16 v42, p1

    move/16 v43, p2

    move/16 p0, p3

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move/from16 v3, v43

    .line 365
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_PUBLIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    :goto_0
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 366
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 365
    invoke-virtual {v2, v4, v3, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/2addr v3, v5

    .line 370
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getVersion()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-gt v4, v6, :cond_1

    .line 371
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_ERROR_V3:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v7

    :cond_1
    const-string v4, "UTC"

    .line 375
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, 0x6

    .line 377
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 378
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 382
    iget-object v6, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    .line 383
    iget-object v9, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v9

    .line 384
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v10

    .line 386
    sget-object v12, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->KNOWN_ALGORITHMS:[I

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v12

    if-gez v12, :cond_2

    .line 387
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_ERROR_MASTER_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v5, [Ljava/lang/Object;

    .line 388
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 387
    invoke-virtual {v2, v4, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    return-object v7

    .line 393
    :cond_2
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v13, v5, [Ljava/lang/Object;

    .line 394
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    .line 393
    invoke-virtual {v2, v12, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/2addr v3, v5

    .line 400
    new-instance v12, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeySignatures()Ljava/util/Iterator;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v7

    move-object v14, v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v8, 0x11

    if-eqz v17, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lorg/bouncycastle/openpgp/PGPSignature;

    move-object/from16 v20, v12

    .line 401
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v12

    if-eq v12, v8, :cond_f

    const/16 v8, 0x10

    if-eq v12, v8, :cond_f

    const/16 v8, 0x12

    if-eq v12, v8, :cond_f

    const/16 v8, 0x13

    if-eq v12, v8, :cond_f

    const/16 v8, 0x30

    if-ne v12, v8, :cond_3

    goto/16 :goto_5

    .line 414
    :cond_3
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-direct {v8, v5}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    move-object/from16 v21, v6

    const/16 v6, 0x20

    const/16 v1, 0x1f

    if-eq v12, v6, :cond_4

    if-eq v12, v1, :cond_4

    .line 418
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v10

    const-string v10, "0x"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x10

    invoke-static {v12, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v8, v10

    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 419
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    :cond_4
    move-wide/from16 v22, v10

    .line 424
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 426
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 427
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 433
    :cond_5
    :try_start_0
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 434
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 435
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 436
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v16, v16, 0x1

    :goto_2
    move-object v14, v1

    goto/16 :goto_6

    :cond_6
    if-eqz p0, :cond_7

    .line 448
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 450
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_LOCAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 451
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    goto/16 :goto_6

    .line 456
    :cond_7
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v10

    if-ne v10, v1, :cond_b

    .line 458
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v1

    if-nez v1, :cond_8

    .line 459
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 460
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    :cond_8
    if-nez v13, :cond_9

    :goto_3
    move-object v13, v5

    goto/16 :goto_6

    .line 469
    :cond_9
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 470
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_NOTATION_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 471
    invoke-static {v14, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 475
    :cond_a
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_NOTATION_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 476
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 480
    :cond_b
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 482
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_LOCAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 483
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_c
    if-nez v7, :cond_d

    :goto_4
    move-object v7, v5

    goto :goto_6

    .line 492
    :cond_d
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 493
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 494
    invoke-static {v14, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    add-int/lit8 v15, v15, 0x1

    move-object v14, v1

    goto :goto_4

    .line 498
    :cond_e
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 499
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 441
    :catch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 442
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_f
    :goto_5
    move-object/from16 v21, v6

    move-wide/from16 v22, v10

    .line 409
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_MASTER_BAD_TYPE_UID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 410
    invoke-static {v14, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    :goto_6
    move-object/from16 v12, v20

    move-object/from16 v6, v21

    move-wide/from16 v10, v22

    move-object/from16 v1, v41

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v21, v6

    move-wide/from16 v22, v10

    if-eqz v13, :cond_11

    .line 507
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-direct {v1, v13}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getNotation()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 508
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_NOTATION_EMPTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 509
    invoke-static {v14, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    .line 514
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    new-instance v5, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 516
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->fromUTF8ByteArrayReplaceBadEncoding([B)Ljava/lang/String;

    move-result-object v7

    .line 519
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/util/Utf8Util;->isValidUTF8([B)Z

    move-result v10

    if-nez v10, :cond_12

    .line 520
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_WARN_ENCODING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 524
    :cond_12
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 525
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v2, v10, v3, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 527
    invoke-static {v14, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    goto :goto_8

    :cond_13
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 529
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v12, 0x64

    if-le v10, v12, :cond_14

    .line 530
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_TOO_MANY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v7, v12, v13

    invoke-virtual {v2, v10, v3, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 532
    invoke-static {v14, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    .line 534
    :cond_14
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v9, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v10

    if-eqz v10, :cond_23

    .line 543
    new-instance v11, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v11, v10}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 544
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-direct {v8, v13}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    .line 545
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v10

    move-object/from16 v26, v1

    .line 547
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v1

    move-object/from16 v27, v5

    const/16 v5, 0x10

    if-eq v1, v5, :cond_15

    const/16 v5, 0x11

    if-eq v1, v5, :cond_15

    const/16 v5, 0x12

    if-eq v1, v5, :cond_15

    const/16 v5, 0x13

    if-eq v1, v5, :cond_15

    const/16 v5, 0x30

    if-eq v1, v5, :cond_15

    .line 553
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_BAD_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v8, v10

    .line 553
    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 555
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 560
    :cond_15
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 562
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_BAD_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 563
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    :cond_16
    :goto_a
    move-object/from16 v10, v24

    move-object/from16 v11, v25

    :goto_b
    move-object/from16 v1, v26

    move-object/from16 v5, v27

    const/16 v8, 0x11

    goto/16 :goto_9

    .line 568
    :cond_17
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 570
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_BAD_LOCAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 571
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :cond_18
    cmp-long v5, v10, v22

    if-eqz v5, :cond_19

    .line 579
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 580
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_FOREIGN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    .line 581
    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v8, v10

    .line 580
    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 582
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 590
    :cond_19
    :try_start_1
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 591
    invoke-virtual {v8, v9, v6}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 592
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v8, v5

    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 594
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v16, v16, 0x1

    move-object v14, v1

    goto :goto_a

    :cond_1a
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1e

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, v25

    :goto_c
    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_f

    :pswitch_0
    if-nez v25, :cond_1b

    :goto_d
    move-object v11, v13

    goto :goto_e

    :cond_1b
    move-object/from16 v1, v25

    .line 613
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 614
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_CERT_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 616
    invoke-static {v14, v6, v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_1c
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 620
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_CERT_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 622
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    move-object v11, v1

    :goto_e
    if-eqz v12, :cond_1d

    .line 627
    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 628
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_REVOKE_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v8, v5

    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 630
    invoke-static {v14, v6, v12}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    move-object v1, v11

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_1d
    move-object v1, v11

    goto :goto_c

    :cond_1e
    move-object/from16 v1, v25

    if-eqz v1, :cond_1f

    .line 638
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 639
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_REVOKE_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v10, v8

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 641
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1f
    if-nez v12, :cond_20

    move-object v12, v13

    goto/16 :goto_c

    .line 649
    :cond_20
    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 650
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 652
    invoke-static {v14, v6, v12}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    move-object v12, v13

    goto :goto_f

    :cond_21
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 656
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 658
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :catch_1
    move-object/from16 v1, v25

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 599
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {v2, v5, v3, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 601
    invoke-static {v14, v6, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    :goto_f
    move-object v11, v1

    move-object/from16 v10, v24

    goto/16 :goto_b

    :cond_22
    move-object/from16 v26, v1

    move-object/from16 v27, v5

    move-object v1, v11

    goto :goto_10

    :cond_23
    move-object/from16 v26, v1

    move-object/from16 v27, v5

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_10
    if-nez v1, :cond_24

    if-nez v12, :cond_24

    .line 668
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UID_REMOVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v8, v5

    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 670
    invoke-static {v14, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    move-object v14, v1

    :cond_24
    move-object/from16 v1, v26

    move-object/from16 v5, v27

    const/16 v8, 0x11

    goto/16 :goto_7

    :cond_25
    if-eqz v14, :cond_5d

    .line 675
    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_2b

    .line 680
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    new-instance v5, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    const/4 v7, 0x1

    .line 684
    invoke-virtual {v6, v7}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 685
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_JPEG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_12

    .line 687
    :cond_27
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 694
    :try_start_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 695
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 697
    invoke-static {v14, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    .line 699
    :cond_28
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-virtual {v9, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForUserAttribute(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 708
    new-instance v8, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v8, v7}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 709
    new-instance v12, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-direct {v12, v11}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    .line 710
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v7

    .line 712
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v13

    move-object/from16 v30, v1

    const/16 v1, 0x10

    if-eq v13, v1, :cond_29

    const/16 v1, 0x11

    if-eq v13, v1, :cond_29

    const/16 v1, 0x12

    if-eq v13, v1, :cond_29

    const/16 v1, 0x13

    if-eq v13, v1, :cond_29

    const/16 v1, 0x30

    if-eq v13, v1, :cond_29

    .line 718
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_BAD_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0x"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v8, v12

    .line 718
    invoke-virtual {v2, v1, v3, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 720
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_14

    .line 725
    :cond_29
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 727
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_BAD_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 728
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    :cond_2a
    :goto_14
    move-object/from16 v7, v28

    move-object/from16 v8, v29

    :goto_15
    move-object/from16 v1, v30

    goto :goto_13

    .line 733
    :cond_2b
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 735
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_BAD_LOCAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 736
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    goto :goto_14

    :cond_2c
    cmp-long v1, v7, v22

    if-eqz v1, :cond_2d

    .line 744
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 745
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_FOREIGN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 746
    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v13, v8

    .line 745
    invoke-virtual {v2, v1, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 747
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_14

    .line 755
    :cond_2d
    :try_start_3
    invoke-virtual {v12, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 756
    invoke-virtual {v12, v9, v6}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 757
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 759
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v16, v16, 0x1

    move-object v14, v1

    goto :goto_14

    :cond_2e
    const/16 v1, 0x30

    if-eq v13, v1, :cond_31

    packed-switch v13, :pswitch_data_1

    move-object/from16 v8, v29

    goto/16 :goto_1a

    :pswitch_1
    if-nez v29, :cond_2f

    :goto_16
    move-object v8, v11

    goto :goto_17

    :cond_2f
    move-object/from16 v7, v29

    .line 778
    :try_start_4
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 779
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_CERT_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 781
    invoke-static {v14, v6, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 785
    :cond_30
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_CERT_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 787
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    move-object v8, v7

    :goto_17
    if-eqz v10, :cond_35

    .line 792
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 793
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_REVOKE_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 795
    invoke-static {v14, v6, v10}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto :goto_1a

    :cond_31
    move-object/from16 v7, v29

    if-eqz v7, :cond_32

    .line 803
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v11}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 804
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_REVOKE_OLD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 806
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_32
    if-nez v10, :cond_33

    :goto_18
    move-object v8, v7

    move-object v10, v11

    goto :goto_1a

    .line 814
    :cond_33
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 815
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 817
    invoke-static {v14, v6, v10}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    .line 821
    :cond_34
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 823
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :catch_2
    move-object/from16 v7, v29

    const/16 v1, 0x30

    .line 764
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 766
    invoke-static {v14, v6, v11}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v14

    add-int/lit8 v16, v16, 0x1

    :goto_19
    move-object v8, v7

    :cond_35
    :goto_1a
    move-object/from16 v7, v28

    goto/16 :goto_15

    :cond_36
    move-object/from16 v30, v1

    move-object v7, v8

    const/16 v1, 0x30

    goto :goto_1b

    :cond_37
    move-object/from16 v30, v1

    const/16 v1, 0x30

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1b
    if-nez v7, :cond_38

    if-nez v10, :cond_38

    .line 833
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_UAT_REMOVE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 835
    invoke-static {v14, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v6

    :cond_38
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v30

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 840
    throw v1

    :cond_39
    move-object/from16 v1, v21

    .line 845
    invoke-static {v1, v14}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v1

    add-int/lit8 v3, v3, -0x1

    .line 851
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 854
    new-instance v6, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v1

    move/from16 v1, v16

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 856
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 857
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_ERROR_DUP_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 858
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 857
    invoke-virtual {v2, v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    .line 862
    :cond_3a
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v11

    if-eqz v11, :cond_3b

    goto :goto_1c

    .line 869
    :cond_3b
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    move-object/from16 v31, v11

    .line 870
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v13, v11

    move-object/from16 v10, v31

    .line 869
    invoke-virtual {v2, v10, v3, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 873
    sget-object v10, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->KNOWN_ALGORITHMS:[I

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_3c

    .line 874
    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->removeSubKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v7

    .line 876
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_UNKNOWN_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    .line 877
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v12, v11

    .line 876
    invoke-virtual {v2, v10, v3, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 882
    :cond_3c
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    .line 884
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 885
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v12, 0xc

    const/4 v13, -0x5

    .line 887
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 888
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 895
    new-instance v12, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v1

    move-object/from16 v32, v5

    move-object v1, v8

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v33, v6

    if-eqz v16, :cond_52

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 897
    invoke-static {v1, v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    move-object/from16 v34, v1

    .line 899
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-direct {v1, v6}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    move-object/from16 v35, v12

    .line 900
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v12

    .line 903
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getKeyId()J

    move-result-wide v18

    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v20

    cmp-long v16, v18, v20

    if-eqz v16, :cond_3d

    .line 904
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_KEYID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v35

    goto :goto_1d

    :cond_3d
    move-object/from16 v36, v7

    const/16 v7, 0x18

    if-eq v12, v7, :cond_3e

    const/16 v7, 0x28

    if-eq v12, v7, :cond_3e

    .line 910
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v5

    const-string v5, "0x"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-static {v12, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v7, v12

    invoke-virtual {v2, v1, v3, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    :goto_1e
    move-object/from16 v6, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v35

    move-object/from16 v7, v36

    move-object/from16 v5, v37

    goto :goto_1d

    :cond_3e
    move-object/from16 v37, v5

    const/16 v5, 0x10

    .line 915
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 917
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 922
    :cond_3f
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 924
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_TIME_EARLY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v7, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 928
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_40

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 934
    :cond_40
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 936
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_LOCAL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_41
    const/16 v7, 0x18

    if-ne v12, v7, :cond_4f

    .line 945
    :try_start_5
    invoke-virtual {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 946
    invoke-virtual {v1, v9, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 947
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_5 .. :try_end_5} :catch_5

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 960
    :cond_42
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSigningAlgo(I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 963
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    if-eqz v7, :cond_43

    .line 964
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    const/16 v12, 0x1b

    invoke-virtual {v7, v12}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 965
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    .line 966
    invoke-virtual {v7, v12}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/bcpg/sig/KeyFlags;

    invoke-virtual {v7}, Lorg/bouncycastle/bcpg/sig/KeyFlags;->getFlags()I

    move-result v7

    const/4 v12, 0x2

    and-int/2addr v7, v12

    if-ne v7, v12, :cond_44

    :cond_43
    const/4 v7, 0x1

    goto :goto_1f

    :cond_44
    const/4 v7, 0x0

    :goto_1f
    if-eqz v7, :cond_4c

    .line 981
    :try_start_6
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    if-eqz v7, :cond_48

    .line 983
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getEmbeddedSignatures()Lorg/bouncycastle/openpgp/PGPSignatureList;

    move-result-object v7

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 984
    :goto_20
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v12

    if-ge v5, v12, :cond_47

    .line 985
    new-instance v12, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v38, v4

    :try_start_7
    invoke-virtual {v7, v5}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    .line 986
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v4

    move-object/from16 v39, v7

    const/16 v7, 0x19

    if-ne v4, v7, :cond_46

    .line 987
    invoke-virtual {v12, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 988
    invoke-virtual {v12, v9, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v16, 0x1

    goto :goto_21

    .line 991
    :cond_45
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_PRIMARY_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_25

    :cond_46
    :goto_21
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v38

    move-object/from16 v7, v39

    goto :goto_20

    :cond_47
    move-object/from16 v38, v4

    goto :goto_22

    :cond_48
    move-object/from16 v38, v4

    const/16 v16, 0x0

    :goto_22
    if-nez v16, :cond_4b

    .line 1000
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getEmbeddedSignatures()Lorg/bouncycastle/openpgp/PGPSignatureList;

    move-result-object v4

    const/4 v5, 0x0

    .line 1001
    :goto_23
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4b

    .line 1002
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;-><init>(Lorg/bouncycastle/openpgp/PGPSignature;)V

    .line 1003
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getSignatureType()I

    move-result v12

    move-object/from16 v40, v4

    const/16 v4, 0x19

    if-ne v12, v4, :cond_4a

    .line 1004
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 1005
    invoke-virtual {v7, v9, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v7

    if-eqz v7, :cond_49

    const/16 v16, 0x1

    goto :goto_24

    .line 1008
    :cond_49
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_PRIMARY_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_4a
    :goto_24
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v40

    goto :goto_23

    :cond_4b
    if-nez v16, :cond_4d

    .line 1022
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_PRIMARY_NONE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :catch_3
    move-object/from16 v38, v4

    .line 1016
    :catch_4
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_PRIMARY_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_4c
    move-object/from16 v38, v4

    :cond_4d
    if-eqz v13, :cond_4e

    .line 1029
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1030
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    :cond_4e
    move-object v13, v6

    move-object/from16 v5, v37

    goto :goto_27

    :catch_5
    move-object/from16 v38, v4

    .line 952
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    :goto_25
    move-object/from16 v6, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v35

    move-object/from16 v7, v36

    move-object/from16 v5, v37

    :goto_26
    move-object/from16 v4, v38

    goto/16 :goto_1d

    :cond_4f
    move-object/from16 v38, v4

    .line 1042
    :try_start_8
    invoke-virtual {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->init(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 1043
    invoke-virtual {v1, v9, v8}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->verifySignature(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 1044
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_REVOKE_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_8
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_8 .. :try_end_8} :catch_6

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_50
    if-eqz v37, :cond_51

    move-object/from16 v5, v37

    .line 1056
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1057
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_REVOKE_DUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    :cond_51
    move-object v5, v6

    goto :goto_27

    :catch_6
    move-object/from16 v5, v37

    .line 1049
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_REVOKE_BAD_ERR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/lit8 v14, v14, 0x1

    :goto_27
    move-object/from16 v6, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v35

    move-object/from16 v7, v36

    goto :goto_26

    :cond_52
    move-object/from16 v38, v4

    move-object/from16 v36, v7

    if-nez v13, :cond_53

    move-object/from16 v7, v36

    .line 1068
    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->removeSubKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v7

    .line 1070
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_NO_CERT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1071
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 1070
    invoke-virtual {v2, v1, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    :goto_28
    move v1, v14

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v4, v38

    goto/16 :goto_1c

    :cond_53
    move-object/from16 v7, v36

    .line 1077
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 1078
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    const/16 v6, 0x1b

    invoke-virtual {v4, v6}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->hasSubpacket(I)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1079
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/bcpg/sig/KeyFlags;

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/sig/KeyFlags;->getFlags()I

    move-result v4

    .line 1080
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v6

    .line 1082
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSigningAlgo(I)Z

    move-result v8

    if-nez v8, :cond_54

    and-int/lit8 v8, v4, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_54

    .line 1083
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_ALGO_BAD_SIGN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1086
    :cond_54
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isEncryptionAlgo(I)Z

    move-result v6

    if-nez v6, :cond_56

    and-int/lit8 v6, v4, 0x8

    const/16 v8, 0x8

    if-eq v6, v8, :cond_55

    and-int/lit8 v4, v4, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_56

    .line 1090
    :cond_55
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUB_ALGO_BAD_ENCRYPT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1095
    :cond_56
    invoke-static {v1, v13}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    if-eqz v5, :cond_57

    .line 1098
    invoke-static {v1, v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    .line 1101
    :cond_57
    invoke-static {v7, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_58
    if-lez v1, :cond_59

    if-lez v15, :cond_59

    .line 1107
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUCCESS_BAD_AND_RED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1108
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v5, v8

    .line 1107
    invoke-virtual {v2, v4, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_29

    :cond_59
    const/4 v6, 0x0

    const/4 v8, 0x1

    if-lez v1, :cond_5a

    .line 1110
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUCCESS_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v8, [Ljava/lang/Object;

    .line 1111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    .line 1110
    invoke-virtual {v2, v4, v3, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_29

    :cond_5a
    if-lez v15, :cond_5b

    .line 1113
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUCCESS_REDUNDANT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v8, [Ljava/lang/Object;

    .line 1114
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1113
    invoke-virtual {v2, v1, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_29

    .line 1116
    :cond_5b
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1119
    :goto_29
    invoke-virtual/range {v41 .. v41}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_5c

    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    check-cast v7, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-direct {v1, v7, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    goto :goto_2a

    :cond_5c
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    check-cast v7, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->UNVERIFIED:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-direct {v1, v7, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)V

    :goto_2a
    return-object v1

    .line 676
    :cond_5d
    :goto_2b
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KC_ERROR_NO_UID:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public containsKeyWithAnyFingerprint(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 177
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    .line 182
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 183
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getFingerprint()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    return v6

    :cond_2
    const/4 v6, 0x0

    return v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->containsKeyWithAnyFingerprint(Ljava/util/List;)Z"

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

    .line 146
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPKeyRing;->encode(Ljava/io/OutputStream;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->encode(Ljava/io/OutputStream;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encodeArmored(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 263
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v3, :cond_0

    const-string v2, "Version"

    .line 265
    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->write([B)V

    .line 268
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->encodeArmored(Ljava/io/OutputStream;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public extractPublicKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 1297
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to extract public keyring from non-secret keyring. This is a programming error and should never happen!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 1303
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1304
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 1308
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    .line 1309
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->extractPublicKeyRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCreationTime()J
    .locals 5

    move-object/16 v2, p0

    .line 110
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getCreationTime()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 142
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getEncoded()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getEncoded()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 150
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 106
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKey()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
    .locals 5

    move-object/16 v2, p0

    .line 114
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 118
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 122
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$1;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Ljava/util/Iterator;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getPublicKeys()Ljava/util/Iterator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVersion()I
    .locals 4

    move-object/16 v1, p0

    .line 154
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getVersion()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->getVersion()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSecret()Z
    .locals 4

    move-object/16 v1, p0

    .line 138
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mIsSecret:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->isSecret()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 28

    move-object/16 v25, p0

    move-object/16 v26, p1

    move-object/16 v27, p2

    move/16 p0, p3

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    const/4 v2, 0x1

    add-int/lit8 v3, p0, 0x1

    .line 1141
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v4

    .line 1143
    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_17

    .line 1144
    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getFingerprint()[B

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getFingerprint()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_f

    .line 1150
    :cond_0
    new-instance v7, Ljava/util/TreeSet;

    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;

    invoke-direct {v8, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;-><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1167
    :try_start_0
    iget-object v8, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-object/from16 v9, v26

    .line 1168
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->mRing:Lorg/bouncycastle/openpgp/PGPKeyRing;

    .line 1171
    new-instance v11, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 1172
    new-instance v13, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v12

    invoke-direct {v13, v12}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1173
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_2
    new-instance v11, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v13, v8

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-object/from16 v16, v7

    .line 1182
    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lorg/bouncycastle/openpgp/PGPKeyRing;->getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1184
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MG_NEW_SUBKEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v6, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1186
    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1187
    move-object v6, v10

    check-cast v6, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v3

    :try_start_1
    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    .line 1188
    check-cast v13, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    invoke-static {v13, v2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object v13

    goto :goto_2

    :cond_3
    move/from16 v17, v3

    .line 1191
    invoke-static {v13, v14}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v13

    :goto_2
    move-object/from16 v7, v16

    :goto_3
    move/from16 v3, v17

    :goto_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move/from16 v17, v3

    .line 1200
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeySignatures()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v6

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1202
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v18

    cmp-long v20, v18, v4

    if-eqz v20, :cond_5

    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v12, v16

    goto :goto_6

    .line 1206
    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object v15

    move-object/from16 v12, v16

    .line 1208
    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    :goto_6
    move-object/from16 v16, v12

    goto :goto_5

    .line 1211
    :cond_6
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-static {v3, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v12, v16

    .line 1217
    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v2

    if-nez v2, :cond_9

    if-eq v3, v6, :cond_8

    .line 1219
    invoke-static {v13, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v13

    :cond_8
    move-object v7, v12

    goto :goto_3

    .line 1225
    :cond_9
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1227
    invoke-virtual {v14, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v21, v2

    .line 1232
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v2, v15}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1234
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v18

    cmp-long v16, v18, v4

    if-eqz v16, :cond_b

    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v22, v2

    goto :goto_9

    :cond_b
    move-object/from16 v22, v2

    .line 1237
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object v2

    .line 1239
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    :goto_9
    move-object/from16 v2, v22

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 1243
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-static {v3, v7, v15}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object/from16 v2, v21

    goto :goto_7

    .line 1250
    :cond_e
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 1252
    invoke-virtual {v14, v7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForUserAttribute(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;

    move-result-object v15

    if-nez v15, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v23, v2

    .line 1257
    new-instance v2, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    invoke-direct {v2, v15}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 1259
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v18

    cmp-long v16, v18, v4

    if-eqz v16, :cond_10

    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v16

    if-eqz v16, :cond_10

    goto :goto_c

    .line 1262
    :cond_10
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object v0

    .line 1264
    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    :goto_c
    move-object/from16 v0, v25

    goto :goto_b

    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 1268
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-static {v3, v7, v15}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    goto :goto_c

    :cond_12
    move-object/from16 v2, v23

    goto :goto_a

    :cond_13
    if-eq v3, v6, :cond_14

    .line 1275
    invoke-static {v13, v3}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->replacePublicKey(Lorg/bouncycastle/openpgp/PGPKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPKeyRing;

    move-result-object v0

    move-object v13, v0

    :cond_14
    move-object v7, v12

    move/from16 v3, v17

    move-object/from16 v0, v25

    goto/16 :goto_4

    :cond_15
    move/from16 v17, v3

    if-lez v8, :cond_16

    .line 1281
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MG_FOUND_NEW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1282
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v3, v17

    .line 1281
    :try_start_2
    invoke-virtual {v1, v0, v3, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_d

    :catch_0
    move/from16 v3, v17

    goto :goto_e

    :cond_16
    move/from16 v3, v17

    .line 1284
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MG_UNCHANGED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1287
    :goto_d
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v0, v13}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;-><init>(Lorg/bouncycastle/openpgp/PGPKeyRing;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 1290
    :catch_1
    :goto_e
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MG_ERROR_ENCODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v0, 0x0

    return-object v0

    :cond_17
    :goto_f
    const/4 v0, 0x0

    .line 1145
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_MG_ERROR_HETEROGENEOUS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;--->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
