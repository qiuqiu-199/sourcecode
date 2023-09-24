.class public Lorg/bouncycastle/bcpg/sig/Features;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;
.source "Features.java"


# direct methods
.method public constructor <init>(ZB)V
    .locals 2

    .line 30
    invoke-static {p2}, Lorg/bouncycastle/bcpg/sig/Features;->featureToByteArray(B)[B

    move-result-object p2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static final featureToByteArray(B)[B
    .locals 2

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method
