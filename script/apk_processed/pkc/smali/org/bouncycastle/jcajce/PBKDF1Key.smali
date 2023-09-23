.class public Lorg/bouncycastle/jcajce/PBKDF1Key;
.super Ljava/lang/Object;
.source "PBKDF1Key.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final password:[C


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "PBKDF1"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    return-object v0
.end method