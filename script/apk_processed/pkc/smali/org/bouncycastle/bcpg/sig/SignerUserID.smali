.class public Lorg/bouncycastle/bcpg/sig/SignerUserID;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;
.source "SignerUserID.java"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 26
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1c

    .line 19
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method
