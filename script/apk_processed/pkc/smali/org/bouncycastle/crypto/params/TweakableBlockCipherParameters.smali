.class public Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;
.super Ljava/lang/Object;
.source "TweakableBlockCipherParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final key:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final tweak:[B


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getTweak()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->tweak:[B

    return-object v0
.end method
