.class public Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;
.super Lorg/bouncycastle/jcajce/PBKDF1Key;
.source "PBKDF1KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# virtual methods
.method public getIterationCount()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->salt:[B

    return-object v0
.end method
