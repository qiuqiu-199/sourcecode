.class public Lorg/bouncycastle/math/ec/WTauNafMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 5

    .line 76
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 77
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    if-eqz p2, :cond_1

    .line 80
    instance-of v2, p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    check-cast p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p2

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/Tnaf;->getPreComp(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p2

    .line 84
    new-instance v1, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    invoke-virtual {v1, p2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    const-string v2, "bc_wtnaf"

    .line 86
    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompInfo;)V

    .line 94
    :goto_1
    array-length v0, p2

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 97
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 105
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    move-object v3, p0

    const/4 p0, 0x0

    :goto_3
    if-ltz v2, :cond_5

    add-int/lit8 p0, p0, 0x1

    .line 108
    aget-byte v4, p1, v2

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {v3, p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    if-lez v4, :cond_3

    ushr-int/lit8 v3, v4, 0x1

    .line 114
    aget-object v3, p2, v3

    goto :goto_4

    :cond_3
    neg-int v3, v4

    ushr-int/lit8 v3, v3, 0x1

    aget-object v3, v0, v3

    .line 115
    :goto_4
    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-object v3, p0

    const/4 p0, 0x0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    if-lez p0, :cond_6

    .line 120
    invoke-virtual {v3, p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    :cond_6
    return-object v3
.end method

.method private multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    if-nez p4, :cond_0

    .line 55
    sget-object p4, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    :goto_0
    move-object v5, p4

    goto :goto_1

    :cond_0
    sget-object p4, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    goto :goto_0

    :goto_1
    const/4 p4, 0x4

    .line 57
    invoke-static {p5, p4}, Lorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v2, 0x4

    const-wide/16 v0, 0x10

    .line 60
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    .line 59
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object p2

    .line 62
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    .line 24
    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-nez v0, :cond_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 31
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v3

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v8

    .line 34
    invoke-static {v8}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v9

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v5

    const/16 v7, 0xa

    move-object v2, p2

    move v4, v8

    move v6, v9

    .line 37
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v2

    const-string p2, "bc_wtnaf"

    .line 39
    invoke-virtual {p1, v1, p2}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v3

    move-object v0, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p1

    return-object p1
.end method