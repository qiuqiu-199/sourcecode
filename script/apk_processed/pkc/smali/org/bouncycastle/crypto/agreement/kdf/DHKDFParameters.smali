.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;
.source "DHKDFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private extraInfo:[B

.field private keySize:I

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I[B[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    iput p2, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    .line 30
    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    .line 31
    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    return-object v0
.end method
