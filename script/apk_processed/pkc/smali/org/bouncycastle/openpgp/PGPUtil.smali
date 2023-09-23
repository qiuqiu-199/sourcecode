.class public Lorg/bouncycastle/openpgp/PGPUtil;
.super Ljava/lang/Object;
.source "PGPUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;
    }
.end annotation


# static fields
.field private static defProvider:Ljava/lang/String; = "BC"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static dsaSigToMpi([B)[Lorg/bouncycastle/bcpg/MPInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 65
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [Lorg/bouncycastle/bcpg/MPInteger;

    .line 77
    new-instance v4, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v4, v3, v0

    .line 78
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v0, v3, v2

    return-object v3

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception encoding signature"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    const/16 v0, 0x3c

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 243
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object p0

    .line 254
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/openpgp/PGPUtil;->isPossiblyBase64(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 258
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 261
    :cond_2
    new-array v2, v0, [B

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eq v1, v0, :cond_5

    .line 266
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_5

    .line 268
    invoke-static {v5}, Lorg/bouncycastle/openpgp/PGPUtil;->isPossiblyBase64(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 270
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 272
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_3
    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 277
    aput-byte v5, v2, v4

    move v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x4

    if-ge v1, v0, :cond_6

    .line 290
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_6
    const/16 v0, 0x8

    .line 296
    new-array v0, v0, [B

    .line 298
    array-length v1, v0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v0

    .line 305
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 307
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 310
    :cond_7
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static isPossiblyBase64(I)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeRandomKey(ILjava/security/SecureRandom;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0xc0

    const/16 v1, 0x100

    const/16 v2, 0x80

    packed-switch p0, :pswitch_data_0

    .line 141
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

    :pswitch_0
    const/16 v2, 0x100

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x40

    const/16 v2, 0x40

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xc0

    :goto_0
    :pswitch_3
    add-int/lit8 v2, v2, 0x7

    .line 144
    div-int/lit8 v2, v2, 0x8

    new-array p0, v2, [B

    .line 146
    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
