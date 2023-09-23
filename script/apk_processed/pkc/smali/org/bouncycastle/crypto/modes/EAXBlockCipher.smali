.class public Lorg/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source "EAXBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

.field private cipherInitialized:Z

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private mac:Lorg/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    .line 63
    new-instance v0, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 64
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    .line 67
    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    return-void
.end method

.method private calculateMac()V
    .locals 5

    .line 152
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v1, v1

    if-ge v2, v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    aget-byte v4, v0, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initCipher()V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 145
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 146
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    aput-byte v0, v1, v2

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method

.method private process(B[BI)I
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 339
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 341
    array-length p1, p2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    .line 343
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, p2, p3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 360
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 363
    :goto_0
    iput v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 364
    iget-boolean p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez p2, :cond_2

    .line 366
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget p3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    iput p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    :cond_2
    return p1

    :cond_3
    return v1
.end method

.method private reset(Z)V
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 173
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 180
    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array p1, p1, [B

    .line 181
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-byte v2, p1, v1

    .line 182
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 184
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 186
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->processAADBytes([BII)V

    :cond_1
    return-void
.end method

.method private verifyMac([BI)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 380
    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v1, v3, :cond_0

    .line 382
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v3, v3, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 243
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 244
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v1, v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 246
    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 248
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_1

    .line 250
    array-length v3, p1

    add-int v4, p2, v0

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_0

    .line 252
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v3, v5, v2, v1, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 256
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2, v1, v2, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 260
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 262
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {p2, v2, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 266
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, p1

    return v0

    .line 270
    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v3, :cond_2

    .line 272
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    array-length v3, p1

    add-int v4, p2, v0

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 276
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_3
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v3, :cond_4

    .line 280
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v5, v0, v5

    invoke-interface {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 282
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v3, v4, v2, v1, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 284
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v3, v0, v3

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 289
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int p2, v0, p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result p1

    if-nez p1, :cond_5

    .line 291
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "mac check in EAX failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_5
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 296
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 325
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 327
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 329
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1

    .line 332
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    .line 311
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 312
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v0, :cond_1

    .line 314
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    .line 320
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    .line 93
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 97
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 99
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 100
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 104
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 107
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 108
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 109
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :goto_0
    if-eqz p1, :cond_1

    .line 116
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr p1, v2

    :goto_1
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    .line 118
    iget p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array p1, p1, [B

    .line 121
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, p2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 123
    iget p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    const/4 v3, 0x0

    aput-byte v3, p1, p2

    .line 124
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {p2, p1, v3, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 125
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length p2, v0

    invoke-interface {p1, v0, v3, p2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 126
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {p1, p2, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 129
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {p2, v1, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v2, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 131
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset()V

    return-void

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to EAX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADBytes([BII)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 223
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 225
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p3, :cond_1

    add-int v2, p2, v0

    .line 232
    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    return-void
.end method
