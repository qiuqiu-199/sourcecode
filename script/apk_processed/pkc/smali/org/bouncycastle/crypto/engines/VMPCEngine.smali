.class public Lorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;
.source "VMPCEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    .line 18
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 40
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 48
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez p1, :cond_1

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 56
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    .line 58
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length p2, p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length p2, p2

    const/16 v0, 0x300

    if-le p2, v0, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    .line 65
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void

    .line 60
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initKey([B[B)V
    .locals 7

    const/4 v0, 0x0

    .line 70
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    const/16 v1, 0x100

    .line 71
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 74
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x300

    if-ge v1, v2, :cond_1

    .line 79
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v1, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 80
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    aget-byte v2, v2, v5

    .line 81
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    aput-byte v4, v3, v5

    .line 82
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_2

    .line 86
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v5, p1, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p2

    rem-int v4, p1, v4

    aget-byte v4, p2, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v1, v1, v3

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    aget-byte v1, v1, v5

    .line 88
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    aput-byte v4, v3, v5

    .line 89
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v1, v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 91
    :cond_2
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 7

    add-int v0, p2, p3

    .line 97
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 99
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p5, p3

    .line 102
    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 104
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 109
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    .line 112
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    .line 113
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 114
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 115
    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int v2, v0, p5

    add-int v3, v0, p2

    .line 118
    aget-byte v3, p1, v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method
