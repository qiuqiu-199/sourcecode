.class public Lorg/bouncycastle/math/ec/GLVMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final curve:Lorg/bouncycastle/math/ec/ECCurve;

.field protected final glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    return-void

    .line 16
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need curve with known group order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    .line 32
    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    .line 34
    iget-object v1, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v1}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    invoke-interface {v1, p1}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
