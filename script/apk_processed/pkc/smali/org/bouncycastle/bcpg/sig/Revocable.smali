.class public Lorg/bouncycastle/bcpg/sig/Revocable;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;
.source "Revocable.java"


# direct methods
.method public constructor <init>(ZZ[B)V
    .locals 1

    const/4 v0, 0x7

    .line 33
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method


# virtual methods
.method public isRevocable()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/Revocable;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
