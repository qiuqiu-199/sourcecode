.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$MD2;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/DigestSignatureSpi$1;)V

    return-void
.end method
