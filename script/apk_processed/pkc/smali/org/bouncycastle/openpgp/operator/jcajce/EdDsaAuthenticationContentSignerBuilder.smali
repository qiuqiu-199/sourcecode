.class public Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;
.super Ljava/lang/Object;
.source "EdDsaAuthenticationContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 22
    iput p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->keyAlgorithm:I

    .line 23
    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->hashAlgorithm:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;)I
    .locals 0

    .line 16
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->hashAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;)I
    .locals 0

    .line 16
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->keyAlgorithm:I

    return p0
.end method

.method private createSignature()Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "Ed25519"

    .line 37
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 38
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAEngine;-><init>(Ljava/security/MessageDigest;)V

    return-object v1
.end method


# virtual methods
.method public build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->createSignature()Ljava/security/Signature;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    :try_start_1
    invoke-virtual {v5, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    new-instance p4, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;IJLjava/security/Signature;)V

    return-object p4

    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "invalid key."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 47
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "unable to create Signature."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public build(ILorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 95
    instance-of v0, p2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    check-cast p2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method
