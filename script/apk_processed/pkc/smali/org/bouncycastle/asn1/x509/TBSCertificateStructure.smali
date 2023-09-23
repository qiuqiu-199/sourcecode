.class public Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field endDate:Lorg/bouncycastle/asn1/x509/Time;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lorg/bouncycastle/asn1/DERBitString;

.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/bouncycastle/asn1/x509/Time;

.field subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lorg/bouncycastle/asn1/DERBitString;

.field version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 92
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v3, v1, 0x2

    .line 94
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v3, v1, 0x3

    .line 95
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v3, v1, 0x4

    .line 100
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 102
    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    .line 103
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    add-int/lit8 v3, v1, 0x5

    .line 105
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v1, v1, 0x6

    .line 110
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 112
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    :goto_1
    if-lez v3, :cond_1

    add-int v2, v1, v3

    .line 114
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 116
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 125
    :pswitch_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_2

    .line 122
    :pswitch_1
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lorg/bouncycastle/asn1/DERBitString;

    goto :goto_2

    .line 119
    :pswitch_2
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lorg/bouncycastle/asn1/DERBitString;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1

    .line 60
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
