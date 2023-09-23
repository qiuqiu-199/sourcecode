.class public abstract Lorg/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 17
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    .line 19
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 356
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 358
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be non-null and >= 2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "candidate"

    .line 255
    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lorg/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 3

    const v0, 0xd4c2086

    int-to-long v0, v0

    .line 368
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 369
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_13

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_13

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const v0, 0x37ed0ed

    int-to-long v0, v0

    .line 376
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 377
    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_12

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_12

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_12

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_12

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const v0, 0x23cd611f

    int-to-long v0, v0

    .line 383
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 384
    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_11

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_11

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_11

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_11

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    const v0, 0x20691a3

    int-to-long v0, v0

    .line 390
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 391
    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_10

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_10

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_10

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    const v0, 0x55a60cb

    int-to-long v0, v0

    .line 397
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 398
    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_f

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_f

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_f

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    const v0, 0x9f9f361

    int-to-long v0, v0

    .line 404
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 405
    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_e

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_e

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_e

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    const v0, 0x1627b25d

    int-to-long v0, v0

    .line 411
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 412
    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_d

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_d

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_d

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x2676ed77

    int-to-long v0, v0

    .line 418
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 419
    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_c

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_c

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_c

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const v0, 0x3fcf739d

    int-to-long v0, v0

    .line 425
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 426
    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_b

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_b

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_b

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const v0, 0x5f281a99

    int-to-long v0, v0

    .line 432
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 433
    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_a

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    return v2

    :cond_b
    :goto_1
    return v2

    :cond_c
    :goto_2
    return v2

    :cond_d
    :goto_3
    return v2

    :cond_e
    :goto_4
    return v2

    :cond_f
    :goto_5
    return v2

    :cond_10
    :goto_6
    return v2

    :cond_11
    :goto_7
    return v2

    :cond_12
    :goto_8
    return v2

    :cond_13
    :goto_9
    return v2
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 3

    .line 447
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 449
    sget-object p4, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_4

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_2

    :cond_0
    move-object p4, p2

    const/4 p2, 0x1

    :goto_0
    const/4 v1, 0x0

    if-ge p2, p3, :cond_3

    .line 458
    sget-object v2, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p4, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    .line 460
    invoke-virtual {p4, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 466
    :cond_1
    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p4, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 8

    const-string v0, "candidate"

    .line 278
    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 282
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 286
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 299
    :cond_3
    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 300
    sget-object v3, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 302
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 303
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_5

    .line 307
    sget-object v7, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 309
    invoke-static {p0, v2, v5, v4, v7}, Lorg/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method
