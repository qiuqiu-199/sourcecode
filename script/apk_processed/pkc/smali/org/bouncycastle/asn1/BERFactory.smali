.class Lorg/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

.field static final EMPTY_SET:Lorg/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

    .line 6
    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lorg/bouncycastle/asn1/BERSet;

    return-void
.end method

.method static createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
