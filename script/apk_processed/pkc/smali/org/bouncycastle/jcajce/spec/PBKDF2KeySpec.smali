.class public Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "PBKDF2KeySpec.java"


# instance fields
.field private prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>([C[BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 28
    iput-object p5, p0, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
