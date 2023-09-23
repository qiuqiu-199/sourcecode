.class public Lorg/bouncycastle/asn1/x9/DHDomainParameters;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lorg/bouncycastle/asn1/ASN1Integer;

.field private j:Lorg/bouncycastle/asn1/ASN1Integer;

.field private p:Lorg/bouncycastle/asn1/ASN1Integer;

.field private q:Lorg/bouncycastle/asn1/ASN1Integer;

.field private validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 100
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 101
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 103
    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 107
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 108
    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 3

    if-eqz p0, :cond_2

    .line 31
    instance-of v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    return-object p0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 119
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getP()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 149
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
