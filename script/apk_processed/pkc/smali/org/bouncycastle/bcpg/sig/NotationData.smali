.class public Lorg/bouncycastle/bcpg/sig/NotationData;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;
.source "NotationData.java"


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p2, p3, p4}, Lorg/bouncycastle/bcpg/sig/NotationData;->createData(ZLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x14

    const/4 p4, 0x0

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x14

    .line 25
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(ZLjava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 56
    array-length p1, p0

    const v2, 0xffff

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 58
    array-length v3, p0

    if-eq p1, v3, :cond_1

    .line 60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "notationName exceeds maximum length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 64
    array-length v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65
    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "notationValue exceeds maximum length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 71
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    .line 72
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 75
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v2, 0x0

    and-int/lit16 v3, v3, 0xff

    .line 76
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    invoke-virtual {v0, p0, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getNotationName()Ljava/lang/String;
    .locals 5

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 96
    new-array v2, v0, [B

    .line 97
    iget-object v3, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotationValue()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/sig/NotationData;->getNotationValueBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotationValueBytes()[B
    .locals 5

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 112
    new-array v2, v1, [B

    .line 113
    iget-object v3, p0, Lorg/bouncycastle/bcpg/sig/NotationData;->data:[B

    add-int/lit8 v0, v0, 0x8

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
