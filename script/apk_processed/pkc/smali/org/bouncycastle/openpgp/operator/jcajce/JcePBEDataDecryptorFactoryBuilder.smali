.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;
.source "JcePBEDataDecryptorFactoryBuilder.java"


# instance fields
.field private calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;
    .locals 2

    .line 70
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;[CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;
    .locals 2

    .line 57
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
