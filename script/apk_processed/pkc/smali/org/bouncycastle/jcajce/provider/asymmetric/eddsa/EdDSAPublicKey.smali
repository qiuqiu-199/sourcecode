.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;
.super Ljava/lang/Object;
.source "EdDSAPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x3

.field private static final OID_BYTE:I = 0x8

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x22f31e1b1b346bL


# instance fields
.field private final A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private final Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final edDsaSpec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->decode([B)[B

    move-result-object p1

    const-string v1, "Ed25519"

    .line 62
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;)V

    .line 61
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->getA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->getNegativeA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAPublicKeySpec;->getParams()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->edDsaSpec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method private static decode([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/16 v0, 0x2c

    const/16 v1, 0x8

    .line 170
    :try_start_0
    aget-byte v2, p0, v1

    const/16 v3, 0x64

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x3

    if-ne v2, v3, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    if-ne v2, v1, :cond_c

    .line 176
    aget-byte v1, p0, v6

    if-ne v1, v5, :cond_1

    const/16 v0, 0x2e

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 187
    :goto_0
    array-length v7, p0

    if-eq v7, v0, :cond_2

    .line 188
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "invalid key spec length"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v7, 0x0

    .line 195
    aget-byte v8, p0, v7

    const/16 v9, 0x30

    if-ne v8, v9, :cond_b

    const/4 v8, 0x1

    aget-byte v10, p0, v8

    const/4 v11, 0x2

    sub-int/2addr v0, v11

    if-ne v10, v0, :cond_b

    aget-byte v0, p0, v11

    if-ne v0, v9, :cond_b

    const/4 v0, 0x4

    aget-byte v9, p0, v6

    if-ne v9, v1, :cond_b

    aget-byte v0, p0, v0

    const/4 v9, 0x6

    if-ne v0, v9, :cond_b

    aget-byte v0, p0, v4

    if-ne v0, v6, :cond_b

    aget-byte v0, p0, v9

    const/16 v9, 0x2b

    if-ne v0, v9, :cond_b

    aget-byte v0, p0, v5

    const/16 v9, 0x65

    if-eq v0, v9, :cond_3

    goto :goto_4

    :cond_3
    const/16 v0, 0x9

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-ne v2, v3, :cond_5

    .line 208
    aget-byte v0, p0, v0

    if-ne v0, v10, :cond_4

    aget-byte v0, p0, v10

    if-ne v0, v8, :cond_4

    const/16 v0, 0xc

    aget-byte v1, p0, v9

    if-eq v1, v8, :cond_8

    .line 211
    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ne v1, v5, :cond_8

    .line 224
    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_7

    aget-byte v0, p0, v10

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v0, 0xb

    goto :goto_2

    .line 226
    :cond_7
    :goto_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 230
    aget-byte v0, p0, v0

    if-ne v0, v6, :cond_a

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v0, 0x20

    .line 235
    new-array v2, v0, [B

    .line 236
    invoke-static {p0, v1, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 233
    :cond_a
    :goto_3
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_b
    :goto_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_c
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 239
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 269
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 271
    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;

    .line 272
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->edDsaSpec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    .line 273
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->getParams()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->A:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->edDsaSpec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    const-string v1, "Ed25519"

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    array-length v0, v0

    const/16 v1, 0xc

    add-int/2addr v0, v1

    .line 119
    new-array v2, v0, [B

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 122
    aput-byte v3, v2, v4

    const/4 v5, 0x2

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    const/4 v6, 0x1

    .line 123
    aput-byte v0, v2, v6

    .line 126
    aput-byte v3, v2, v5

    const/4 v0, 0x4

    const/4 v3, 0x5

    const/4 v5, 0x3

    .line 127
    aput-byte v3, v2, v5

    const/4 v7, 0x6

    .line 130
    aput-byte v7, v2, v0

    .line 131
    aput-byte v5, v2, v3

    const/4 v0, 0x7

    const/16 v3, 0x2b

    .line 132
    aput-byte v3, v2, v7

    const/16 v3, 0x8

    const/16 v7, 0x65

    .line 133
    aput-byte v7, v2, v0

    const/16 v0, 0x9

    const/16 v7, 0x70

    .line 134
    aput-byte v7, v2, v3

    const/16 v3, 0xa

    .line 137
    aput-byte v5, v2, v0

    const/16 v0, 0xb

    .line 138
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    array-length v5, v5

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 139
    aput-byte v4, v2, v0

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getNegativeA()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Aneg:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->edDsaSpec:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSAPublicKey;->Abyte:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
