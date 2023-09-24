.class public Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/ECPublicBCPGKey;
.source "EdDSAPublicBCPGKey.java"


# static fields
.field private static final OID_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.15.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->OID_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->OID_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 29
    sget-object p1, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->OID_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid curve oid for EdDSA key!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public static fromEdDSAEncodedPoint([B)Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x40

    .line 47
    aput-byte v3, v0, v2

    .line 48
    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance p0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method


# virtual methods
.method public getEdDSAEncodedPoint()[B
    .locals 3

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    aget-byte v1, v0, v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid point format in EdDSA key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    .line 60
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
