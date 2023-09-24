.class public Lorg/bouncycastle/jce/provider/X509StoreLDAPCertPairs;
.super Lorg/bouncycastle/x509/X509StoreSpi;
.source "X509StoreLDAPCertPairs.java"


# instance fields
.field private helper:Lorg/bouncycastle/x509/util/LDAPStoreHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/x509/X509StoreSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    if-nez v0, :cond_0

    .line 67
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    .line 69
    :cond_0
    check-cast p1, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509StoreLDAPCertPairs;->helper:Lorg/bouncycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getCrossCertificatePairs(Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 2

    .line 40
    instance-of v0, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    if-nez v0, :cond_0

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialization parameters must be an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    new-instance v0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;

    check-cast p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;-><init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509StoreLDAPCertPairs;->helper:Lorg/bouncycastle/x509/util/LDAPStoreHelper;

    return-void
.end method
