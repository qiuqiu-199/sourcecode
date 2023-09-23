.class public Lorg/bouncycastle/bcpg/SecretKeyPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "SecretKeyPacket.java"


# instance fields
.field private encAlgorithm:I

.field private iv:[B

.field private pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

.field private s2k:Lorg/bouncycastle/bcpg/S2K;

.field private s2kUsage:I

.field private secKeyData:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 32
    instance-of v0, p0, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 41
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    .line 43
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    .line 46
    new-instance v0, Lorg/bouncycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 54
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    const/16 v1, 0x65

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 56
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    goto :goto_4

    .line 62
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 64
    :cond_4
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    if-eqz v0, :cond_6

    .line 66
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_5

    const/16 v0, 0x8

    .line 68
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    goto :goto_3

    :cond_5
    const/16 v0, 0x10

    .line 72
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    .line 74
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([BII)V

    .line 78
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 122
    iput p2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    .line 123
    iput p3, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    .line 124
    iput-object p4, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 125
    iput-object p5, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    .line 126
    iput-object p6, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 97
    iput p2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    if-eqz p2, :cond_0

    const/16 p1, 0xff

    .line 101
    iput p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    .line 108
    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 109
    iput-object p4, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    .line 110
    iput-object p5, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    return v0
.end method

.method public getEncodedContents()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 167
    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 169
    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    .line 171
    :cond_0
    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 172
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 179
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 181
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 184
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 187
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    array-length v2, v2

    if-lez v2, :cond_4

    .line 189
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 192
    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    return-object v0
.end method

.method public getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    return-object v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    return-object v0
.end method

.method public getS2KUsage()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    return v0
.end method

.method public getSecretKeyData()[B
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-object v0
.end method
