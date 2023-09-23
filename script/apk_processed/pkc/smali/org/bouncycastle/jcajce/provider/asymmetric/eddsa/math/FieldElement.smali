.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.super Ljava/lang/Object;
.source "FieldElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x46757fa4af8dcL


# instance fields
.field protected final f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "field cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public addOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v0, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public divide(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 0

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public abstract invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public isNegative()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getEncoding()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->isNegative(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Z

    move-result v0

    return v0
.end method

.method public abstract isNonZero()Z
.end method

.method public abstract multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract pow22523()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract squareAndDouble()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public subtractOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    iget-object v0, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getEncoding()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->encode(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)[B

    move-result-object v0

    return-object v0
.end method
