.class public Lorg/bouncycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "ElGamalKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
