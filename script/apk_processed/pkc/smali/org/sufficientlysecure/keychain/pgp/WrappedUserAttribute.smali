.class public Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;
.super Ljava/lang/Object;
.source "WrappedUserAttribute.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UAT_IMAGE:I = 0x1

.field public static final UAT_NONE:I = 0x0

.field public static final UAT_URI_ATTRIBUTE:I = 0x65


# instance fields
.field private mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;---><init>(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromData([B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 80
    new-instance v0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->readPacket()Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    new-instance v1, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;-><init>(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)V

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->fromData([B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromSubpacket(I[B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;
    .locals 5

    move/16 v2, p0

    move-object/16 v3, p1

    .line 62
    new-instance v0, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;-><init>(I[B)V

    .line 63
    new-instance v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    .line 66
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;-><init>(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)V

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->fromSubpacket(I[B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 104
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 105
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v3

    .line 107
    const-class v0, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v3, Ljava/io/IOException;

    const-string v0, "Could not decode UserAttributePacket!"

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    check-cast v3, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/UserAttributePacket;->getSubpackets()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->readObject(Ljava/io/ObjectInputStream;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readObjectNoData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->readObjectNoData()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    new-instance v2, Lorg/bouncycastle/bcpg/UserAttributePacket;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/bcpg/UserAttributePacket;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->writeObject(Ljava/io/ObjectOutputStream;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 129
    const-class v0, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    .line 132
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncoded()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 71
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {v4, v1}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->getEncoded()[B"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubpackets()[[B
    .locals 7

    move-object/16 v4, p0

    .line 115
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    .line 116
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 117
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 118
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->getData()[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->getSubpackets()[[B"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getType()I
    .locals 6

    move-object/16 v3, p0

    .line 54
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    .line 55
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 56
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->getType()I

    move-result v0

    return v0

    :cond_0
    return v2

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->getType()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;
    .locals 4

    move-object/16 v1, p0

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->mVector:Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;--->getVector()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
