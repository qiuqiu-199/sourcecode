.class public Lorg/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method constructor <init>(ZILorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    .line 21
    iput p2, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 22
    iput-object p3, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iget v2, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
