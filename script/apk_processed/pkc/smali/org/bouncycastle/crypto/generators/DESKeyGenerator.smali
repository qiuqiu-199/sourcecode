.class public Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    const/16 v0, 0x8

    .line 36
    new-array v0, v0, [B

    .line 40
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 42
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 22
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-eq p1, v0, :cond_2

    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DES key must be 64 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    :goto_0
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    :cond_2
    return-void
.end method
