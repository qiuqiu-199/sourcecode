.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$SkeinMac_256_256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeinMac_256_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 463
    new-instance v0, Lorg/bouncycastle/crypto/macs/SkeinMac;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/crypto/macs/SkeinMac;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method