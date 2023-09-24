.class public Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;
.super Lorg/bouncycastle/jce/spec/ElGamalKeySpec;
.source "ElGamalPublicKeySpec.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
