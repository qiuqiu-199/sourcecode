.class public Lorg/bouncycastle/bcpg/sig/IssuerKeyID;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;
.source "IssuerKeyID.java"


# direct methods
.method public constructor <init>(ZJ)V
    .locals 1

    .line 41
    invoke-static {p2, p3}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->keyIDToBytes(J)[B

    move-result-object p2

    const/16 p3, 0x10

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x10

    .line 34
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method protected static keyIDToBytes(J)[B
    .locals 4

    const/16 v0, 0x8

    .line 15
    new-array v1, v0, [B

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    return-object v1
.end method


# virtual methods
.method public getKeyID()J
    .locals 6

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    or-long v2, v4, v0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long v4, v2, v0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long v2, v4, v0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    or-long v4, v2, v0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    or-long v2, v4, v0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long v4, v2, v0

    return-wide v4
.end method
