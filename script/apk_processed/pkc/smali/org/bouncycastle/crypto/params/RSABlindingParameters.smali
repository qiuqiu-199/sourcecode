.class public Lorg/bouncycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;
.source "RSABlindingParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private publicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method
