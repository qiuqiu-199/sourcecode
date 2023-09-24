.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;
.super Ljava/lang/Object;
.source "EdDSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final spec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 46
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precompute(Z)V

    .line 47
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->spec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v0, p1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;->getCurve()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-eq v0, v1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public-key length is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;->getCurve()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 38
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 39
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precompute(Z)V

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->spec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method


# virtual methods
.method public getA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getNegativeA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->spec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method
