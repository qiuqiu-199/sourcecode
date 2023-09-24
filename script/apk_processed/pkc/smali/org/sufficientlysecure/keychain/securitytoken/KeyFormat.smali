.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.super Ljava/lang/Object;
.source "KeyFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;
    }
.end annotation


# instance fields
.field private final mKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->mKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 10

    move-object/16 v7, p0

    const/4 v0, 0x0

    .line 45
    aget-byte v1, v7, v0

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/16 v5, 0x16

    if-eq v1, v5, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Algorithm id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :pswitch_0
    array-length v1, v7

    if-ge v1, v3, :cond_0

    .line 57
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad length for EC attributes"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_0
    array-length v1, v7

    sub-int/2addr v1, v4

    .line 60
    array-length v5, v7

    sub-int/2addr v5, v4

    aget-byte v5, v7, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v5, v1, 0x2

    .line 63
    new-array v5, v5, [B

    .line 64
    aput-byte v2, v5, v0

    int-to-byte v2, v1

    .line 65
    aput-byte v2, v5, v4

    .line 66
    invoke-static {v7, v4, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 68
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    aget-byte v0, v7, v0

    array-length v3, v7

    sub-int/2addr v3, v4

    aget-byte v7, v7, v3

    invoke-static {v0, v7}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->from(BB)Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V

    return-object v2

    .line 70
    :cond_2
    new-instance v7, Lorg/sufficientlysecure/keychain/securitytoken/EdDSAKeyFormat;

    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/securitytoken/EdDSAKeyFormat;-><init>()V

    return-object v7

    .line 47
    :cond_3
    array-length v0, v7

    if-ge v0, v2, :cond_4

    .line 48
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad length for RSA attributes"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 50
    :cond_4
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    aget-byte v1, v7, v4

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v7, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v7, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    aget-byte v3, v7, v3

    or-int/2addr v2, v3

    const/4 v3, 0x5

    aget-byte v7, v7, v3

    .line 52
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->from(B)Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    move-result-object v7

    invoke-direct {v0, v1, v2, v7}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;--->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromCreationKeyType(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;Z)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    .line 82
    :goto_0
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$CreateSecurityTokenAlgorithmFragment$SupportedKeyType:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x11

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Algorithm id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :pswitch_0
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    const-string v0, "P-521"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V

    return-object v2

    .line 92
    :pswitch_1
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    const-string v0, "P-384"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V

    return-object v2

    .line 90
    :pswitch_2
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    const-string v0, "P-256"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;)V

    return-object v2

    .line 88
    :pswitch_3
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    const/16 v3, 0x1000

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-direct {v2, v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    return-object v2

    .line 86
    :pswitch_4
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    const/16 v3, 0xc00

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-direct {v2, v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    return-object v2

    .line 84
    :pswitch_5
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    const/16 v3, 0x800

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-direct {v2, v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;-><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;--->fromCreationKeyType(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;Z)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V
.end method

.method public final keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;
    .locals 4

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->mKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;--->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
