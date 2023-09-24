.class public Lorg/bouncycastle/openpgp/PGPSignature;
.super Ljava/lang/Object;
.source "PGPSignature.java"


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field private sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

.field private signatureType:I

.field private trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

.field private verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    .line 66
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/SignaturePacket;Lorg/bouncycastle/bcpg/TrustPacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    .line 77
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    return-void
.end method

.method private addTrailer()V
    .locals 3

    .line 376
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 378
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    if-eqz p1, :cond_0

    .line 469
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/SignatureSubpacket;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 564
    :try_start_0
    iget-object p1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 568
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception preparing key."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private updateWithIdData(I[B)V
    .locals 0

    int-to-byte p1, p1

    .line 220
    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 221
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 222
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 223
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 224
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 225
    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method

.method private updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B

    move-result-object p1

    const/16 v0, -0x67

    .line 233
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 234
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 235
    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 236
    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 542
    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 549
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 550
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    :cond_1
    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3

    .line 437
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getCreationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 529
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    .line 531
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v0

    return v0
.end method

.method public getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 427
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignature()[Lorg/bouncycastle/bcpg/MPInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 485
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_1

    const/16 v1, 0x40

    .line 491
    new-array v1, v1, [B

    .line 493
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 494
    array-length v5, v4

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/16 v2, 0x20

    .line 497
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 504
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 505
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 507
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 511
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "exception encoding DSA sig."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 518
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureBytes()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSignatureTrailer()[B
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureType()I
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result v0

    return v0
.end method

.method public getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    return-object v0
.end method

.method public hasSubpackets()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    .line 113
    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    const/4 p1, 0x0

    .line 115
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    .line 116
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 122
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    .line 127
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 131
    iget-byte v2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    if-eq v2, v1, :cond_2

    .line 133
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    .line 134
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    .line 142
    :cond_2
    :goto_0
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    goto :goto_1

    .line 146
    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    :goto_1
    return-void
.end method

.method public update([B)V
    .locals 2

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 161
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    .line 167
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/PGPSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public verifyCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-nez v0, :cond_0

    .line 299
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    .line 307
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    .line 309
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    .line 311
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-nez v0, :cond_0

    .line 399
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "PGPSignature not initialised - call init()."

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 403
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 404
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    .line 406
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "signature is not a key signature"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 411
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    .line 413
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-nez v0, :cond_0

    .line 361
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 365
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 367
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    .line 369
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-nez v0, :cond_0

    .line 255
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 265
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object p1

    const/4 v0, 0x0

    .line 267
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 269
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xd1

    .line 271
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    .line 280
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 275
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "cannot encode subpacket array"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public verifyCertification([BLorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-nez v0, :cond_0

    .line 330
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    .line 338
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    .line 340
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    .line 342
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method
