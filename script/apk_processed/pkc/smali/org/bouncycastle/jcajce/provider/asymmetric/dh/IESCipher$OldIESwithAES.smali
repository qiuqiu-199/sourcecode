.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithAES;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithCipher;
.source "IESCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldIESwithAES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 561
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method