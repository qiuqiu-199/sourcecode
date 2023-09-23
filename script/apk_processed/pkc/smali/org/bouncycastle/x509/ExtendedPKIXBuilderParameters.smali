.class public Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lorg/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/bouncycastle/util/Selector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 27
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 88
    invoke-virtual {p0, p2}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lorg/bouncycastle/util/Selector;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 170
    :try_start_0
    new-instance v0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lorg/bouncycastle/util/Selector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lorg/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 146
    instance-of v0, p1, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 149
    iget v1, v0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 150
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, v0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 152
    :cond_0
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    .line 155
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    :cond_1
    return-void
.end method
