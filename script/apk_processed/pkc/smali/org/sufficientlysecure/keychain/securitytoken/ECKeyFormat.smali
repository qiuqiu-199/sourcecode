.class public Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;
.super Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.source "ECKeyFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
    }
.end annotation


# instance fields
.field private final mECAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

.field private final mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 37
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ECKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;)V

    .line 38
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    .line 39
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;---><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 89
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 92
    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    and-int/lit8 v2, v7, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    and-int/lit8 v2, v7, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 95
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    .line 99
    :cond_1
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "P-256"

    invoke-static {v3}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P256:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "P-384"

    invoke-static {v3}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P384:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "P-521"

    invoke-static {v3}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P521:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    .line 109
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v0, v2, v7, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    return-void

    .line 106
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported curve "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;--->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;--->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;->mECCurveOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;--->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
