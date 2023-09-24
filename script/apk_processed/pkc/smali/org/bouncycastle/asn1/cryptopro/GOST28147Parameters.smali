.class public Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GOST28147Parameters.java"


# instance fields
.field private iv:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private paramSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 55
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;
    .locals 1

    .line 33
    instance-of v0, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    iget-object v1, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->paramSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
