.class public Lorg/bouncycastle/asn1/DERApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
.source "DERApplicationSpecific.java"


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 122
    :goto_0
    iget v1, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    return-void
.end method
