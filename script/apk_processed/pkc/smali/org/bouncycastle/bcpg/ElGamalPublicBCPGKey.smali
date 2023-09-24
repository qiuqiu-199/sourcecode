.class public Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;
.source "ElGamalPublicBCPGKey.java"

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field g:Lorg/bouncycastle/bcpg/MPInteger;

.field p:Lorg/bouncycastle/bcpg/MPInteger;

.field y:Lorg/bouncycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    .line 33
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->p:Lorg/bouncycastle/bcpg/MPInteger;

    .line 34
    new-instance p1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->g:Lorg/bouncycastle/bcpg/MPInteger;

    .line 35
    new-instance p1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {p1, p3}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->y:Lorg/bouncycastle/bcpg/MPInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    .line 23
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->p:Lorg/bouncycastle/bcpg/MPInteger;

    .line 24
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->g:Lorg/bouncycastle/bcpg/MPInteger;

    .line 25
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->y:Lorg/bouncycastle/bcpg/MPInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->p:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->g:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->y:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .line 57
    :try_start_0
    invoke-super {p0}, Lorg/bouncycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->g:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->p:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->y:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
