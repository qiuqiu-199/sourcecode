.class public Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "SecT163R1Curve.java"


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x6

    const/16 v1, 0xa3

    const/4 v2, 0x3

    const/4 v3, 0x7

    .line 19
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 21
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;

    .line 23
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "07B6882CAAEFA84F9554FF8428BD88E246D2782AE2"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 24
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 25
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->order:Ljava/math/BigInteger;

    const-wide/16 v1, 0x2

    .line 26
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->cofactor:Ljava/math/BigInteger;

    .line 28
    iput v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->coord:I

    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 33
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;-><init>()V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 59
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    .line 64
    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 54
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    const/16 v0, 0xa3

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT163R1Point;

    return-object v0
.end method

.method public isKoblitz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method