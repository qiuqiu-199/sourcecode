.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;
.super Lorg/bouncycastle/openpgp/PGPPrivateKey;
.source "JcaPGPPrivateKey.java"


# instance fields
.field private final privateKey:Ljava/security/PrivateKey;


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
