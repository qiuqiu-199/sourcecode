.class public Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;
.super Ljava/lang/Object;
.source "SshSignatureConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getASN1Sequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 5

    move-object/16 v2, p0

    .line 76
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not read ASN.1 object"

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getASN1Sequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getDsaSignatureBlob([B)[B
    .locals 10

    move-object/16 v7, p0

    .line 83
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getR([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getS([B)Ljava/math/BigInteger;

    move-result-object v7

    .line 86
    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 87
    invoke-static {v7}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 89
    array-length v1, v0

    array-length v2, v7

    if-le v1, v2, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v7

    :goto_0
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getDsaSignatureLength(I)I

    move-result v1

    .line 90
    array-length v2, v0

    sub-int v2, v1, v2

    .line 91
    array-length v3, v7

    sub-int v3, v1, v3

    mul-int/lit8 v4, v1, 0x2

    .line 93
    new-array v4, v4, [B

    .line 94
    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    .line 95
    array-length v0, v7

    invoke-static {v7, v6, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getDsaSignatureBlob([B)[B"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getDsaSignatureLength(I)I
    .locals 4

    move/16 v1, p0

    const/16 v0, 0x14

    if-gt v1, v0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x20

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getDsaSignatureLength(I)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getEcDsaSignatureBlob([B)[B
    .locals 5

    move-object/16 v2, p0

    .line 54
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getR([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 55
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getS([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    new-instance v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    .line 58
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 59
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 61
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getEcDsaSignatureBlob([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getR([B)Ljava/math/BigInteger;
    .locals 4

    move-object/16 v1, p0

    .line 65
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getASN1Sequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getR([B)Ljava/math/BigInteger;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getRsaSignatureFormatId(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move/16 v1, p0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    .line 49
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Unknown hash algorithm"

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "rsa-sha2-512"

    return-object v1

    :cond_1
    const-string v1, "rsa-sha2-256"

    return-object v1

    :cond_2
    const-string v1, "ssh-rsa"

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getRsaSignatureFormatId(I)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getS([B)Ljava/math/BigInteger;
    .locals 4

    move-object/16 v1, p0

    .line 70
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getASN1Sequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getS([B)Ljava/math/BigInteger;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSshSignatureDsa([B)[B
    .locals 5

    move-object/16 v2, p0

    .line 118
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    const-string v1, "ssh-dss"

    .line 120
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    .line 121
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getDsaSignatureBlob([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    .line 123
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getSshSignatureDsa([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSshSignatureEcDsa([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 135
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ecdsa-sha2-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ssh/utils/SshUtils;->getCurveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    .line 138
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getEcDsaSignatureBlob([B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    .line 140
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getSshSignatureEcDsa([BLjava/lang/String;)[B"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSshSignatureEdDsa([B)[B
    .locals 5

    move-object/16 v2, p0

    .line 109
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    const-string v1, "ssh-ed25519"

    .line 111
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    .line 114
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getSshSignatureEdDsa([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSshSignatureRsa([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    .line 127
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    .line 128
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getRsaSignatureFormatId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    .line 131
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;--->getSshSignatureRsa([BI)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
