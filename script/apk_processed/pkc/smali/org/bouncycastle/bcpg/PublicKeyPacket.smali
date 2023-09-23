.class public Lorg/bouncycastle/bcpg/PublicKeyPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "PublicKeyPacket.java"


# instance fields
.field private algorithm:I

.field private key:Lorg/bouncycastle/bcpg/BCPGKey;

.field private time:J

.field private validDays:I

.field private version:I


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    .line 94
    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    .line 95
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    .line 96
    iput p1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    .line 97
    iput-object p3, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long v4, v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    or-long v2, v4, v0

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    or-long v4, v2, v0

    iput-wide v4, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    .line 30
    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    .line 35
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    .line 37
    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 77
    new-instance v0, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 63
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 64
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 53
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 57
    :cond_2
    new-instance p1, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 42
    :pswitch_4
    new-instance v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    return v0
.end method

.method public getEncodedContents()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 133
    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 134
    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 135
    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 136
    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 138
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 140
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 141
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 144
    :cond_0
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 146
    iget-object v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    check-cast v2, Lorg/bouncycastle/bcpg/BCPGObject;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 148
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/bcpg/BCPGKey;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 5

    .line 117
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidDays()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    return v0
.end method
