.class public Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
.super Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
.source "CanonicalizedSecretKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;,
        Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    }
.end annotation


# static fields
.field private static final PRIVATE_KEY_STATE_DIVERT_TO_CARD:I = 0x2

.field private static final PRIVATE_KEY_STATE_LOCKED:I = 0x0

.field private static final PRIVATE_KEY_STATE_UNLOCKED:I = 0x1


# instance fields
.field private mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

.field private mPrivateKeyState:I

.field private final mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 78
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/4 v2, 0x0

    .line 70
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    const/4 v2, 0x0

    .line 72
    iput v2, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    .line 79
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;---><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAuthenticationContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)",
            "Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;"
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 258
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 261
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 262
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    invoke-direct {v4, v0, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;-><init>(II)V

    const-string v3, "BC"

    .line 263
    invoke-virtual {v4, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

    move-result-object v3

    return-object v3

    .line 265
    :cond_0
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getAuthenticationContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)",
            "Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;"
        }
    .end annotation

    move-object/16 v8, p0

    move/16 v9, p1

    move-object/16 v10, p2

    .line 223
    iget v0, v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 226
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v3

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 227
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    move-object v2, v0

    move v4, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;-><init>(IIJLjava/util/Map;)V

    const-string v9, "BC"

    .line 228
    invoke-virtual {v0, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    move-result-object v9

    return-object v9

    .line 231
    :cond_0
    new-instance v10, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    iget-object v0, v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 232
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    invoke-direct {v10, v0, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    const-string v9, "BC"

    .line 233
    invoke-virtual {v10, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v9

    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAuthenticationSignatureGenerator(ILjava/util/Map;)Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)",
            "Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 272
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 273
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;-><init>()V

    throw v2

    .line 277
    :cond_0
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getAuthenticationContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    move-result-object v2

    .line 280
    :try_start_0
    new-instance v3, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;

    invoke-direct {v3, v2}, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/4 v2, 0x0

    .line 282
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v3, v2, v0}, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 287
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "Error initializing signature!"

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getAuthenticationSignatureGenerator(ILjava/util/Map;)Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCachingDecryptorFactory(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 335
    iget v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 336
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;-><init>()V

    throw v4

    .line 339
    :cond_0
    iget v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 340
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;

    const-string v1, "BC"

    .line 342
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 344
    :cond_1
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;-><init>()V

    const-string v2, "BC"

    .line 346
    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    move-result-object v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    move-result-object v1

    .line 347
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;-><init>(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;Ljava/util/Map;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getCachingDecryptorFactory(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCertSignatureGenerator(Ljava/util/Map;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)",
            "Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/16 v0, 0xa

    .line 238
    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    move-result-object v3

    .line 241
    iget v0, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 242
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;-><init>()V

    throw v3

    .line 245
    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {v0, v3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/16 v3, 0x10

    .line 247
    :try_start_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    const-string v0, "signing error"

    const/4 v1, 0x0

    .line 250
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getCertSignatureGenerator(Ljava/util/Map;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDataSignatureGenerator(IZLjava/util/Map;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;",
            "Ljava/util/Date;",
            ")",
            "Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 294
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 295
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$PrivateKeyNotUnlockedException;-><init>()V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    .line 306
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 309
    :cond_1
    invoke-direct {v1, v2, p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getContentSignerBuilder(ILjava/util/Map;)Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    move-result-object v2

    .line 320
    :try_start_0
    new-instance p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {p0, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    .line 321
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    .line 323
    new-instance v2, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    .line 324
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mRing:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignerUserID(ZLjava/lang/String;)V

    .line 325
    invoke-virtual {v2, v0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignatureCreationTime(ZLjava/util/Date;)V

    .line 326
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 330
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string p0, "Error initializing signature!"

    invoke-direct {v3, p0, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getDataSignatureGenerator(IZLjava/util/Map;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIv()[B
    .locals 4

    move-object/16 v1, p0

    .line 395
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getIV()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getIv()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 4

    move-object/16 v1, p0

    .line 409
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 83
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mRing:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 4

    move-object/16 v1, p0

    .line 414
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKeyTypeSuperExpensive()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 6

    move-object/16 v3, p0

    .line 152
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 155
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 159
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 163
    :cond_1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v1, "BC"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    const-string v1, ""

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v0

    .line 166
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    .line 168
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getSecretKeyTypeSuperExpensive()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenECSecretKey()Ljava/security/interfaces/ECPrivateKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 375
    iget v0, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Cannot get secret key attributes while key is locked."

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget v0, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 380
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Cannot get secret key attributes of divert-to-card key."

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    .line 386
    :try_start_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    return-object v0

    :catch_0
    move-exception v0

    .line 388
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting private key! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getSecurityTokenECSecretKey()Ljava/security/interfaces/ECPrivateKey;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenRSASecretKey()Ljava/security/interfaces/RSAPrivateCrtKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 353
    iget v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Cannot get secret key attributes while key is locked."

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget v0, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 358
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v1, "Cannot get secret key attributes of divert-to-card key."

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    .line 364
    :try_start_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    return-object v0

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v2, "Error converting private key!"

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getSecurityTokenRSASecretKey()Ljava/security/interfaces/RSAPrivateCrtKey;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUncached()Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;
    .locals 5

    move-object/16 v2, p0

    .line 404
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPSecretKey;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->getUncached()Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 180
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 183
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 184
    iput v3, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    return v1

    .line 191
    :cond_0
    :try_start_0
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyEncryptionAlgorithm()I

    move-result v2

    if-nez v2, :cond_1

    .line 193
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v6

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    .line 194
    iput v1, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I

    return v1

    .line 199
    :cond_1
    invoke-virtual {v6, v2, v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v3

    if-nez v3, :cond_2

    .line 201
    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v4, "BC"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v3

    .line 202
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v2, v0}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v3

    .line 205
    invoke-virtual {v6, v2, v0, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->addCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;[B)V

    .line 208
    :cond_2
    new-instance v6, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;

    invoke-direct {v6}, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;-><init>()V

    const-string v0, "BC"

    .line 209
    invoke-virtual {v6, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->build([B)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v6

    .line 210
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v6

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    .line 211
    iput v1, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKeyState:I
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->mPrivateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    if-nez v6, :cond_3

    .line 217
    new-instance v6, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    const-string v0, "error extracting key"

    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    return v1

    :catch_0
    move-exception v6

    const-string v0, "Error extracting private key!"

    const/4 v1, 0x0

    .line 213
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;--->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
