.class public Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source "ISO9797Alg3Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    .line 43
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC size must be multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/engines/DESEngine;

    if-nez v0, :cond_1

    .line 107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher must be instance of DESEngine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 111
    iput-object p3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 112
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    .line 114
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    .line 116
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 57
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 243
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 248
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v1, v0, :cond_2

    .line 250
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte v3, v1, v4

    .line 251
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_0

    .line 256
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v1, v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v3, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 259
    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 265
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v3, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 268
    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 270
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 271
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v3, v4, v3}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 273
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 274
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 281
    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 129
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v1, :cond_0

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz v0, :cond_1

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 147
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 151
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v1, v3, :cond_2

    .line 155
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 156
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 157
    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_1

    .line 159
    :cond_2
    array-length v1, v0

    const/16 v5, 0x18

    if-ne v1, v5, :cond_4

    .line 161
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 162
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 163
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 171
    :goto_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 177
    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_2
    return-void

    .line 167
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key must be either 112 or 168 bit long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 293
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 295
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 303
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    .line 189
    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    if-gez p3, :cond_0

    .line 206
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 211
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_1

    .line 215
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 219
    iput v5, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_1

    .line 225
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void
.end method