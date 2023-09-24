.class public Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;
.source "RFC3211WrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 34
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    .line 36
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 38
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 40
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 41
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 50
    :cond_1
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    :goto_0
    return-void
.end method

.method public unwrap([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-ge p3, v1, :cond_1

    .line 123
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "input too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    new-array v1, p3, [B

    .line 127
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 129
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    array-length p3, v2

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move p1, v0

    .line 134
    :goto_0
    array-length p2, v1

    if-ge p1, p2, :cond_2

    .line 136
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_0

    .line 139
    :cond_2
    array-length p1, v1

    array-length p2, v2

    sub-int/2addr p1, p2

    array-length p2, v2

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 143
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1, v1, v3, v1, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 145
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    .line 147
    :goto_1
    array-length p2, v1

    if-ge p1, p2, :cond_3

    .line 149
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_1

    .line 152
    :cond_3
    aget-byte p1, v1, v3

    and-int/lit16 p1, p1, 0xff

    array-length p2, v1

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_4

    .line 154
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "wrapped key corrupted"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_4
    aget-byte p1, v1, v3

    and-int/lit16 p1, p1, 0xff

    new-array p1, p1, [B

    .line 159
    aget-byte p2, v1, v3

    invoke-static {v1, p3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x0

    :goto_2
    const/4 p3, 0x3

    if-eq v3, p3, :cond_5

    add-int/lit8 p3, v3, 0x1

    .line 165
    aget-byte v0, v1, p3

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 166
    aget-byte v2, p1, v3

    xor-int/2addr v0, v2

    or-int/2addr p2, v0

    move v3, p3

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 170
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "wrapped key fails checksum"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object p1
.end method

.method public wrap([BII)[B
    .locals 6

    .line 64
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-nez v0, :cond_0

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    mul-int/lit8 v3, v0, 0x2

    if-ge v1, v3, :cond_1

    .line 76
    new-array v3, v3, [B

    goto :goto_1

    .line 80
    :cond_1
    rem-int v3, v1, v0

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    div-int v3, v1, v0

    add-int/2addr v3, v2

    mul-int v3, v3, v0

    :goto_0
    new-array v3, v3, [B

    :goto_1
    int-to-byte v4, p3

    const/4 v5, 0x0

    .line 83
    aput-byte v4, v3, v5

    .line 84
    aget-byte v4, p1, p2

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, p2, 0x1

    .line 85
    aget-byte v2, p1, v2

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    const/4 v2, 0x3

    add-int/lit8 v4, p2, 0x2

    .line 86
    aget-byte v4, p1, v4

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/4 v2, 0x4

    .line 88
    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length p1, v3

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    .line 92
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 93
    array-length p2, p1

    invoke-static {p1, v5, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 95
    :goto_2
    array-length p2, v3

    if-ge p1, p2, :cond_3

    .line 97
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v3, p1, v3, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_2

    .line 100
    :cond_3
    :goto_3
    array-length p1, v3

    if-ge v5, p1, :cond_4

    .line 102
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v5, v0

    goto :goto_3

    :cond_4
    return-object v3
.end method
