.class public Lorg/bouncycastle/bcpg/ECSecretBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;
.source "ECSecretBCPGKey.java"

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field x:Lorg/bouncycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    .line 32
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->x:Lorg/bouncycastle/bcpg/MPInteger;

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

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->x:Lorg/bouncycastle/bcpg/MPInteger;

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

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->x:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .line 54
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

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->x:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
