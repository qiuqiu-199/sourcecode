.class public Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;
.super Ljava/lang/Object;
.source "EphemeralKeyPairGenerator.java"


# instance fields
.field private gen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private keyEncoder:Lorg/bouncycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->gen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->keyEncoder:Lorg/bouncycastle/crypto/KeyEncoder;

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;
    .locals 3

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->gen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 24
    new-instance v1, Lorg/bouncycastle/crypto/EphemeralKeyPair;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->keyEncoder:Lorg/bouncycastle/crypto/KeyEncoder;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/EphemeralKeyPair;-><init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/KeyEncoder;)V

    return-object v1
.end method
