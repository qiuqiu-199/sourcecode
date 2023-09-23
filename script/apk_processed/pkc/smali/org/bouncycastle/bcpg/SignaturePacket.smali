.class public Lorg/bouncycastle/bcpg/SignaturePacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "SignaturePacket.java"


# instance fields
.field private creationTime:J

.field private fingerPrint:[B

.field private hashAlgorithm:I

.field private hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

.field private keyAlgorithm:I

.field private keyID:J

.field private signature:[Lorg/bouncycastle/bcpg/MPInteger;

.field private signatureEncoding:[B

.field private signatureType:I

.field private unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

.field valid:Z

.field private version:I


# direct methods
.method public constructor <init>(IIJII[Lorg/bouncycastle/bcpg/SignatureSubpacket;[Lorg/bouncycastle/bcpg/SignatureSubpacket;[B[Lorg/bouncycastle/bcpg/MPInteger;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 257
    iput p1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    .line 258
    iput p2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    .line 259
    iput-wide p3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 260
    iput p5, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    .line 261
    iput p6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    .line 262
    iput-object p7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    .line 263
    iput-object p8, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    .line 264
    iput-object p9, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->fingerPrint:[B

    .line 265
    iput-object p10, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    if-eqz p7, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->setCreationTime()V

    :cond_0
    return-void
.end method

.method public constructor <init>(IJII[Lorg/bouncycastle/bcpg/SignatureSubpacket;[Lorg/bouncycastle/bcpg/SignatureSubpacket;[B[Lorg/bouncycastle/bcpg/MPInteger;)V
    .locals 11

    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 219
    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/bcpg/SignaturePacket;-><init>(IIJII[Lorg/bouncycastle/bcpg/SignatureSubpacket;[Lorg/bouncycastle/bcpg/SignatureSubpacket;[B[Lorg/bouncycastle/bcpg/MPInteger;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->valid:Z

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    .line 40
    iget v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_8

    iget v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    if-ne v1, v4, :cond_0

    goto/16 :goto_5

    .line 57
    :cond_0
    iget v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/2addr v1, v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    or-int/2addr v1, v6

    .line 64
    new-array v1, v1, [B

    .line 66
    invoke-virtual {p1, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    .line 72
    new-instance v6, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 76
    :goto_0
    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->readPacket()Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v6, 0x0

    .line 83
    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v7, v7

    if-eq v6, v7, :cond_4

    .line 85
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/bcpg/SignatureSubpacket;

    .line 86
    instance-of v8, v7, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    if-eqz v8, :cond_2

    .line 88
    move-object v8, v7

    check-cast v8, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v8}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    goto :goto_2

    .line 90
    :cond_2
    instance-of v8, v7, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    if-eqz v8, :cond_3

    .line 92
    move-object v8, v7

    check-cast v8, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v8}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    .line 95
    :cond_3
    :goto_2
    iget-object v8, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    shl-int/lit8 v3, v6, 0x8

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    or-int/2addr v3, v6

    .line 99
    new-array v3, v3, [B

    .line 101
    invoke-virtual {p1, v3}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    .line 103
    new-instance v6, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 107
    :goto_3
    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->readPacket()Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 109
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 112
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    iput-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v3, 0x0

    .line 114
    :goto_4
    iget-object v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v6, v6

    if-eq v3, v6, :cond_9

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/bcpg/SignatureSubpacket;

    .line 117
    instance-of v7, v6, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    if-eqz v7, :cond_6

    .line 119
    move-object v7, v6

    check-cast v7, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v7}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 122
    :cond_6
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aput-object v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 127
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    const/16 v9, 0x10

    shl-int/2addr v8, v9

    int-to-long v10, v8

    or-long v12, v6, v10

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    shl-int/2addr v6, v3

    int-to-long v6, v6

    or-long v10, v12, v6

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    int-to-long v6, v6

    or-long v12, v10, v6

    const-wide/16 v6, 0x3e8

    mul-long v12, v12, v6

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    .line 46
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v10, v8

    const/16 v8, 0x38

    shl-long/2addr v10, v8

    or-long v12, v6, v10

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 47
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v10, v8

    const/16 v8, 0x30

    shl-long/2addr v10, v8

    or-long v12, v6, v10

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 48
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v10, v8

    const/16 v8, 0x28

    shl-long/2addr v10, v8

    or-long v12, v6, v10

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 49
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v10, v8

    const/16 v8, 0x20

    shl-long/2addr v10, v8

    or-long v12, v6, v10

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 50
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v10, v8

    shl-long/2addr v10, v1

    or-long v12, v6, v10

    iput-wide v12, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 51
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v10, v1

    shl-long v8, v10, v9

    or-long v10, v6, v8

    iput-wide v10, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 52
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v8, v1

    shl-long/2addr v8, v3

    or-long v10, v6, v8

    iput-wide v10, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 53
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v8, v1

    or-long v10, v6, v8

    iput-wide v10, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    .line 130
    :cond_9
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->fingerPrint:[B

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->fingerPrint:[B

    invoke-virtual {p1, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    .line 133
    iget v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    if-eq v1, v0, :cond_d

    if-eq v1, v2, :cond_d

    const/16 v3, 0x16

    if-eq v1, v3, :cond_c

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    :goto_6
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_a

    .line 177
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 179
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    .line 181
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    const/16 v1, 0x6e

    if-le v0, v1, :cond_e

    .line 185
    :cond_b
    iput-boolean v5, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->valid:Z

    goto :goto_7

    .line 143
    :pswitch_0
    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 144
    new-instance v2, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v2, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 146
    new-array v3, v4, [Lorg/bouncycastle/bcpg/MPInteger;

    iput-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    .line 147
    iget-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v1, v3, v5

    .line 148
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v2, v1, v0

    goto :goto_7

    .line 152
    :pswitch_1
    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 153
    new-instance v3, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v3, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 154
    new-instance v6, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v6, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 156
    new-array v2, v2, [Lorg/bouncycastle/bcpg/MPInteger;

    iput-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    .line 157
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v1, v2, v5

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v3, v1, v0

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v6, v0, v4

    goto :goto_7

    .line 163
    :cond_c
    :pswitch_2
    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 164
    new-instance v2, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v2, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 166
    new-array v3, v4, [Lorg/bouncycastle/bcpg/MPInteger;

    iput-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    .line 167
    iget-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v1, v3, v5

    .line 168
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v2, v1, v0

    goto :goto_7

    .line 137
    :cond_d
    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 139
    new-array v0, v0, [Lorg/bouncycastle/bcpg/MPInteger;

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aput-object v1, v0, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_7
    return-void

    :catch_0
    move-exception v0

    .line 192
    :goto_8
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_f

    goto :goto_8

    .line 194
    :cond_f
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static fromByteArray([B)Lorg/bouncycastle/bcpg/SignaturePacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    .line 553
    new-instance p0, Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-direct {p0, v0}, Lorg/bouncycastle/bcpg/SignaturePacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object p0
.end method

.method private setCreationTime()V
    .locals 2

    const/4 v0, 0x0

    .line 538
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 540
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v0, v1, v0

    check-cast v0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 454
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 456
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    .line 480
    :cond_0
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    .line 482
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 483
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 484
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 486
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    .line 488
    :goto_0
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v7, v7

    if-eq v6, v7, :cond_1

    .line 490
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 495
    array-length v7, v6

    shr-int/2addr v7, v5

    invoke-virtual {v1, v7}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 496
    array-length v7, v6

    invoke-virtual {v1, v7}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 497
    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 499
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v6, 0x0

    .line 501
    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v7, v7

    if-eq v6, v7, :cond_2

    .line 503
    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 508
    array-length v6, v2

    shr-int/lit8 v5, v6, 0x8

    invoke-virtual {v1, v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 509
    array-length v5, v2

    invoke-virtual {v1, v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 510
    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    goto/16 :goto_3

    .line 514
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    const/4 v2, 0x5

    .line 458
    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 460
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 462
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long v8, v6, v2

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 463
    invoke-virtual {v1, v8}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v8, 0x10

    shr-long v9, v6, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 464
    invoke-virtual {v1, v9}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    shr-long v9, v6, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 465
    invoke-virtual {v1, v9}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 466
    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 468
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x38

    shr-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 469
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x30

    shr-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 470
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x28

    shr-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 471
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x20

    shr-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 472
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    shr-long/2addr v6, v2

    long-to-int v2, v6

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 473
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    shr-long/2addr v6, v8

    long-to-int v2, v6

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 474
    iget-wide v6, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    shr-long v5, v6, v5

    long-to-int v2, v5

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 475
    iget-wide v5, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    long-to-int v2, v5

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 477
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 478
    iget v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 517
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->fingerPrint:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 519
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    if-eqz v2, :cond_5

    .line 521
    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    array-length v2, v2

    if-eq v4, v2, :cond_6

    .line 523
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 528
    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 531
    :cond_6
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    .line 533
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v0, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getCreationTime()J
    .locals 2

    .line 444
    iget-wide v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    return-wide v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 386
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    return v0
.end method

.method public getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->hashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-object v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 378
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 303
    iget-wide v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->keyID:J

    return-wide v0
.end method

.method public getSignature()[Lorg/bouncycastle/bcpg/MPInteger;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    return-object v0
.end method

.method public getSignatureBytes()[B
    .locals 4

    .line 404
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 409
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 413
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signature:[Lorg/bouncycastle/bcpg/MPInteger;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureTrailer()[B
    .locals 11

    .line 316
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v0, v5, :cond_2

    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    if-ne v0, v4, :cond_0

    goto/16 :goto_1

    .line 330
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getVersion()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 340
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v5

    .line 342
    :goto_0
    array-length v7, v5

    if-eq v3, v7, :cond_1

    .line 344
    aget-object v7, v5, v3

    invoke-virtual {v7, v4}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 349
    array-length v4, v3

    shr-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    array-length v4, v3

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 353
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 355
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getVersion()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, -0x1

    .line 356
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 357
    array-length v4, v3

    shr-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 358
    array-length v2, v3

    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    array-length v1, v3

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    array-length v1, v3

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception generating trailer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v0, 0x5

    .line 318
    new-array v0, v0, [B

    .line 320
    iget-wide v7, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->creationTime:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 322
    iget v9, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    shr-long v2, v7, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-long v1, v7, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    shr-long v1, v7, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_2
    return-object v0
.end method

.method public getSignatureType()I
    .locals 1

    .line 294
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->signatureType:I

    return v0
.end method

.method public getUnhashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 286
    iget v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;->version:I

    return v0
.end method
