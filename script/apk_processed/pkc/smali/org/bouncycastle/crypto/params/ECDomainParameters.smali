.class public Lorg/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field private G:Lorg/bouncycastle/math/ec/ECPoint;

.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6

    .line 24
    sget-object v4, Lorg/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    .line 44
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lorg/bouncycastle/math/ec/ECPoint;

    .line 45
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 46
    iput-object p4, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 47
    iput-object p5, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void
.end method


# virtual methods
.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method