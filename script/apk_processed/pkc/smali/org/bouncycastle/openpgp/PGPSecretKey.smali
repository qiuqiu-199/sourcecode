.class public Lorg/bouncycastle/openpgp/PGPSecretKey;
.super Ljava/lang/Object;
.source "PGPSecretKey.java"


# instance fields
.field pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

.field secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 87
    invoke-static {p4, p1, p2, p5, p3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->buildSecretKeyPacket(ZLorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)Lorg/bouncycastle/bcpg/SecretKeyPacket;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    return-void
.end method

.method private static buildSecretKeyPacket(ZLorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)Lorg/bouncycastle/bcpg/SecretKeyPacket;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/bcpg/BCPGObject;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    if-eqz p0, :cond_0

    .line 99
    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v8, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v12, v6, [B

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    .line 103
    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v3, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-array v8, v6, [B

    move-object v2, v1

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    .line 109
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    new-instance v8, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v8, v7}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    invoke-virtual {v8, v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 114
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 116
    array-length v9, v5

    invoke-static {v4, v5, v9}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v5

    move v10, v5

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_6

    .line 122
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 124
    array-length v7, v5

    invoke-virtual {v3, v5, v6, v7}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v14

    .line 125
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v13

    .line 127
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v12

    if-eqz v4, :cond_4

    .line 133
    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 135
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "only SHA1 supported for key checksum calculations."

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v3, 0xfe

    const/16 v11, 0xfe

    goto :goto_1

    :cond_4
    const/16 v3, 0xff

    const/16 v11, 0xff

    :goto_1
    if-eqz p0, :cond_5

    .line 146
    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v9, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    .line 150
    :cond_5
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v9, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_6
    if-eqz p0, :cond_7

    .line 157
    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v9, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    .line 161
    :cond_7
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v9, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 171
    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v3, "Exception encrypting key"

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 167
    throw v1
.end method

.method private static checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 555
    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 559
    :try_start_0
    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 561
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 565
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checksum digest calculation failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq p0, p2, :cond_1

    .line 575
    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 578
    new-array p0, p0, [B

    shr-int/lit8 p1, v1, 0x8

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    int-to-byte p1, v1

    const/4 p2, 0x1

    aput-byte p1, p0, p2

    return-object p0
.end method

.method public static constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 14

    .line 818
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    .line 820
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v3

    const/4 v4, 0x3

    .line 823
    invoke-static {v1}, Lorg/bouncycastle/bcpg/S2K;->createDummyS2K(I)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    goto :goto_0

    .line 825
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    .line 826
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v9

    const/4 v10, 0x3

    .line 829
    invoke-static {v1}, Lorg/bouncycastle/bcpg/S2K;->createDummyS2K(I)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    .line 831
    :goto_0
    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1
.end method

.method public static constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 8

    const/16 v0, 0x10

    .line 845
    new-array v6, v0, [B

    .line 846
    array-length v1, p1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 849
    new-instance p1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    .line 850
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 853
    invoke-static {v0}, Lorg/bouncycastle/bcpg/S2K;->createDummyS2K(I)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    goto :goto_1

    .line 855
    :cond_1
    new-instance p1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    .line 856
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 859
    invoke-static {v0}, Lorg/bouncycastle/bcpg/S2K;->createDummyS2K(I)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    .line 861
    :goto_1
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0
.end method

.method public static copyWithNewPassword(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 676
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "no private key in this SecretKey - public key present only."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object v8

    .line 682
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_7

    .line 688
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v11, 0xff

    if-nez v1, :cond_2

    const/16 v12, 0xff

    goto :goto_0

    :cond_2
    move v12, v1

    .line 713
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v1

    const/4 v13, 0x4

    if-ge v1, v13, :cond_6

    .line 717
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getKey()[B

    move-result-object v14

    .line 718
    array-length v1, v8

    new-array v15, v1, [B

    .line 720
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getHashAlgorithm()I

    move-result v1

    if-eq v1, v9, :cond_3

    .line 722
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "MD5 Digest Calculator required for version 3 key encryptor."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v5, v2

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_1
    if-eq v6, v13, :cond_5

    .line 731
    aget-byte v1, v8, v16

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v16, 0x1

    aget-byte v3, v8, v2

    and-int/2addr v3, v11

    or-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v4, v1, 0x8

    .line 733
    aget-byte v1, v8, v16

    aput-byte v1, v15, v16

    .line 734
    aget-byte v1, v8, v2

    aput-byte v1, v15, v2

    if-nez v6, :cond_4

    add-int/lit8 v1, v16, 0x2

    .line 739
    invoke-virtual {v7, v14, v8, v1, v4}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[BII)[B

    move-result-object v1

    .line 740
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v5

    move/from16 v18, v4

    move/from16 v17, v6

    goto :goto_2

    .line 745
    :cond_4
    array-length v1, v5

    new-array v3, v1, [B

    .line 747
    array-length v1, v5

    sub-int v1, v16, v1

    array-length v2, v3

    invoke-static {v15, v1, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v16, 0x2

    move-object v1, v7

    move-object v2, v14

    move/from16 v18, v4

    move-object v4, v8

    move-object/from16 v19, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v18

    .line 748
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[B[BII)[B

    move-result-object v1

    move-object/from16 v5, v19

    :goto_2
    add-int/lit8 v2, v16, 0x2

    .line 751
    array-length v3, v1

    invoke-static {v1, v10, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v18, 0x2

    add-int v16, v16, v4

    add-int/lit8 v6, v17, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v19, v5

    .line 758
    aget-byte v1, v8, v16

    aput-byte v1, v15, v16

    add-int/lit8 v16, v16, 0x1

    .line 759
    aget-byte v1, v8, v16

    aput-byte v1, v15, v16

    .line 761
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v2

    .line 762
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v10

    move v13, v10

    move v14, v12

    move-object/from16 v17, v15

    move-object/from16 v16, v19

    move-object v15, v2

    goto :goto_5

    .line 766
    :cond_6
    array-length v1, v8

    invoke-virtual {v7, v8, v10, v1}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v8

    .line 768
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v2

    .line 770
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v1

    .line 772
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v10

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move v13, v10

    move v14, v12

    goto :goto_5

    .line 691
    :cond_7
    :goto_3
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v1

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_8

    .line 693
    array-length v1, v8

    add-int/lit8 v1, v1, -0x12

    new-array v1, v1, [B

    .line 695
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-static {v8, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v3

    .line 699
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-byte v5, v3, v10

    aput-byte v5, v1, v4

    .line 700
    array-length v4, v1

    sub-int/2addr v4, v9

    aget-byte v3, v3, v9

    aput-byte v3, v1, v4

    move-object/from16 v17, v1

    move-object v15, v2

    move-object/from16 v16, v15

    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    move-object v15, v2

    move-object/from16 v16, v15

    move-object/from16 v17, v8

    goto :goto_4

    .line 777
    :goto_5
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    instance-of v1, v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    if-eqz v1, :cond_9

    .line 779
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v12

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    goto :goto_6

    .line 784
    :cond_9
    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v12

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    .line 788
    :goto_6
    new-instance v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v2
.end method

.method private extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 390
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object v10

    .line 393
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    if-eqz v2, :cond_a

    .line 397
    :try_start_0
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v2

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v2, v11, :cond_5

    .line 399
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v4

    .line 401
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v3

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v8, v10

    move-object v2, v9

    move-object v6, v10

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v2

    .line 403
    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v3

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v9, v12}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->getChecksumCalculator(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x14

    goto :goto_2

    :cond_2
    array-length v3, v2

    sub-int/2addr v3, v12

    :goto_2
    invoke-static {v4, v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v3

    .line 406
    :goto_3
    array-length v4, v3

    if-eq v13, v4, :cond_4

    .line 408
    aget-byte v4, v3, v13

    array-length v5, v2

    array-length v6, v3

    sub-int/2addr v5, v6

    add-int/2addr v5, v13

    aget-byte v5, v2, v5

    if-eq v4, v5, :cond_3

    .line 410
    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checksum mismatch at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    move-object v10, v2

    goto/16 :goto_6

    .line 416
    :cond_5
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v14

    .line 418
    array-length v2, v10

    new-array v15, v2, [B

    .line 420
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v2

    array-length v2, v2

    new-array v8, v2, [B

    .line 422
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v2

    array-length v3, v8

    invoke-static {v2, v13, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_4
    if-eq v7, v11, :cond_7

    .line 431
    aget-byte v2, v10, v16

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v16, 0x1

    aget-byte v4, v10, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v17, v2, 0x8

    .line 433
    aget-byte v2, v10, v16

    aput-byte v2, v15, v16

    .line 434
    aget-byte v2, v10, v3

    aput-byte v2, v15, v3

    .line 436
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v3

    add-int/lit8 v6, v16, 0x2

    move-object v2, v9

    move-object v4, v14

    move-object v5, v8

    move/from16 v18, v6

    move-object v6, v10

    move v11, v7

    move/from16 v7, v18

    move-object v12, v8

    move/from16 v8, v17

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v2

    .line 437
    array-length v3, v2

    move/from16 v4, v18

    invoke-static {v2, v13, v15, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    const/4 v2, 0x3

    if-eq v11, v2, :cond_6

    .line 442
    array-length v2, v12

    sub-int v2, v16, v2

    array-length v3, v12

    invoke-static {v10, v2, v12, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    add-int/lit8 v7, v11, 0x1

    move-object v8, v12

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto :goto_4

    .line 450
    :cond_7
    aget-byte v2, v10, v16

    aput-byte v2, v15, v16

    add-int/lit8 v2, v16, 0x1

    .line 451
    aget-byte v3, v10, v2

    aput-byte v3, v15, v2

    .line 453
    aget-byte v3, v10, v16

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x0

    .line 455
    :goto_5
    array-length v4, v15

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ge v13, v4, :cond_8

    .line 457
    aget-byte v4, v15, v13

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    const v4, 0xffff

    and-int/2addr v3, v4

    if-eq v3, v2, :cond_9

    .line 463
    new-instance v4, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksum mismatch: passphrase wrong, expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move-object v10, v15

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 475
    new-instance v3, Lorg/bouncycastle/openpgp/PGPException;

    const-string v4, "Exception decrypting key"

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 471
    throw v2

    :cond_a
    :goto_6
    return-object v10
.end method

.method public static replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 5

    .line 801
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 803
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyIDs do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 806
    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 605
    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    .line 609
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 612
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 613
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 618
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 620
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 622
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 625
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 627
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_3

    .line 629
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    .line 631
    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    goto :goto_3

    .line 635
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 637
    new-instance v3, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/bcpg/UserAttributePacket;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 640
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 642
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/ContainedPacket;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 645
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 647
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 649
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 655
    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 657
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 506
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object p1

    .line 507
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    .line 510
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p1

    const/16 v2, 0x16

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 537
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :pswitch_0
    new-instance p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 531
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    .line 519
    :pswitch_1
    new-instance p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 521
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    .line 524
    :pswitch_2
    new-instance p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 526
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    .line 515
    :pswitch_3
    new-instance p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 517
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    .line 533
    :cond_1
    new-instance p1, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/EdDSASecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 535
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 546
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 542
    throw p1

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

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 592
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    .line 594
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()I
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v0

    return-object v0
.end method

.method public isMasterKey()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    return v0
.end method

.method public isPrivateKeyEmpty()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 304
    array-length v0, v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
