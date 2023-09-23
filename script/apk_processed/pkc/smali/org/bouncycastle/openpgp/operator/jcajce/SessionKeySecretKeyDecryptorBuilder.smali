.class public Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;
.super Ljava/lang/Object;
.source "SessionKeySecretKeyDecryptorBuilder.java"


# instance fields
.field private calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private calculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 39
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    .line 79
    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder$1;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;[CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;[B)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;
    .locals 2

    .line 61
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/SessionKeySecretKeyDecryptorBuilder;->calculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    :cond_0
    return-object p0
.end method
