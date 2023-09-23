.class public Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;
.super Ljava/lang/Object;
.source "NfcSyncPGPContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;
    }
.end annotation


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyID:J

.field private signedHashes:Ljava/util/Map;


# direct methods
.method public constructor <init>(IIJLjava/util/Map;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    .line 55
    iput p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->keyAlgorithm:I

    .line 56
    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->hashAlgorithm:I

    .line 57
    iput-wide p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->keyID:J

    .line 58
    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->signedHashes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->hashAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->keyAlgorithm:I

    return p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->signedHashes:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build(IJ)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    .line 100
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;IJLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    return-object v0
.end method

.method public build(ILorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 92
    iget-wide v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->keyID:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->build(IJ)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method
