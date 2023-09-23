.class public Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DSTU4145ECBinary.java"


# instance fields
.field a:Lorg/bouncycastle/asn1/ASN1Integer;

.field b:Lorg/bouncycastle/asn1/ASN1OctetString;

.field bp:Lorg/bouncycastle/asn1/ASN1OctetString;

.field f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

.field n:Lorg/bouncycastle/asn1/ASN1Integer;

.field version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 70
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    add-int/2addr v0, v2

    .line 82
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/2addr v0, v2

    .line 84
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/2addr v0, v2

    .line 86
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/2addr v0, v2

    .line 88
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .locals 1

    .line 93
    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getB()[B
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    return-object v0
.end method

.method public getG()[B
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 143
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v5, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
