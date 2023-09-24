.class public Lorg/bouncycastle/crypto/macs/OldHMac;
.super Ljava/lang/Object;
.source "OldHMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 23
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    new-array v0, v0, [B

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v4, v4

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/OldHMac;->reset()V

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 51
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_0

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 56
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 57
    iget p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length p1, p1

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    .line 72
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 74
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aget-byte v2, v0, p1

    xor-int/lit8 v2, v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 79
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    aget-byte v2, v0, p1

    xor-int/lit8 v2, v2, 0x5c

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 84
    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
