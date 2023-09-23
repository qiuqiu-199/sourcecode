.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;
.source "EdDSANamedCurveSpec.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ScalarOps;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)V
    .locals 0

    .line 28
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ScalarOps;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
