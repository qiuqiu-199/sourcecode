.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.source "JcePublicKeyKeyEncryptionMethodGenerator.java"


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;Z)V

    .line 52
    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance p2, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p2}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 53
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    .line 54
    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 55
    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-void
.end method

.method private constructEncryptedData(Lorg/bouncycastle/bcpg/MPInteger;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1

    .line 242
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 244
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v1, p1

    array-length v3, p2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 246
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private deriveEncryptionKey([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 179
    invoke-static {p3}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherSize(I)I

    move-result p3

    new-array p3, p3, [B

    .line 181
    new-instance v0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;

    invoke-static {p4}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p4

    invoke-direct {v0, p4}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 182
    new-instance p4, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-direct {p4, p1, p2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 183
    array-length p1, p3

    const/4 p2, 0x0

    invoke-interface {v0, p3, p2, p1}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    return-object p3
.end method

.method private encryptCv25519SessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 157
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v1

    .line 158
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v2

    const/16 v3, 0x20

    .line 160
    new-array v3, v3, [B

    .line 161
    iget-object v4, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v4, 0x21

    .line 163
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x40

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    .line 165
    invoke-static {v3, v5, v4, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMultBase([BI[BI)V

    .line 167
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v3, v5, v0, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMult([BI[BI)[B

    move-result-object v0

    .line 168
    new-instance v3, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-static {p1, v3}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object p1

    .line 169
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->deriveEncryptionKey([B[BII)[B

    move-result-object p1

    .line 170
    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->encryptSessionKey([B[BI)[B

    move-result-object p1

    .line 172
    new-instance p2, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-static {v4}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    .line 174
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->constructEncryptedData(Lorg/bouncycastle/bcpg/MPInteger;[B)[B

    move-result-object p1

    return-object p1
.end method

.method private encryptEcdhSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 202
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 205
    new-instance v3, Lorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 207
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v4, "EC"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 209
    const-class v4, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2, v4}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 211
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 213
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->getAgreementAlgorithm(Lorg/bouncycastle/bcpg/PublicKeyPacket;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 215
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-static {v6, v7}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 217
    iget-object v4, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 219
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->getKeyEncryptionOID(I)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 221
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 223
    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    const/4 v5, 0x3

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 225
    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object p1

    .line 227
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x0

    aget-byte p2, p2, v5

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    .line 229
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    .line 231
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    .line 233
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 235
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p2

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    .line 237
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->constructEncryptedData(Lorg/bouncycastle/bcpg/MPInteger;[B)[B

    move-result-object p1

    return-object p1
.end method

.method private encryptSessionKey([B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 190
    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object v0

    .line 191
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    aget-byte p2, p2, v2

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 193
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 194
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p3}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 110
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->CV25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 111
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->encryptCv25519SessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->encryptEcdhSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p1

    return-object p1

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    const/4 v1, 0x1

    .line 126
    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 128
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set up ephemeral keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 145
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode MPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 141
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 137
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad padding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 133
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal block size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
