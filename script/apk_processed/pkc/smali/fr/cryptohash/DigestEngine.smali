.class public abstract Lfr/cryptohash/DigestEngine;
.super Ljava/lang/Object;
.source "DigestEngine.java"

# interfaces
.implements Lfr/cryptohash/Digest;


# instance fields
.field private blockCount:J

.field private blockLen:I

.field private digestLen:I

.field private inputBuf:[B

.field private inputLen:I

.field private outputBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->doInit()V

    .line 95
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->getDigestLength()I

    move-result v0

    iput v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    .line 96
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->getInternalBlockLength()I

    move-result v0

    iput v0, p0, Lfr/cryptohash/DigestEngine;->blockLen:I

    .line 97
    iget v0, p0, Lfr/cryptohash/DigestEngine;->blockLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/cryptohash/DigestEngine;->inputBuf:[B

    .line 98
    iget v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/cryptohash/DigestEngine;->outputBuf:[B

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lfr/cryptohash/DigestEngine;->blockCount:J

    return-void
.end method

.method private adjustDigestLen()V
    .locals 1

    .line 105
    iget v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->getDigestLength()I

    move-result v0

    iput v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    .line 107
    iget v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/cryptohash/DigestEngine;->outputBuf:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public digest([BII)I
    .locals 2

    .line 130
    invoke-direct {p0}, Lfr/cryptohash/DigestEngine;->adjustDigestLen()V

    .line 131
    iget v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    if-lt p3, v0, :cond_0

    .line 132
    invoke-virtual {p0, p1, p2}, Lfr/cryptohash/DigestEngine;->doPadding([BI)V

    .line 133
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->reset()V

    .line 134
    iget p1, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lfr/cryptohash/DigestEngine;->outputBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/cryptohash/DigestEngine;->doPadding([BI)V

    .line 137
    iget-object v0, p0, Lfr/cryptohash/DigestEngine;->outputBuf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->reset()V

    return p3
.end method

.method public digest()[B
    .locals 3

    .line 114
    invoke-direct {p0}, Lfr/cryptohash/DigestEngine;->adjustDigestLen()V

    .line 115
    iget v0, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    new-array v0, v0, [B

    .line 116
    iget v1, p0, Lfr/cryptohash/DigestEngine;->digestLen:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lfr/cryptohash/DigestEngine;->digest([BII)I

    return-object v0
.end method

.method public digest([B)[B
    .locals 2

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lfr/cryptohash/DigestEngine;->update([BII)V

    .line 124
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract doInit()V
.end method

.method protected abstract doPadding([BI)V
.end method

.method protected abstract engineReset()V
.end method

.method protected final flush()I
    .locals 1

    .line 212
    iget v0, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    return v0
.end method

.method protected final getBlockBuffer()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lfr/cryptohash/DigestEngine;->inputBuf:[B

    return-object v0
.end method

.method protected getInternalBlockLength()I
    .locals 1

    .line 201
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->getBlockLength()I

    move-result v0

    return v0
.end method

.method protected abstract processBlock([B)V
.end method

.method public reset()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lfr/cryptohash/DigestEngine;->engineReset()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lfr/cryptohash/DigestEngine;->blockCount:J

    return-void
.end method

.method public update([BII)V
    .locals 6

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 172
    iget v0, p0, Lfr/cryptohash/DigestEngine;->blockLen:I

    iget v1, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    sub-int/2addr v0, v1

    if-le v0, p3, :cond_1

    move v0, p3

    .line 175
    :cond_1
    iget-object v1, p0, Lfr/cryptohash/DigestEngine;->inputBuf:[B

    iget v2, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 178
    iget v1, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    sub-int/2addr p3, v0

    .line 180
    iget v0, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    iget v1, p0, Lfr/cryptohash/DigestEngine;->blockLen:I

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lfr/cryptohash/DigestEngine;->inputBuf:[B

    invoke-virtual {p0, v0}, Lfr/cryptohash/DigestEngine;->processBlock([B)V

    .line 182
    iget-wide v0, p0, Lfr/cryptohash/DigestEngine;->blockCount:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lfr/cryptohash/DigestEngine;->blockCount:J

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lfr/cryptohash/DigestEngine;->inputLen:I

    goto :goto_0

    :cond_2
    return-void
.end method
