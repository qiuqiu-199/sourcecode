.class public Lorg/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 20
    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 21
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .locals 7

    .line 115
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 120
    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 122
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v2, 0x100

    if-nez v1, :cond_0

    .line 124
    new-array v1, v2, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 130
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 138
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    .line 140
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v4, v4, v0

    .line 141
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v6, v3

    aput-byte v6, v5, v0

    .line 142
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    .line 143
    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 36
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_0

    .line 43
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 44
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC4 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 7

    add-int v0, p2, p3

    .line 78
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 80
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p5, p3

    .line 83
    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 85
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 90
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 91
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 94
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    .line 95
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 96
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    add-int v1, v0, p5

    add-int v2, v0, p2

    .line 99
    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method
