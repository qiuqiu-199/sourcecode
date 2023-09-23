.class public Lorg/bouncycastle/openpgp/PGPSignatureGenerator;
.super Ljava/lang/Object;
.source "PGPSignatureGenerator.java"


# instance fields
.field private contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

.field private contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

.field private hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

.field private lastb:B

.field private providedKeyAlgorithm:I

.field private sigOut:Ljava/io/OutputStream;

.field private sigType:I

.field private unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    new-array v1, v0, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    .line 29
    new-array v0, v0, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->providedKeyAlgorithm:I

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 136
    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 396
    :try_start_0
    iget-object p1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 400
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception preparing key."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private insertSubpacket([Lorg/bouncycastle/bcpg/SignatureSubpacket;Lorg/bouncycastle/bcpg/SignatureSubpacket;)[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 3

    .line 425
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v2, 0x0

    .line 427
    aput-object p2, v0, v2

    .line 428
    array-length p2, p1

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private packetPresent([Lorg/bouncycastle/bcpg/SignatureSubpacket;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 410
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 412
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private updateWithIdData(I[B)V
    .locals 0

    int-to-byte p1, p1

    .line 435
    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 436
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 437
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 438
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 439
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 440
    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([B)V

    return-void
.end method

.method private updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 446
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B

    move-result-object p1

    const/16 v0, -0x67

    .line 448
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 449
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 450
    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 451
    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([B)V

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/bouncycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    new-instance v4, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;-><init>(ZLjava/util/Date;)V

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->insertSubpacket([Lorg/bouncycastle/bcpg/SignatureSubpacket;Lorg/bouncycastle/bcpg/SignatureSubpacket;)[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v1

    :goto_0
    move-object v10, v1

    goto :goto_1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    goto :goto_0

    .line 213
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/16 v4, 0x10

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/bouncycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/bouncycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    new-instance v5, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    iget-object v6, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v6}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;-><init>(ZJ)V

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->insertSubpacket([Lorg/bouncycastle/bcpg/SignatureSubpacket;Lorg/bouncycastle/bcpg/SignatureSubpacket;)[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v1

    goto :goto_2

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    :goto_2
    move-object v11, v1

    const/4 v1, 0x4

    int-to-byte v1, v1

    .line 224
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    iget v5, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    iget-object v5, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-object v5, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    .line 231
    :goto_3
    array-length v7, v10

    if-eq v6, v7, :cond_2

    .line 233
    aget-object v7, v10, v6

    invoke-virtual {v7, v5}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 236
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 238
    array-length v6, v5

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    array-length v6, v5

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 249
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, -0x1

    .line 250
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    array-length v1, v5

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    array-length v1, v5

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 253
    array-length v1, v5

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    array-length v1, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 258
    array-length v1, v0

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->blockUpdate([BII)V

    .line 260
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 261
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_4

    .line 266
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v0

    .line 270
    new-array v1, v2, [Lorg/bouncycastle/bcpg/MPInteger;

    .line 272
    new-instance v5, Lorg/bouncycastle/bcpg/MPInteger;

    const/16 v6, 0x20

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v5, v1, v3

    .line 273
    new-instance v5, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-static {v0, v6, v6}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v5, v1, v4

    move-object v13, v1

    goto :goto_6

    .line 277
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->dsaSigToMpi([B)[Lorg/bouncycastle/bcpg/MPInteger;

    move-result-object v0

    goto :goto_5

    .line 263
    :cond_5
    :goto_4
    new-array v0, v4, [Lorg/bouncycastle/bcpg/MPInteger;

    .line 264
    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v6}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v5}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v1, v0, v3

    :goto_5
    move-object v13, v0

    .line 280
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getDigest()[B

    move-result-object v0

    .line 281
    new-array v12, v2, [B

    .line 283
    aget-byte v1, v0, v3

    aput-byte v1, v12, v3

    .line 284
    aget-byte v0, v0, v4

    aput-byte v0, v12, v4

    .line 286
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignature;

    new-instance v1, Lorg/bouncycastle/bcpg/SignaturePacket;

    iget v5, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v6

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v8

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/bcpg/SignaturePacket;-><init>(IJII[Lorg/bouncycastle/bcpg/SignatureSubpacket;[Lorg/bouncycastle/bcpg/SignatureSubpacket;[B[Lorg/bouncycastle/bcpg/MPInteger;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "exception encoding hashed data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generateCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 302
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 307
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0xb4

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithIdData(I[B)V

    .line 309
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1
.end method

.method public generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 378
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "certifications involving subkey requires public key of revoking key as well."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 385
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1
.end method

.method public generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 362
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 364
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1
.end method

.method public generateCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 331
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 332
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object p1

    const/4 v0, 0x0

    .line 333
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 335
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xd1

    .line 337
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->updateWithIdData(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 341
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "cannot encode subpacket array"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public generateOnePassVersion(Z)Lorg/bouncycastle/openpgp/PGPOnePassSignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    new-instance v8, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    iget v2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v3

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v4

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v5

    move-object v1, v8

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;-><init>(IIIJZ)V

    invoke-direct {v0, v8}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/bouncycastle/bcpg/OnePassSignaturePacket;)V

    return-object v0
.end method

.method public init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;->build(ILorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 61
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    .line 62
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 p1, 0x0

    .line 63
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->lastb:B

    .line 65
    iget p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->providedKeyAlgorithm:I

    if-ltz p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->providedKeyAlgorithm:I

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p2}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 67
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "key algorithm mismatch"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 157
    new-array p1, p1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-void
.end method

.method public setUnhashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 169
    new-array p1, p1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 74
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 78
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 79
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 83
    iget-byte v2, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->lastb:B

    if-eq v2, v1, :cond_2

    .line 85
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 86
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 94
    :cond_2
    :goto_0
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->lastb:B

    goto :goto_1

    .line 98
    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    :goto_1
    return-void
.end method

.method public update([B)V
    .locals 2

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 113
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    .line 119
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->blockUpdate([BII)V

    :cond_1
    return-void
.end method
