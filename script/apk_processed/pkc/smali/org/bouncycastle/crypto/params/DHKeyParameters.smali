.class public Lorg/bouncycastle/crypto/params/DHKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DHKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/DHKeyParameters;

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 39
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/DHParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 47
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method
