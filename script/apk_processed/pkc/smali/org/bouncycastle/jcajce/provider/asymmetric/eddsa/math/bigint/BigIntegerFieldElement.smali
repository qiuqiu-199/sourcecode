.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.source "BigIntegerFieldElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x115fcab9bea568L


# instance fields
.field final bi:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;)V

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 42
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public addOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 4

    .line 47
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 0

    if-nez p2, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 69
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 0

    .line 65
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->divide(Ljava/math/BigInteger;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 121
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 4

    .line 88
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public isNonZero()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 92
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public modPow(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 96
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p2, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 73
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->modPow(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public pow22523()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQm5d8()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->pow(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 77
    invoke-virtual {p0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squareAndDouble()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 3

    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public subtractOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 4

    .line 56
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BigIntegerFieldElement val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
