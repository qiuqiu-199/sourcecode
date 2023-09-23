.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
.super Ljava/lang/Object;
.source "JcaPGPKeyConverter.java"


# instance fields
.field private fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 78
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method private getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 425
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    return-object p1
.end method

.method private getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 431
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "EC"

    invoke-virtual {p2, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p2

    .line 433
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 435
    const-class p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    return-object p1
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 384
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 416
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :pswitch_0
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    .line 408
    new-instance v0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 394
    :pswitch_1
    check-cast p2, Ljava/security/interfaces/DSAPrivateKey;

    .line 396
    new-instance v0, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 400
    :pswitch_2
    check-cast p2, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 402
    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 389
    :pswitch_3
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 391
    new-instance v0, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 411
    :cond_0
    check-cast p2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPrivateKey;

    .line 413
    new-instance v0, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;-><init>([B)V

    .line 419
    :goto_0
    new-instance p2, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 189
    instance-of v0, p3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 191
    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    .line 193
    new-instance p2, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    .line 195
    :cond_0
    instance-of v0, p3, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    .line 197
    check-cast p3, Ljava/security/interfaces/DSAPublicKey;

    .line 198
    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p2

    .line 200
    new-instance v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p2, v0

    goto/16 :goto_1

    .line 202
    :cond_1
    instance-of v0, p3, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_2

    .line 204
    check-cast p3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 205
    invoke-interface {p3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    .line 207
    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 209
    :cond_2
    instance-of v0, p3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_3

    .line 211
    check-cast p3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;

    .line 215
    :try_start_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->getA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object p2

    .line 216
    invoke-static {p2}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->fromEdDSAEncodedPoint([B)Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 220
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "Error converting to EdDSA key"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 223
    :cond_3
    instance-of v0, p3, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_7

    .line 225
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p3

    .line 228
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 232
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 233
    new-instance p3, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-direct {p3, v1, v2}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_5

    .line 237
    check-cast p2, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    if-nez p2, :cond_4

    .line 241
    new-instance p2, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;-><init>(II)V

    .line 243
    :cond_4
    new-instance v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v2

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {v1, v0, p3, v2, p2}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;II)V

    move-object p2, v1

    goto :goto_1

    :cond_5
    const/16 p2, 0x13

    if-ne p1, p2, :cond_6

    .line 247
    new-instance p2, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 259
    :goto_1
    new-instance p3, Lorg/bouncycastle/openpgp/PGPPublicKey;

    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1, p4, p2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p3

    .line 251
    :cond_6
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "unknown EC algorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_7
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 282
    instance-of v0, p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    .line 294
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 358
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :pswitch_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    .line 334
    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    .line 335
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 336
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    .line 337
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 338
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 324
    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 325
    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    .line 326
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 327
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    .line 328
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 329
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDH"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 331
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_2
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    .line 316
    check-cast p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    .line 317
    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    .line 318
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 320
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "DSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 350
    :pswitch_3
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    .line 351
    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    .line 352
    new-instance v1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 354
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ElGamal"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 356
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 299
    :pswitch_4
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    .line 300
    check-cast p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    .line 301
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 302
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 303
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 304
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 305
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 306
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 307
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 308
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 309
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 311
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "RSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 313
    invoke-virtual {p1, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 342
    :cond_1
    check-cast p1, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;

    .line 343
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;->getSeed()[B

    move-result-object p1

    const-string v1, "ed25519"

    .line 344
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;)V

    .line 345
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "EDDSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 367
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 363
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 159
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    .line 141
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 144
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 146
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 131
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 134
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 135
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 136
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDH"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    .line 116
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 118
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "DSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    .line 124
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 126
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "ElGamal"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    .line 109
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 111
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "RSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    const-string v0, "ed25519"

    .line 151
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->getEdDSAEncodedPoint()[B

    move-result-object p1

    .line 154
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;)V

    .line 156
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "EDDSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception constructing public key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 164
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    .line 89
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
