.class public Lorg/bouncycastle/bcpg/UserAttributePacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "UserAttributePacket.java"


# instance fields
.field private subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 19
    new-instance v0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 23
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->readPacket()Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    iput-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    const/4 v0, 0x0

    .line 30
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 32
    iget-object v1, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 55
    iget-object v3, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getSubpackets()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributePacket;->subpackets:[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    return-object v0
.end method
