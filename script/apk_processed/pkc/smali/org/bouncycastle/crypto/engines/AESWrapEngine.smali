.class public Lorg/bouncycastle/crypto/engines/AESWrapEngine;
.super Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
