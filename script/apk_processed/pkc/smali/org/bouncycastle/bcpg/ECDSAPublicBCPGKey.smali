.class public Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/ECPublicBCPGKey;
.source "ECDSAPublicBCPGKey.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method
