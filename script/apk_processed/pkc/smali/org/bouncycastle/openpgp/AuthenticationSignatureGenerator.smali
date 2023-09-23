.class public Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;
.super Ljava/lang/Object;
.source "AuthenticationSignatureGenerator.java"


# instance fields
.field private contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

.field private contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

.field private sigOut:Ljava/io/OutputStream;

.field private sigType:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getSignature()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 77
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 78
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 79
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 80
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported algorithm"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;->build(ILorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    .line 37
    iget-object p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    .line 38
    iget-object p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->contentSigner:Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentSigner;->getType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->sigType:I

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->blockUpdate([BII)V

    return-void
.end method
