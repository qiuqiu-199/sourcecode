.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
.super Ljava/lang/Object;
.source "JcaPGPContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private hashAlgorithm:I

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyAlgorithm:I

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 26
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    .line 27
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 34
    iput p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    .line 35
    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I
    .locals 0

    .line 22
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I
    .locals 0

    .line 22
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v8

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iget v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    iget v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createSignature(II)Ljava/security/Signature;

    move-result-object v7

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, p4, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v7, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance p4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;

    move-object v2, p4

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLjava/security/Signature;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    return-object p4

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "invalid key."

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

    .line 80
    instance-of v0, p2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    check-cast p2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 2

    .line 56
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method
