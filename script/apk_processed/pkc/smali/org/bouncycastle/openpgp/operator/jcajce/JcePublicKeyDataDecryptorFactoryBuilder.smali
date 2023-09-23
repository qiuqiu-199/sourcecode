.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;
.source "JcePublicKeyDataDecryptorFactoryBuilder.java"


# instance fields
.field private contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 47
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 48
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 49
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(ILjava/security/PrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->x25519Decrypt(Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private decryptSessionData(ILjava/security/PrivateKey;[[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 277
    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_2

    .line 293
    :cond_0
    check-cast p2, Ljavax/crypto/interfaces/DHKey;

    .line 294
    invoke-interface {p2}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 295
    new-array p2, p1, [B

    .line 297
    aget-object v4, p3, v2

    .line 298
    array-length v5, v4

    sub-int/2addr v5, v1

    const/4 v6, 0x3

    if-le v5, p1, :cond_1

    .line 300
    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v6, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_0

    .line 304
    :cond_1
    array-length v5, p2

    array-length v7, v4

    sub-int/2addr v7, v1

    sub-int/2addr v5, v7

    array-length v7, v4

    sub-int/2addr v7, v1

    invoke-static {v4, v1, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    .line 308
    :goto_0
    aget-object p3, p3, v3

    const/4 v3, 0x0

    .line 309
    :goto_1
    array-length v4, p2

    if-eq v3, v4, :cond_2

    .line 311
    aput-byte v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_2
    array-length v2, p3

    sub-int/2addr v2, v1

    if-le v2, p1, :cond_3

    .line 316
    array-length p1, p3

    sub-int/2addr p1, v6

    invoke-virtual {v0, p3, v6, p1}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_3

    .line 320
    :cond_3
    array-length p1, p2

    array-length v2, p3

    sub-int/2addr v2, v1

    sub-int/2addr p1, v2

    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    goto :goto_3

    .line 287
    :cond_4
    :goto_2
    aget-object p1, p3, v2

    .line 289
    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 327
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "exception decrypting session data"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 281
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private decryptSessionData(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 208
    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 210
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    const/4 v3, 0x0

    .line 212
    aget-object p3, p3, v3

    .line 214
    aget-byte v4, p3, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v6, p3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 215
    new-array v6, v4, [B

    const/4 v7, 0x2

    .line 217
    invoke-static {p3, v7, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v7

    .line 219
    aget-byte v7, p3, v4

    new-array v7, v7, [B

    add-int/2addr v4, v5

    .line 221
    array-length v8, v7

    invoke-static {p3, v4, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p3

    invoke-virtual {p3, v6}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    .line 227
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-static {v0, v2}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v2

    .line 229
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->getAgreementAlgorithm(Lorg/bouncycastle/bcpg/PublicKeyPacket;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 231
    invoke-virtual {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    .line 233
    new-instance v3, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v3, v2}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {v0, p2, v3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 235
    new-instance p2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    new-instance v2, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/16 v3, 0x12

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    new-instance v6, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 236
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v9

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v10

    invoke-direct {v6, v8, p3, v9, v10}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;II)V

    invoke-direct {v2, v3, v4, v6}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    iget-object p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {p2, v2, p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 235
    invoke-virtual {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 238
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->getKeyEncryptionOID(I)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x4

    .line 242
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "Session"

    const/4 p3, 0x3

    .line 244
    invoke-virtual {p2, v7, p1, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 266
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 262
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 258
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 254
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 250
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private x25519Decrypt(Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    const/4 v2, 0x0

    .line 159
    aget-object p2, p2, v2

    .line 161
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v5, p2, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 162
    new-array v5, v3, [B

    const/4 v6, 0x2

    .line 164
    invoke-static {p2, v6, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    .line 166
    aget-byte v6, p2, v3

    new-array v6, v6, [B

    add-int/2addr v3, v4

    .line 168
    array-length v7, v6

    invoke-static {p2, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 171
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object p1

    .line 173
    invoke-static {p1, v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMult([BI[BI)[B

    move-result-object p1

    .line 177
    :try_start_0
    new-instance p2, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;

    .line 178
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {p2, v3}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 179
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-static {v0, v3}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v0

    .line 180
    new-instance v3, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-direct {v3, p1, v0}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {p2, v3}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 182
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherSize(I)I

    move-result p1

    new-array p1, p1, [B

    .line 183
    array-length v0, p1

    invoke-interface {p2, p1, v2, v0}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 185
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x4

    .line 186
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "Session"

    const/4 v0, 0x3

    .line 187
    invoke-virtual {p2, v6, p1, v0}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 201
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "error setting asymmetric cipher"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 197
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "error setting asymmetric cipher"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 193
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "error setting asymmetric cipher"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public build(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    .line 123
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/PGPPrivateKey;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 78
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 80
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
