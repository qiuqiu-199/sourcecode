.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 201
    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 202
    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 206
    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    .line 345
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 5

    .line 352
    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "6767656E"

    .line 353
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 356
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 357
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    array-length p3, p3

    array-length v3, v0

    invoke-static {v0, v4, v1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    array-length p3, v1

    add-int/lit8 p3, p3, -0x3

    int-to-byte p4, p4

    aput-byte p4, v1, p3

    .line 361
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    const/4 p4, 0x1

    :goto_0
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_1

    .line 364
    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 365
    invoke-static {p0, v1, p3, v4}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 366
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 367
    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 368
    sget-object v3, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 15

    const/16 v0, 0x14

    .line 122
    new-array v1, v0, [B

    .line 123
    new-array v2, v0, [B

    .line 124
    new-array v3, v0, [B

    .line 125
    new-array v0, v0, [B

    .line 126
    iget v4, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xa0

    .line 127
    iget v6, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v6, v6, 0x8

    new-array v6, v6, [B

    .line 129
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v7, v7, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-nez v7, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 138
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-static {v7, v1, v2, v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 139
    array-length v7, v1

    invoke-static {v1, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 141
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v7, v3, v3, v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v7, 0x0

    .line 143
    :goto_1
    array-length v9, v0

    if-eq v7, v9, :cond_1

    .line 145
    aget-byte v9, v2, v7

    aget-byte v10, v3, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 148
    :cond_1
    aget-byte v7, v0, v8

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v8

    const/16 v7, 0x13

    .line 149
    aget-byte v9, v0, v7

    or-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v0, v7

    .line 151
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 153
    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    .line 159
    invoke-static {v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x1000

    if-ge v10, v11, :cond_0

    const/4 v11, 0x1

    :goto_3
    if-gt v11, v4, :cond_3

    .line 166
    invoke-static {v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 167
    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v6

    array-length v14, v2

    mul-int v14, v14, v11

    sub-int/2addr v13, v14

    invoke-static {v12, v9, v6, v13}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 170
    :cond_3
    array-length v11, v6

    array-length v12, v2

    mul-int v12, v12, v4

    sub-int/2addr v11, v12

    .line 171
    invoke-static {v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 172
    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v12, v9, v2, v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 173
    array-length v12, v2

    sub-int/2addr v12, v11

    invoke-static {v2, v12, v6, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    aget-byte v11, v6, v8

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v6, v8

    .line 178
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 180
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 182
    sget-object v13, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 184
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v12, v13, :cond_4

    goto :goto_4

    .line 189
    :cond_4
    invoke-direct {p0, v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v11, v7, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v1, v10}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v11, v7, v0, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method private generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 14

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 224
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .line 232
    iget v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 233
    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 236
    iget v3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    .line 239
    iget v5, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    sub-int/2addr v5, v4

    rem-int/2addr v5, v1

    .line 241
    iget v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 242
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 246
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v6, 0x0

    .line 249
    invoke-static {v0, v2, v5, v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 251
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v8, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v9, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 254
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 257
    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v8

    .line 268
    iget v9, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v9, v9, 0x4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    const/4 v11, 0x1

    :goto_2
    if-gt v11, v3, :cond_2

    .line 277
    invoke-static {v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 278
    array-length v12, v1

    array-length v13, v5

    mul-int v13, v13, v11

    sub-int/2addr v12, v13

    invoke-static {v0, v8, v1, v12}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 281
    :cond_2
    array-length v11, v1

    array-length v12, v5

    mul-int v12, v12, v3

    sub-int/2addr v11, v12

    .line 282
    invoke-static {v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 283
    invoke-static {v0, v8, v5, v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 284
    array-length v12, v5

    sub-int/2addr v12, v11

    invoke-static {v5, v12, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    aget-byte v11, v1, v6

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v1, v6

    .line 290
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 293
    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 296
    sget-object v13, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 299
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v12, v13, :cond_3

    goto :goto_3

    .line 305
    :cond_3
    invoke-direct {p0, v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 309
    iget v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v1, :cond_4

    .line 311
    iget v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v0, v11, v7, v2, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 314
    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    iget v4, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v3, v2, v10, v4}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v1, v11, v7, v0, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    .line 318
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v11, v7, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 320
    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v2, v10}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v11, v7, v0, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private static getDefaultN(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private static getMinimumIterations(I)I
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 391
    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    :goto_0
    return p0
.end method

.method private static hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2

    .line 379
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 380
    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static inc([B)V
    .locals 2

    .line 396
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 398
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 399
    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1

    .line 339
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 56
    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 57
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 58
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 5

    .line 74
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_5

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_5

    .line 76
    rem-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 160 for L = 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_2

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 224 or 256 for L = 2048"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne v0, v3, :cond_3

    if-eq v1, v4, :cond_3

    .line 90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 256 for L = 3072"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_4

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Digest output size too small for value of N"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_4
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 99
    iput v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 101
    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 102
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 103
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 104
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void

    .line 78
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
