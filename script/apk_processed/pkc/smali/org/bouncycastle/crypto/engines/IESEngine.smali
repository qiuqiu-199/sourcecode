.class public Lorg/bouncycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/bouncycastle/crypto/KeyParser;

.field mac:Lorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 62
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 63
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 64
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 85
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 86
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 87
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 88
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 278
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "Length of input must be greater than the MAC and V combined"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 284
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 285
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 286
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 288
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 290
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_1

    .line 292
    array-length v4, v2

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    array-length v4, v2

    array-length v5, v0

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 297
    :cond_1
    array-length v4, v0

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v4, v0

    array-length v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :goto_0
    array-length v3, v0

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 303
    :goto_1
    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 305
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v5, v5

    add-int/2addr v5, p2

    add-int/2addr v5, v4

    aget-byte v5, p1, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 308
    :cond_2
    array-length v0, v0

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    goto/16 :goto_3

    .line 313
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 314
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 315
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 317
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 318
    array-length v4, v0

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    array-length v4, v0

    array-length v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 328
    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 331
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    sub-int v3, p3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 332
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    add-int v5, p2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    sub-int v4, p3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v6

    sub-int v6, v4, v6

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v3

    .line 333
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4, v0, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 338
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 340
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    if-eqz v6, :cond_5

    .line 342
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object v5

    :cond_5
    add-int v6, p2, p3

    .line 347
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {p1, v7, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 349
    array-length v7, v6

    new-array v7, v7, [B

    .line 350
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v8, v9}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 351
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    add-int/2addr p2, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    sub-int/2addr p3, v8

    array-length v8, v7

    sub-int/2addr p3, v8

    invoke-interface {v2, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz v4, :cond_6

    .line 355
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length p2, v4

    invoke-interface {p1, v4, v1, p2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 357
    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_7

    .line 359
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length p2, v5

    invoke-interface {p1, v5, v1, p2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 361
    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v7, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 363
    invoke-static {v6, v7}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_8

    .line 365
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "Invalid MAC."

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_8
    invoke-static {v0, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method private encryptBlock([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 181
    new-array v0, p3, [B

    .line 182
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 183
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 185
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 187
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 189
    array-length v4, v2

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    array-length v4, v2

    array-length v5, v0

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 194
    :cond_0
    array-length v4, v0

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    array-length v4, v2

    invoke-static {v3, p3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    :goto_0
    new-array v3, p3, [B

    const/4 v4, 0x0

    :goto_1
    if-eq v4, p3, :cond_1

    add-int v5, p2, v4

    .line 202
    aget-byte v5, p1, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_3

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 210
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 211
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 213
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 214
    array-length v4, v0

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v4, v0

    array-length v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v5, v6, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 224
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 227
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 228
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 229
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    add-int p3, p1, p2

    .line 234
    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 236
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    if-eqz v3, :cond_4

    .line 238
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object p2

    .line 243
    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    .line 245
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 246
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v4, v0

    invoke-interface {v2, v0, v1, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz p1, :cond_5

    .line 249
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v4, p1

    invoke-interface {v2, p1, v1, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 251
    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    .line 253
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 255
    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v3, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 259
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    add-int/2addr p1, p3

    array-length p2, v3

    add-int/2addr p1, p2

    new-array p1, p1, [B

    .line 260
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    invoke-static {p2, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p2, p2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p2, p2

    add-int/2addr p2, p3

    array-length p3, v3

    invoke-static {v3, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 147
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    .line 150
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    .line 155
    check-cast p1, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method protected getLengthTag([B)[B
    .locals 5

    const/16 v0, 0x8

    .line 441
    new-array v0, v0, [B

    if-eqz p1, :cond_0

    .line 444
    array-length p1, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x8

    mul-long v1, v1, v3

    const/4 p1, 0x0

    invoke-static {v1, v2, v0, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/KeyParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 139
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 140
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    .line 142
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 123
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 124
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 126
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 106
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 107
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x0

    .line 108
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    .line 110
    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 379
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 386
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 397
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr v0, p2

    .line 405
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    :catch_0
    move-exception p1

    .line 401
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to recover ephemeral public key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 410
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 411
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 415
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 418
    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move-object v0, v1

    .line 425
    :cond_2
    :try_start_1
    new-instance v1, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 426
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v3, v1}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 428
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v1, :cond_3

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->encryptBlock([BII)[B

    move-result-object p1

    goto :goto_1

    .line 430
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->decryptBlock([BII)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :goto_1
    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 435
    throw p1
.end method
