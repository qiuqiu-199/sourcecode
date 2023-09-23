.class public Lorg/bouncycastle/openpgp/PGPKeyPair;
.super Ljava/lang/Object;
.source "PGPKeyPair.java"


# instance fields
.field protected priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

.field protected pub:Lorg/bouncycastle/openpgp/PGPPublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPKeyPair;->priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v0
.end method
