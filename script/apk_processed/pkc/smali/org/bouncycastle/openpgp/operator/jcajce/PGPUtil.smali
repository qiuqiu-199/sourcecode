.class public Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;
.super Ljava/lang/Object;
.source "PGPUtil.java"


# direct methods
.method static decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static getDigestName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 50
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown hash algorithm tag in getDigestName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string p0, "SHA224"

    return-object p0

    :pswitch_2
    const-string p0, "SHA512"

    return-object p0

    :pswitch_3
    const-string p0, "SHA384"

    return-object p0

    :pswitch_4
    const-string p0, "SHA256"

    return-object p0

    :pswitch_5
    const-string p0, "TIGER"

    return-object p0

    :pswitch_6
    const-string p0, "MD2"

    return-object p0

    :pswitch_7
    const-string p0, "RIPEMD160"

    return-object p0

    :pswitch_8
    const-string p0, "SHA1"

    return-object p0

    :pswitch_9
    const-string p0, "MD5"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static getSymmetricCipherName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown symmetric algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "Camellia"

    return-object p0

    :pswitch_1
    const-string p0, "Camellia"

    return-object p0

    :pswitch_2
    const-string p0, "Camellia"

    return-object p0

    :pswitch_3
    const-string p0, "Twofish"

    return-object p0

    :pswitch_4
    const-string p0, "AES"

    return-object p0

    :pswitch_5
    const-string p0, "AES"

    return-object p0

    :pswitch_6
    const-string p0, "AES"

    return-object p0

    :pswitch_7
    const-string p0, "DES"

    return-object p0

    :pswitch_8
    const-string p0, "SAFER"

    return-object p0

    :pswitch_9
    const-string p0, "Blowfish"

    return-object p0

    :pswitch_a
    const-string p0, "CAST5"

    return-object p0

    :pswitch_b
    const-string p0, "DESEDE"

    return-object p0

    :pswitch_c
    const-string p0, "IDEA"

    return-object p0

    :pswitch_d
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSymmetricCipherSize(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 156
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid symmetric algorithm for this method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x20

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 0

    .line 144
    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0
.end method

.method public static makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown symmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_0
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
