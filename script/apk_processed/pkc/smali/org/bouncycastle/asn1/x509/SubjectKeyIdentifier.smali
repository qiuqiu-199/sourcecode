.class public Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-void
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
