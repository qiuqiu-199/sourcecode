.class public Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "SymmetricKeyEncSessionPacket.java"


# instance fields
.field private encAlgorithm:I

.field private s2k:Lorg/bouncycastle/bcpg/S2K;

.field private secKeyData:[B

.field private version:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/bcpg/S2K;[B)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    .line 35
    iput v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    .line 36
    iput p1, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    .line 25
    new-instance v0, Lorg/bouncycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

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

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    iget v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 81
    iget v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 84
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 86
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 89
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    const/4 v1, 0x3

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    return v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    return-object v0
.end method

.method public getSecKeyData()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-object v0
.end method
