.class Lorg/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    const/16 v0, 0x9

    .line 39
    new-array v1, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v9, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v10, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v11, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    sput-object v1, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    .line 51
    new-array v1, v10, [[B

    aput-object v3, v1, v2

    new-array v12, v5, [B

    aput-byte v5, v12, v2

    aput-object v12, v1, v5

    aput-object v3, v1, v4

    new-array v12, v7, [B

    fill-array-data v12, :array_0

    aput-object v12, v1, v7

    aput-object v3, v1, v6

    new-array v12, v7, [B

    fill-array-data v12, :array_1

    aput-object v12, v1, v9

    aput-object v3, v1, v8

    new-array v12, v6, [B

    fill-array-data v12, :array_2

    aput-object v12, v1, v11

    sput-object v1, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 59
    new-array v0, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    aput-object v3, v0, v2

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v13, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v13, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v13, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v13, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v3, v0, v10

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    .line 70
    new-array v0, v10, [[B

    aput-object v3, v0, v2

    new-array v1, v5, [B

    aput-byte v5, v1, v2

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-array v1, v6, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v11

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 2

    add-int/lit8 v0, p4, 0x5

    .line 286
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    .line 287
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 291
    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 293
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    .line 296
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    .line 297
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 300
    sget-object p0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 303
    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {p0, p1, p5}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 451
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p2, :cond_1

    .line 460
    sget-object p2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v1, p0

    .line 461
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 465
    :cond_1
    sget-object p2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 466
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    :goto_0
    move-object v2, v1

    move-object v1, p2

    const/4 p2, 0x1

    :goto_1
    if-ge p2, p1, :cond_3

    if-ne p0, v0, :cond_2

    move-object v3, v2

    goto :goto_2

    .line 480
    :cond_2
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    .line 483
    :goto_2
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    .line 490
    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    aput-object v2, p0, v0

    return-object p0
.end method

.method public static getMu(I)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static getPreComp(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 5

    if-nez p1, :cond_0

    .line 834
    sget-object p1, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 836
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v1, 0x0

    .line 837
    aput-object p0, v0, v1

    .line 839
    array-length v1, p1

    const/4 v2, 0x3

    :goto_1
    if-ge v2, v1, :cond_1

    ushr-int/lit8 v3, v2, 0x1

    .line 842
    aget-object v4, p1, v2

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 845
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 585
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 589
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 595
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSi(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .locals 5

    .line 540
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 546
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 547
    invoke-static {v1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    .line 548
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result p0

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 550
    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 553
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 554
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    .line 557
    :cond_1
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 558
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    .line 560
    new-array v0, v0, [Ljava/math/BigInteger;

    aput-object v2, v0, v1

    aput-object p0, v0, v3

    return-object v0
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x6

    .line 508
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 p0, 0xa

    .line 513
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 519
    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 520
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 521
    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 523
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    .line 697
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 699
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 701
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ltz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 704
    aget-byte v5, p1, v2

    if-eqz v5, :cond_1

    .line 707
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    if-lez v5, :cond_0

    move-object v4, p0

    goto :goto_1

    :cond_0
    move-object v4, v1

    .line 711
    :goto_1
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-object v4, v0

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 716
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    :cond_3
    return-object v4
.end method

.method public static norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 3

    .line 87
    iget-object v0, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 90
    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 93
    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    if-ne p0, v2, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    .line 101
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 14

    move/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 618
    aget-object v4, p3, v2

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :goto_0
    move-object v11, v4

    move v4, p1

    goto :goto_1

    .line 622
    :cond_0
    aget-object v4, p3, v2

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_0

    .line 625
    :goto_1
    invoke-static {v1, v4, v3}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v5

    .line 626
    aget-object v12, v5, v3

    .line 628
    aget-object v6, p3, v2

    move-object v5, p0

    move-object v7, v12

    move/from16 v8, p2

    move v9, v4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v13

    .line 631
    aget-object v6, p3, v3

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 634
    invoke-static {v13, v4, v1}, Lorg/bouncycastle/math/ec/Tnaf;->round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v1

    .line 637
    iget-object v4, v1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v5, 0x2

    .line 638
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 637
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 641
    aget-object v3, p3, v3

    iget-object v5, v1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v0, p3, v2

    iget-object v1, v1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 643
    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 7

    .line 169
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    .line 170
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_1

    .line 178
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 184
    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 185
    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    if-ne p2, v1, :cond_2

    .line 191
    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 201
    :goto_0
    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 202
    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    if-ne p2, v1, :cond_3

    .line 207
    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 208
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 214
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 221
    :goto_1
    sget-object p1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v6, 0x0

    if-ltz p1, :cond_5

    .line 223
    sget-object p1, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 v6, 0x1

    goto :goto_3

    .line 235
    :cond_5
    sget-object p1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_6

    :goto_2
    move p1, p2

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 242
    :goto_3
    sget-object v1, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_8

    .line 244
    sget-object p0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_7

    neg-int p0, p2

    int-to-byte p1, p0

    goto :goto_4

    :cond_7
    const/4 v6, -0x1

    goto :goto_4

    .line 256
    :cond_8
    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_9

    neg-int p0, p2

    int-to-byte p1, p0

    :cond_9
    :goto_4
    int-to-long v0, v6

    .line 262
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, p1

    .line 263
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 264
    new-instance p2, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public static tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 740
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/Tnaf;->norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 746
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p2, 0x22

    .line 752
    :goto_0
    new-array p2, v1, [B

    .line 755
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 758
    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 759
    iget-object p1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 763
    :goto_1
    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    return-object p2

    .line 766
    :cond_3
    :goto_2
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 770
    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 774
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_4

    .line 776
    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-byte v5, v5

    goto :goto_3

    .line 780
    :cond_4
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-byte v5, v5

    .line 784
    :goto_3
    aput-byte v5, p2, v4

    if-gez v5, :cond_5

    neg-int v5, v5

    int-to-byte v5, v5

    move v6, v5

    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    move v6, v5

    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_6

    .line 795
    aget-object v5, p5, v6

    iget-object v5, v5, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 796
    aget-object v5, p5, v6

    iget-object v5, v5, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    .line 800
    :cond_6
    aget-object v5, p5, v6

    iget-object v5, v5, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 801
    aget-object v5, p5, v6

    iget-object v5, v5, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    .line 806
    :cond_7
    aput-byte v3, p2, v4

    :goto_5
    if-ne p0, v0, :cond_8

    .line 813
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    .line 818
    :cond_8
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 820
    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_1
.end method
