.class public Lorg/bouncycastle/bcpg/LiteralDataPacket;
.super Lorg/bouncycastle/bcpg/InputStreamPacket;
.source "LiteralDataPacket.java"


# instance fields
.field fileName:[B

.field format:I

.field literalLength:Ljava/lang/Long;

.field modDate:J


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/InputStreamPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->format:I

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    .line 28
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    or-long v5, v1, v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-long v1, v1

    or-long v3, v5, v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    int-to-long v1, v1

    or-long v5, v3, v1

    iput-wide v5, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->modDate:J

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->getBodyLengthIfAvailable()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    .line 37
    iget-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    .line 42
    iget-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    .line 44
    iget-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->literalLength:Ljava/lang/Long;

    :cond_1
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->format:I

    return v0
.end method

.method public getModificationTime()J
    .locals 4

    .line 61
    iget-wide v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->modDate:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method
