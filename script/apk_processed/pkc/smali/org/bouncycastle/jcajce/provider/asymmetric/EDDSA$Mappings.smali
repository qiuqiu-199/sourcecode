.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "EDDSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method

.method private addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WITHEd25519"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withEd25519"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WithEd25519"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Ed25519"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, p3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias.Signature."

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 2

    const-string v0, "KeyPairGenerator.EdDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.KeyPairGenerator"

    .line 19
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.EdDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.KeyFactory"

    .line 20
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MessageDigest"

    const-string v1, "MD2"

    .line 22
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MD2"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$MD2"

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "MessageDigest"

    const-string v1, "MD4"

    .line 27
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MD4"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$MD4"

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "MessageDigest"

    const-string v1, "MD5"

    .line 32
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MD5"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$MD5"

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "MessageDigest"

    const-string v1, "SHA1"

    .line 37
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SHA1"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA1"

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "SHA224"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA224"

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA256"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA256"

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA384"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA384"

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA512"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA512"

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA512(224)"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA512_224"

    .line 46
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA512(256)"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$SHA512_256"

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MessageDigest"

    const-string v1, "RIPEMD128"

    .line 49
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RIPEMD128"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD128"

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RMD128"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD128"

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "MessageDigest"

    const-string v1, "RIPEMD160"

    .line 55
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RIPEMD160"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD160"

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RMD160"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD160"

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "MessageDigest"

    const-string v1, "RIPEMD256"

    .line 61
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "RIPEMD256"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD256"

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RMD256"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.eddsa.DigestSignatureSpi$RIPEMD256"

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EDDSA$Mappings;->addDigestSignature(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
