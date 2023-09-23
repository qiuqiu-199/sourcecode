.class Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;
.super Ljava/lang/Object;
.source "SCP11bSecureMessaging.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10

.field private static final CERTIFICATE_FORMAT:Ljava/lang/String; = "X.509"

.field private static final OPENPGP_SECURE_MESSAGING_CLA_MASK:B = 0x4t

.field private static final OPENPGP_SECURE_MESSAGING_KEY_ATTRIBUTES_TAG:B = -0x2ct

.field private static final PROVIDER:Ljava/lang/String; = "BC"

.field private static final SCP11B_KEY_AGREEMENT_ALGO:Ljava/lang/String; = "ECDH"

.field private static final SCP11B_KEY_AGREEMENT_KEY_ALGO:Ljava/lang/String; = "EC"

.field private static final SCP11B_KEY_AGREEMENT_KEY_TYPE:Ljava/lang/String; = "ECDH"

.field private static final SCP11B_KEY_DERIVATION_ALGO:Ljava/lang/String; = "SHA256"

.field private static final SCP11_CIPHER_ALGO:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final SCP11_MAC_ALGO:Ljava/lang/String; = "AESCMAC"

.field private static final SCP11_MAC_LENGTH:I = 0x8

.field private static final SCP11_SYMMETRIC_ALGO:Ljava/lang/String; = "AES"

.field private static certFactory:Ljava/security/cert/CertificateFactory;

.field private static ecdhFactory:Ljava/security/KeyFactory;

.field private static srand:Ljava/security/SecureRandom;


# instance fields
.field private mEncryptionCounter:S

.field private mMacChaining:[B

.field private mSEnc:Ljavax/crypto/SecretKey;

.field private mSMac:Ljavax/crypto/SecretKey;

.field private mSRMac:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 114
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static establish(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v25, p0

    move-object/16 v26, p1

    move-object/16 v27, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    .line 285
    invoke-virtual/range {v25 .. v25}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    const/16 v3, -0x2c

    const/4 v4, 0x0

    .line 288
    invoke-virtual {v2, v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGetDataCommand(II)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    .line 289
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v5

    .line 290
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "failed to retrieve secure messaging key attributes"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 294
    array-length v7, v5

    if-ne v7, v6, :cond_18

    aget-object v7, v5, v4

    iget v7, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    int-to-byte v7, v7

    if-eq v7, v3, :cond_1

    goto/16 :goto_9

    .line 300
    :cond_1
    aget-object v3, v5, v4

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object v5

    sget-object v7, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ECKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    if-eq v5, v7, :cond_2

    .line 303
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid format of secure messaging key"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_2
    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    .line 308
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    if-nez v5, :cond_3

    .line 309
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "unsupported curve"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_3
    :try_start_0
    invoke-static/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 317
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getExperimentalSmartPGPAuthoritiesEnable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 319
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createSelectSecureMessagingCertificateCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    .line 320
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v5

    .line 321
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_4

    .line 322
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "failed to select secure messaging certificate"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGetDataCardHolderCertCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    .line 325
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_5

    .line 327
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "failed to retrieve secure messaging certificate"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_5
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v5

    move-object/from16 v7, v26

    invoke-static {v7, v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->verifyCertificate(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    goto :goto_0

    .line 333
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createRetrieveSecureMessagingPublicKeyCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    .line 334
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_7

    .line 336
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "failed to retrieve secure messaging public key"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_7
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v5

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 339
    array-length v7, v5

    if-ne v7, v6, :cond_17

    aget-object v7, v5, v4

    iget v7, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    int-to-short v7, v7

    const/16 v8, 0x7f49

    if-eq v7, v8, :cond_8

    goto/16 :goto_8

    .line 344
    :cond_8
    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 345
    array-length v7, v5

    if-ne v7, v6, :cond_16

    aget-object v7, v5, v4

    iget v7, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    int-to-byte v7, v7

    const/16 v8, -0x7a

    if-eq v7, v8, :cond_9

    goto/16 :goto_7

    .line 351
    :cond_9
    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->newECDHPublicKey(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_a

    .line 355
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "No key in token for secure messaging"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_a
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v7

    .line 359
    invoke-virtual {v7}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v7

    const/16 v8, 0x200

    const/16 v9, 0x10

    if-ge v7, v8, :cond_b

    const/16 v7, 0x10

    goto :goto_1

    :cond_b
    const/16 v7, 0x20

    .line 368
    :goto_1
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->generateECDHKeyPair(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/KeyPair;

    move-result-object v8

    .line 369
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v10

    check-cast v10, Ljava/security/interfaces/ECPublicKey;

    .line 370
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    check-cast v8, Ljava/security/interfaces/ECPrivateKey;

    const/16 v11, 0x11

    .line 372
    new-array v12, v11, [B

    const/16 v13, -0x5a

    aput-byte v13, v12, v4

    const/16 v13, 0xd

    aput-byte v13, v12, v6

    const/16 v14, -0x70

    const/4 v15, 0x2

    aput-byte v14, v12, v15

    const/4 v14, 0x3

    aput-byte v15, v12, v14

    const/4 v14, 0x4

    aput-byte v11, v12, v14

    const/4 v11, 0x5

    aput-byte v4, v12, v11

    const/16 v16, -0x6b

    const/16 v17, 0x6

    aput-byte v16, v12, v17

    const/4 v11, 0x7

    aput-byte v6, v12, v11

    const/16 v16, 0x3c

    const/16 v18, 0x8

    aput-byte v16, v12, v18

    const/16 v16, 0x9

    const/16 v19, -0x80

    aput-byte v19, v12, v16

    const/16 v16, 0xa

    aput-byte v6, v12, v16

    const/16 v16, -0x78

    const/16 v19, 0xb

    aput-byte v16, v12, v19

    const/16 v16, 0xc

    const/16 v20, -0x7f

    aput-byte v20, v12, v16

    aput-byte v6, v12, v13

    const/16 v13, 0xe

    int-to-byte v11, v7

    aput-byte v11, v12, v13

    const/16 v13, 0xf

    const/16 v16, 0x5f

    aput-byte v16, v12, v13

    const/16 v13, 0x49

    aput-byte v13, v12, v9

    .line 380
    invoke-interface {v10}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v13

    move-object/from16 v21, v5

    int-to-double v4, v13

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    div-double v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 382
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    invoke-virtual {v5, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 385
    invoke-interface {v10}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v14

    invoke-static {v5, v14, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 386
    invoke-interface {v10}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-static {v5, v10, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->writeBits(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;I)V

    .line 388
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 389
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->encodeLength(I)[B

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 390
    invoke-virtual {v5, v13}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 393
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createInternalAuthForSecureMessagingCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v2

    .line 394
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_c

    .line 396
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "failed to initiate internal authenticate"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_c
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    invoke-static {v2, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 400
    array-length v4, v2

    if-ne v4, v15, :cond_15

    const/4 v4, 0x0

    aget-object v5, v2, v4

    iget v4, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    aget-object v5, v2, v6

    iget v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    if-ne v4, v5, :cond_d

    goto/16 :goto_6

    :cond_d
    const/4 v4, 0x0

    move-object v5, v4

    move-object v10, v5

    const/4 v4, 0x0

    .line 409
    :goto_2
    array-length v14, v2

    if-ge v4, v14, :cond_11

    .line 410
    aget-object v14, v2, v4

    iget v14, v14, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    const/16 v15, 0x86

    if-eq v14, v15, :cond_f

    const/16 v5, 0x5f49

    if-eq v14, v5, :cond_e

    .line 423
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "unexpected data in internal authenticate response"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_e
    aget-object v5, v2, v4

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->newECDHPublicKey(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    goto :goto_3

    .line 412
    :cond_f
    aget-object v10, v2, v4

    iget v10, v10, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mL:I

    if-eq v10, v9, :cond_10

    .line 413
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid size for receipt"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_10
    aget-object v10, v2, v4

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v15, 0x2

    goto :goto_2

    :cond_11
    const-string v2, "ECDH"

    const-string v3, "BC"

    .line 427
    invoke-static {v2, v3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    invoke-virtual {v2, v8}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 432
    invoke-virtual {v2, v5, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 433
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 436
    invoke-virtual {v2, v8}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    move-object/from16 v5, v21

    .line 437
    invoke-virtual {v2, v5, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 438
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 440
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v4, 0x3

    add-int/2addr v2, v4

    const/4 v5, 0x7

    .line 442
    new-array v5, v5, [B

    const/4 v8, 0x0

    aput-byte v8, v5, v8

    aput-byte v8, v5, v6

    const/4 v14, 0x2

    aput-byte v8, v5, v14

    aput-byte v8, v5, v4

    aget-byte v4, v12, v18

    const/4 v8, 0x4

    aput-byte v4, v5, v8

    aget-byte v4, v12, v19

    const/4 v8, 0x5

    aput-byte v4, v5, v8

    aput-byte v11, v5, v17

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 447
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "SHA256"

    const-string v5, "BC"

    .line 450
    invoke-static {v4, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 452
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 453
    :goto_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    mul-int/lit8 v11, v7, 0x4

    if-ge v8, v11, :cond_12

    .line 454
    aget-byte v8, v3, v2

    add-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 455
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_4

    .line 458
    :cond_12
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 460
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    mul-int/lit8 v3, v7, 0x2

    .line 461
    invoke-static {v2, v7, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/4 v6, 0x3

    mul-int/lit8 v7, v7, 0x3

    .line 462
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 463
    invoke-static {v2, v7, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const-string v6, "AESCMAC"

    const-string v7, "BC"

    .line 466
    invoke-static {v6, v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 468
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 470
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v1

    .line 471
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 472
    array-length v4, v1

    const/4 v7, 0x2

    sub-int/2addr v4, v7

    sub-int/2addr v4, v9

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 473
    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    :goto_5
    if-ge v7, v9, :cond_14

    .line 476
    aget-byte v4, v1, v7

    aget-byte v6, v10, v7

    if-eq v4, v6, :cond_13

    .line 477
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "corrupted receipt!"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 481
    :cond_14
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;-><init>()V

    .line 482
    invoke-direct {v1, v5, v3, v2, v10}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->setKeys([B[B[B[B)V

    return-object v1

    .line 403
    :cond_15
    :goto_6
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid internal authenticate response"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_16
    :goto_7
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid format of secure messaging key"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_17
    :goto_8
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid format of secure messaging key"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 499
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal argument ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 497
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 495
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid algorithm parameters : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :catch_3
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "unknown provider BC"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 491
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid ECDH parameters : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/spec/InvalidParameterSpecException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 489
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown EC key algorithm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 487
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key specification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_18
    :goto_9
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v2, "invalid format of secure messaging key attributes"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->establish(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generateECDHKeyPair(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/KeyPair;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/16 v2, p0

    const-string v0, "EC"

    const-string v1, "BC"

    .line 191
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 193
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->srand:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->srand:Ljava/security/SecureRandom;

    .line 197
    :cond_0
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->getAlgorithmParameterSpec(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->srand:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 199
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->generateECDHKeyPair(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/KeyPair;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getAlgorithmParameterSpec(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/spec/ECParameterSpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    move-object/16 v2, p0

    const-string v0, "EC"

    const-string v1, "BC"

    .line 155
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    const-class v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/ECParameterSpec;

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->getAlgorithmParameterSpec(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/spec/ECParameterSpec;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static newECDHPublicKey(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 166
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->ecdhFactory:Ljava/security/KeyFactory;

    if-nez v0, :cond_0

    const-string v0, "ECDH"

    const-string v1, "BC"

    .line 167
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->ecdhFactory:Ljava/security/KeyFactory;

    .line 170
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    const-string v4, "unsupported curve"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "invalid EC point"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_2
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    .line 182
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 183
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->getAlgorithmParameterSpec(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 185
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->ecdhFactory:Ljava/security/KeyFactory;

    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->newECDHPublicKey(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setKeys([B[B[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 123
    array-length v0, v3

    array-length v1, v4

    if-ne v0, v1, :cond_1

    array-length v0, v3

    array-length v1, p0

    if-ne v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    .line 130
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSMac:Ljavax/crypto/SecretKey;

    .line 131
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSRMac:Ljavax/crypto/SecretKey;

    const/4 v3, 0x0

    .line 132
    iput-short v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    .line 133
    iput-object p1, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    return-void

    .line 126
    :cond_1
    :goto_0
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v4, "incoherent SCP11b key set"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->setKeys([B[B[B[B)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static verifyCertificate(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 207
    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->certFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    const-string v0, "X.509"

    const-string v1, "BC"

    .line 208
    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 211
    :cond_0
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->getAlgorithmParameterSpec(Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 213
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->certFactory:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 214
    instance-of v0, v5, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1

    .line 215
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid card certificate"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_1
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 219
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 220
    instance-of v1, v0, Ljava/security/interfaces/ECPublicKey;

    if-nez v1, :cond_2

    .line 221
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid card public key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_2
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 224
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 226
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 227
    new-instance v3, Ljava/io/IOException;

    const-string v4, "incoherent card certificate/public key format"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_3
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v3

    if-nez v3, :cond_4

    .line 233
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "no keystore found"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_4
    new-instance v4, Ljava/security/cert/X509CertSelector;

    invoke-direct {v4}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 237
    invoke-virtual {v4, v5}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v5, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v5, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    const-string v1, "Collection"

    const-string v2, "BC"

    .line 242
    invoke-static {v1, v5, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v5

    .line 244
    new-instance v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v1, v3, v4}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v1, v3}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 246
    invoke-virtual {v1, v5}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 248
    invoke-static {}, Ljava/security/cert/CertPathBuilder;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v1}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathBuilderResult;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 271
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid certificate path ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/CertPathBuilderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v3

    .line 269
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid algorithm parameter ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_2
    move-exception v3

    .line 267
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to build keystore ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v3

    .line 265
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unavailable crypto ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4
    move-exception v3

    .line 262
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 263
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal argument ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_5
    move-exception v3

    .line 260
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid card key parameters ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/spec/InvalidParameterSpecException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_6
    move-exception v3

    .line 258
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown algorithm ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_7
    move-exception v3

    .line 256
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid card certificate ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->verifyCertificate(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;[B)Ljava/security/interfaces/ECPublicKey;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearSession()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 138
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    .line 139
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSMac:Ljavax/crypto/SecretKey;

    .line 140
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSRMac:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    .line 141
    iput-short v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    .line 142
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->clearSession()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encryptAndSign(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;
        }
    .end annotation

    move-object/16 v11, p0

    move-object/16 v12, p1

    .line 509
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    new-instance v12, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "not established"

    invoke-direct {v12, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 513
    :cond_0
    iget-short v0, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    .line 514
    iget-short v0, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    if-gtz v0, :cond_1

    .line 515
    new-instance v12, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "exhausted encryption counter"

    invoke-direct {v12, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 520
    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v0

    .line 522
    array-length v2, v0

    const/16 v3, 0x8

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-lez v2, :cond_2

    const-string v2, "AES/CBC/NoPadding"

    .line 523
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/16 v6, 0x10

    .line 525
    new-array v7, v6, [B

    .line 526
    invoke-static {v7, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 527
    iget-object v8, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v1, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v8, 0xe

    .line 529
    iget-short v9, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    shr-int/2addr v9, v3

    and-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/16 v8, 0xf

    .line 530
    iget-short v9, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    and-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 532
    invoke-virtual {v2, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 534
    iget-object v8, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v1, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 536
    array-length v8, v0

    add-int/2addr v8, v6

    array-length v9, v0

    rem-int/2addr v9, v6

    sub-int/2addr v8, v9

    new-array v6, v8, [B

    .line 537
    array-length v8, v0

    invoke-static {v0, v5, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    array-length v8, v0

    const/16 v9, -0x80

    aput-byte v9, v6, v8

    .line 540
    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 542
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 544
    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 545
    invoke-static {v7, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 549
    :cond_2
    array-length v2, v0

    add-int/2addr v2, v3

    add-int/lit8 v6, v2, 0x7

    const/4 v7, 0x3

    add-int/2addr v6, v7

    .line 551
    new-array v6, v6, [B

    .line 554
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getCLA()I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    const/4 v8, 0x2

    .line 555
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v1

    .line 556
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v8

    .line 557
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    if-le v2, v4, :cond_3

    const/4 v12, 0x5

    .line 560
    aput-byte v5, v6, v9

    const/4 v9, 0x6

    shr-int/lit8 v1, v2, 0x8

    and-int/2addr v1, v4

    int-to-byte v1, v1

    .line 561
    aput-byte v1, v6, v12

    :cond_3
    add-int/lit8 v12, v9, 0x1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 563
    aput-byte v1, v6, v9

    .line 565
    array-length v1, v0

    invoke-static {v0, v5, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    array-length v1, v0

    add-int/2addr v12, v1

    .line 568
    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const-string v0, "AESCMAC"

    const-string v1, "BC"

    .line 570
    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 571
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSMac:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 572
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 573
    invoke-virtual {v0, v6, v5, v12}, Ljavax/crypto/Mac;->update([BII)V

    .line 574
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iput-object v0, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    .line 576
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    invoke-static {v0, v5, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v3

    if-le v2, v4, :cond_4

    add-int/lit8 v0, v12, 0x1

    .line 580
    aput-byte v5, v6, v12

    move v12, v0

    :cond_4
    add-int/lit8 v0, v12, 0x1

    .line 582
    aput-byte v5, v6, v12

    .line 584
    invoke-static {v6, v5, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->fromBytes([BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v12

    .line 586
    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v12

    .line 603
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid block size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v12

    .line 601
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v12

    .line 599
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v12

    .line 597
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v12

    .line 595
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable padding algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v12

    .line 593
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v12

    .line 591
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v13, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->encryptAndSign(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEstablished()Z
    .locals 4

    move-object/16 v1, p0

    .line 147
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSMac:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSRMac:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->isEstablished()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyAndDecrypt(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;
        }
    .end annotation

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 612
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "not established"

    invoke-direct {v11, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 616
    :cond_0
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v0

    .line 618
    array-length v1, v0

    if-nez v1, :cond_1

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v1

    const/16 v2, 0x62

    if-eq v1, v2, :cond_1

    .line 620
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v1

    const/16 v2, 0x63

    if-eq v1, v2, :cond_1

    return-object v11

    .line 624
    :cond_1
    array-length v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 625
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "missing or incomplete MAC in response"

    invoke-direct {v11, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    :try_start_0
    const-string v1, "AESCMAC"

    const-string v3, "BC"

    .line 630
    invoke-static {v1, v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 631
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSRMac:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 633
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mMacChaining:[B

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 634
    array-length v3, v0

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 635
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v4, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 637
    :cond_3
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->update(B)V

    .line 638
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->update(B)V

    .line 640
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 643
    array-length v5, v1

    if-ge v3, v5, :cond_5

    aget-byte v5, v1, v3

    array-length v6, v0

    sub-int/2addr v6, v2

    add-int/2addr v6, v3

    aget-byte v6, v0, v6

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    :cond_5
    :goto_1
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "corrupted integrity"

    invoke-direct {v11, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 649
    :cond_6
    array-length v1, v0

    sub-int/2addr v1, v2

    const/16 v3, 0x10

    rem-int/2addr v1, v3

    if-eqz v1, :cond_7

    .line 650
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "invalid encrypted data size"

    invoke-direct {v11, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 653
    :cond_7
    array-length v1, v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v1, v2, :cond_b

    const-string v1, "AES/CBC/NoPadding"

    .line 654
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 656
    new-array v3, v3, [B

    .line 657
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 658
    iget-object v7, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v7, -0x80

    aput-byte v7, v3, v4

    const/16 v8, 0xe

    .line 661
    iget-short v9, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    shr-int/2addr v9, v2

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    const/16 v8, 0xf

    .line 662
    iget-short v9, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mEncryptionCounter:S

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 664
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 666
    iget-object v8, v10, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->mSEnc:Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v5, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 667
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 669
    array-length v1, v0

    sub-int/2addr v1, v6

    :goto_2
    if-lez v1, :cond_8

    .line 670
    aget-byte v2, v0, v1

    if-nez v2, :cond_8

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    if-lez v1, :cond_a

    .line 672
    aget-byte v2, v0, v1

    if-eq v2, v7, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v1, 0x2

    .line 676
    new-array v2, v2, [B

    .line 677
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    array-length v1, v2

    sub-int/2addr v1, v5

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 679
    array-length v1, v2

    sub-int/2addr v1, v6

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 681
    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_4

    .line 673
    :cond_a
    :goto_3
    new-instance v11, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    const-string v0, "invalid data padding after decryption"

    invoke-direct {v11, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 685
    :cond_b
    new-array v2, v5, [B

    .line 686
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 687
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v2, v6

    .line 690
    :goto_4
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v11

    .line 707
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid block size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v11

    .line 705
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v11

    .line 703
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v11

    .line 701
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v11

    .line 699
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable padding algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v11

    .line 697
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v11

    .line 695
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;--->verifyAndDecrypt(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
