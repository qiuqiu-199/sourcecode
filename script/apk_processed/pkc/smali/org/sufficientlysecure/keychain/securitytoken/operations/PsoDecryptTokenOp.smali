.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;
.super Ljava/lang/Object;
.source "PsoDecryptTokenOp.java"


# instance fields
.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

.field private final fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    .line 67
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;
    .locals 5

    move-object/16 v2, p0

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private decryptSessionKeyEcdh([BLorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    .line 116
    invoke-direct {v9, v10}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->getMpiLength([B)I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 117
    invoke-static {v10, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 119
    invoke-direct {v9, v11, v2}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->getEcDecipherPayload(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)[B

    move-result-object v11

    .line 122
    array-length v3, v11

    const/16 v4, -0x7f

    const/16 v5, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v3, v5, :cond_0

    .line 123
    new-array v3, v6, [B

    array-length v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    goto :goto_0

    .line 125
    :cond_0
    new-array v3, v1, [B

    aput-byte v4, v3, v7

    array-length v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    :goto_0
    const-string v8, "86"

    .line 127
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v3, v11}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v11

    .line 129
    array-length v3, v11

    if-ge v3, v5, :cond_1

    .line 130
    new-array v3, v6, [B

    array-length v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    goto :goto_1

    .line 132
    :cond_1
    new-array v3, v1, [B

    aput-byte v4, v3, v7

    array-length v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    :goto_1
    const-string v8, "7F49"

    .line 134
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v3, v11}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v11

    .line 136
    array-length v3, v11

    if-ge v3, v5, :cond_2

    .line 137
    new-array v1, v6, [B

    array-length v3, v11

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    goto :goto_2

    .line 139
    :cond_2
    new-array v1, v1, [B

    aput-byte v4, v1, v7

    array-length v3, v11

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    :goto_2
    const-string v3, "A6"

    .line 141
    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1, v11}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v11

    .line 143
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v11, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createDecipherCommand([BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v11

    .line 145
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v11

    .line 147
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 148
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string p0, "Deciphering with Security token failed on receive"

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v11

    invoke-direct {v10, p0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 164
    :cond_3
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v11

    .line 166
    aget-byte v1, v10, v0

    new-array v1, v1, [B

    add-int/2addr v0, v6

    .line 168
    array-length v2, v1

    invoke-static {v10, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getSecurityTokenHashAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    const/4 v0, 0x4

    .line 173
    new-array v2, v0, [B

    fill-array-data v2, :array_0

    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    iget-object v11, v9, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-virtual {p0, v11}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->createUserKeyingMaterial(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 177
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    const-string v11, "AESWrap"

    .line 178
    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 180
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getSecurityTokenSymmetricKeySize()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    const-string v3, "AES"

    invoke-direct {v2, v10, v7, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p0, "Session"

    const/4 v0, 0x3

    .line 182
    invoke-virtual {v11, v1, p0, v0}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v11

    .line 184
    invoke-static {v10, v7}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 186
    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 194
    :catch_0
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v11, "Invalid KEK!"

    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_1
    move-exception v10

    .line 192
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 190
    :catch_2
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v11, "Unknown padding algorithm!"

    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 188
    :catch_3
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v11, "Unknown digest/encryption algorithm!"

    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v10

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->decryptSessionKeyEcdh([BLorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private decryptSessionKeyRsa([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 88
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->getMpiLength([B)I

    move-result v0

    .line 89
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->getRsaOperationPayload([B)[B

    move-result-object v3

    .line 91
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createDecipherCommand([BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    .line 92
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Deciphering with Security token failed on receive"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 98
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->decryptSessionKeyRsa([B)[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getEcDecipherPayload(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/CardException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 199
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->CV25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/16 v0, 0x21

    .line 200
    invoke-static {v4, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 202
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v4, "Invalid EC point!"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v4, 0x0

    .line 208
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->getEcDecipherPayload(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getMpiLength([B)I
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x0

    .line 213
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->getMpiLength([B)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getRsaOperationPayload([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 103
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->getMpiLength([B)I

    move-result v0

    .line 104
    array-length v1, v5

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v5, Ljava/io/IOException;

    const-string v0, "Malformed RSA session key!"

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 108
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 109
    aput-byte v3, v1, v3

    const/4 v3, 0x1

    .line 110
    invoke-static {v5, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->getRsaOperationPayload([B)[B"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyAndDecryptSessionKey([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 72
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyPinForOther()V

    .line 74
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v0

    .line 75
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance v4, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v5, "Unknown encryption key type!"

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :pswitch_0
    check-cast v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    invoke-direct {v3, v4, v0, v5}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->decryptSessionKeyEcdh([BLorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B

    move-result-object v4

    return-object v4

    .line 77
    :pswitch_1
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->decryptSessionKeyRsa([B)[B

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;--->verifyAndDecryptSessionKey([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
