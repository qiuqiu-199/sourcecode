.class public Lorg/bouncycastle/asn1/DERBMPString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "DERBMPString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private final string:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    return-void
.end method

.method constructor <init>([C)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    return-void
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 122
    instance-of v0, p1, Lorg/bouncycastle/asn1/DERBMPString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/DERBMPString;

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    iget-object p1, p1, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result p1

    return p1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e

    .line 146
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 153
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    int-to-byte v1, v1

    .line 154
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
