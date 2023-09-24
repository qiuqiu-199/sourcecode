.class public Lorg/bouncycastle/openpgp/PGPOnePassSignature;
.super Ljava/lang/Object;
.source "PGPOnePassSignature.java"


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field public sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

.field private signatureType:I

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

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/bouncycastle/bcpg/OnePassSignaturePacket;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/OnePassSignaturePacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 220
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    .line 53
    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    const/4 p1, 0x0

    .line 55
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    .line 56
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 62
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 66
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    .line 67
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 71
    iget-byte v2, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    if-eq v2, v1, :cond_2

    .line 73
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    .line 74
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    .line 82
    :cond_2
    :goto_0
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    goto :goto_1

    .line 86
    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    :goto_1
    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 111
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    .line 117
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify(Lorg/bouncycastle/openpgp/PGPSignature;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 169
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to add trailer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
