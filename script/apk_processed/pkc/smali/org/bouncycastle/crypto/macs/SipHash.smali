.class public Lorg/bouncycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;
.source "SipHash.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected m:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected wordCount:I

.field protected wordPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 28
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    const/4 v0, 0x4

    .line 37
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 28
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 48
    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    .line 49
    iput p2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method protected static rotateLeft(JI)J
    .locals 4

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long v2, v0, p0

    return-wide v2
.end method


# virtual methods
.method protected applySipRounds(I)V
    .locals 13

    .line 189
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p1, :cond_0

    add-long v9, v0, v2

    add-long v0, v4, v6

    const/16 v4, 0xd

    .line 195
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    const/16 v4, 0x10

    .line 196
    invoke-static {v6, v7, v4}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v4

    xor-long v6, v2, v9

    xor-long v2, v4, v0

    const/16 v4, 0x20

    .line 199
    invoke-static {v9, v10, v4}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v9

    add-long v11, v0, v6

    add-long v0, v9, v2

    const/16 v5, 0x11

    .line 202
    invoke-static {v6, v7, v5}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v5

    const/16 v7, 0x15

    .line 203
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    xor-long v9, v5, v11

    xor-long v6, v2, v0

    .line 206
    invoke-static {v11, v12, v4}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    move-wide v2, v9

    goto :goto_0

    .line 209
    :cond_0
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    return-void
.end method

.method public doFinal([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    .line 163
    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const/16 p1, 0x8

    return p1
.end method

.method public doFinal()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 143
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 144
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long v6, v2, v4

    const/16 v2, 0x38

    shl-long v2, v6, v2

    or-long v6, v0, v2

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 146
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 148
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long v2, v0, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    .line 150
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 152
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    xor-long v4, v0, v2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long v2, v4, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long v4, v2, v0

    .line 154
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-wide v4
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'params\' must be an instance of KeyParameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    .line 71
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'params\' must be a 128-bit key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 76
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const/16 v0, 0x8

    .line 77
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    .line 79
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-void
.end method

.method protected processMessageWord()V
    .locals 6

    .line 181
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 182
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    .line 183
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 184
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    return-void
.end method

.method public reset()V
    .locals 6

    .line 169
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    .line 170
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    .line 171
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    .line 172
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 176
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    return-void
.end method

.method public update(B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 85
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 86
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long v7, v3, v5

    const/16 p1, 0x38

    shl-long v3, v7, p1

    or-long v5, v0, v3

    iput-wide v5, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 88
    iget p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne p1, v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    and-int/lit8 v3, v2, -0x8

    .line 100
    iget v4, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    const/16 v5, 0x38

    const-wide/16 v6, 0xff

    const/16 v9, 0x8

    if-nez v4, :cond_2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_0

    add-int v4, p2, v8

    .line 104
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    add-int/lit8 v8, v8, 0x8

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v8, v2, :cond_1

    .line 109
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v10, v9

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 110
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v4, p2, v8

    aget-byte v4, v1, v4

    int-to-long v12, v4

    and-long v14, v12, v6

    shl-long v12, v14, v5

    or-long v5, v10, v12

    iput-wide v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v8, v8, 0x1

    const/16 v5, 0x38

    const-wide/16 v6, 0xff

    goto :goto_1

    :cond_1
    sub-int v1, v2, v3

    .line 112
    iput v1, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    goto :goto_5

    .line 116
    :cond_2
    iget v4, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    shl-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    add-int v6, p2, v5

    .line 119
    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    shl-long v10, v6, v4

    .line 120
    iget-wide v12, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    neg-int v14, v4

    ushr-long/2addr v12, v14

    or-long v8, v10, v12

    iput-wide v8, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 122
    iput-wide v6, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int/lit8 v5, v5, 0x8

    const/16 v9, 0x8

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v5, v2, :cond_5

    .line 126
    iget-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v6, 0x8

    ushr-long/2addr v3, v6

    iput-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 127
    iget-wide v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v6, p2, v5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long v10, v6, v8

    const/16 v6, 0x38

    shl-long/2addr v10, v6

    or-long v12, v3, v10

    iput-wide v12, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 129
    iget v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 131
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 v3, 0x0

    .line 132
    iput v3, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method
