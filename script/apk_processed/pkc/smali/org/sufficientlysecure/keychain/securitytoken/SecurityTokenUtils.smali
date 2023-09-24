.class public Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;
.super Ljava/lang/Object;
.source "SecurityTokenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static attributesForRsaKey(ILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B
    .locals 7

    move/16 v4, p0

    move-object/16 v5, p1

    .line 62
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    move-result-object v0

    .line 63
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getExponentLength()I

    move-result v5

    const/4 v1, 0x6

    .line 66
    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v1, v5

    .line 72
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->getValue()B

    move-result v4

    const/4 v5, 0x5

    aput-byte v4, v1, v5

    return-object v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->attributesForRsaKey(ILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static attributesFromSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 39
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isRSA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    invoke-static {v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->attributesForRsaKey(ILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B

    move-result-object v3

    return-object v3

    .line 41
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isEC()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getCurveOid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object v4

    .line 43
    array-length v5, v4

    const/4 v0, 0x2

    sub-int/2addr v5, v0

    const/4 v1, 0x1

    add-int/2addr v5, v1

    add-int/2addr v5, v1

    new-array v5, v5, [B

    .line 45
    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v2, 0x0

    if-eqz v3, :cond_1

    .line 46
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->getValue()B

    move-result v3

    aput-byte v3, v5, v2

    goto :goto_0

    .line 48
    :cond_1
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->getValue()B

    move-result v3

    aput-byte v3, v5, v2

    .line 51
    :goto_0
    array-length v3, v4

    sub-int/2addr v3, v0

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v3, v5

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    aput-byte v4, v5, v3

    return-object v5

    .line 57
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsupported key type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->attributesFromSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createECPrivKeyTemplate(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 154
    invoke-interface {v8}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    const-string v8, "92"

    .line 155
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 158
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->isWithPubkey()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "04"

    .line 159
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 160
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 161
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    const-string v8, "99"

    .line 162
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 163
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    :cond_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->getSlot()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    .line 171
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v8, "7F48"

    .line 174
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 175
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v8, "5F48"

    .line 179
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v8, "4D"

    .line 184
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->createECPrivKeyTemplate(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)[B"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRSAPrivKeyTemplate(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getExponentLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    const/4 v5, 0x2

    .line 86
    new-array v5, v5, [B

    const/4 v6, 0x0

    const/16 v7, -0x6f

    aput-byte v7, v5, v6

    int-to-byte v7, v4

    const/4 v8, 0x1

    aput-byte v7, v5, v8

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 87
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 89
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getModulusLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    const-string v5, "928180"

    .line 92
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    div-int/lit8 v7, v4, 0x2

    invoke-static {v2, v5, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    const-string v5, "938180"

    .line 96
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 100
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->isIncludeCrt()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "948180"

    .line 102
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 103
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    const-string v5, "958180"

    .line 106
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    const-string v5, "968180"

    .line 110
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 114
    :cond_0
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->isIncludeModulus()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "97820100"

    .line 116
    invoke-static {v11}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v2, v9, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 124
    :cond_1
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->getSlot()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v9, "7F48"

    .line 128
    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v9, "5F48"

    .line 133
    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v9, "4D"

    .line 138
    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 142
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->createRSAPrivKeyTemplate(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static encodeLength(I)[B
    .locals 11

    move/16 v8, p0

    if-gez v8, :cond_0

    .line 193
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v0, "length is negative"

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/high16 v0, 0x1000000

    if-lt v8, v0, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length is too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v8, v0, :cond_2

    .line 199
    new-array v0, v2, [B

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0x100

    if-ge v8, v3, :cond_3

    .line 202
    new-array v0, v0, [B

    const/16 v3, -0x7f

    aput-byte v3, v0, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    const/high16 v5, 0x10000

    if-ge v8, v5, :cond_4

    .line 206
    new-array v4, v4, [B

    const/16 v5, -0x7e

    aput-byte v5, v4, v1

    .line 208
    div-int/lit16 v1, v8, 0x100

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    .line 209
    rem-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    move-object v0, v4

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    .line 211
    new-array v6, v6, [B

    const/16 v7, -0x7d

    aput-byte v7, v6, v1

    .line 214
    div-int v1, v8, v5

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 215
    div-int/lit16 v1, v8, 0x100

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 216
    rem-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    move-object v0, v6

    :goto_0
    return-object v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->encodeLength(I)[B"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 222
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 223
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "value is negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-gtz v7, :cond_1

    .line 225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "width <= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_1
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :goto_0
    array-length v2, v6

    if-ge v1, v2, :cond_2

    aget-byte v2, v6, v1

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_2
    array-length v2, v6

    sub-int/2addr v2, v1

    if-le v2, v7, :cond_3

    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not enough width to fit value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v6

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_3
    new-array v2, v7, [B

    .line 240
    array-length v3, v6

    sub-int/2addr v3, v1

    sub-int v3, v7, v3

    array-length v4, v6

    sub-int/2addr v4, v1

    invoke-static {v6, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    invoke-virtual {v5, v2, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 246
    invoke-static {v6, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;--->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
