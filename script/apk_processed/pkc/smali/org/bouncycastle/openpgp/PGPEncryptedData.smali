.class public abstract Lorg/bouncycastle/openpgp/PGPEncryptedData;
.super Ljava/lang/Object;
.source "PGPEncryptedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;
    }
.end annotation


# instance fields
.field encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

.field encStream:Ljava/io/InputStream;

.field integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/InputStreamPacket;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    return-void
.end method


# virtual methods
.method public isIntegrityProtected()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    instance-of v0, v0, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;

    return v0
.end method

.method public verify()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPEncryptedData;->isIntegrityProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "data not integrity protected."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->getLookAhead()[I

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    aget v3, v0, v2

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v3, 0x1

    .line 154
    aget v3, v0, v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v1

    .line 157
    array-length v3, v1

    new-array v3, v3, [B

    .line 159
    :goto_1
    array-length v4, v3

    if-eq v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x2

    .line 161
    aget v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method
