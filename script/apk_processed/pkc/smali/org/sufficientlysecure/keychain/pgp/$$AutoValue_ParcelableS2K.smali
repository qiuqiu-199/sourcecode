.class abstract Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;
.super Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;
.source "$$AutoValue_ParcelableS2K.java"


# instance fields
.field private final encryptionAlgorithm:I

.field private final s2kHashAlgo:I

.field private final s2kIV:[B

.field private final s2kItCount:J

.field private final s2kType:I


# direct methods
.method constructor <init>(IIIJ[B)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;-><init>()V

    .line 22
    iput v1, v0, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->encryptionAlgorithm:I

    .line 23
    iput v2, v0, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kType:I

    .line 24
    iput p0, v0, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kHashAlgo:I

    .line 25
    iput-wide p1, v0, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    if-nez p3, :cond_0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null s2kIV"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;---><init>(IIIJ[B)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 75
    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;

    .line 76
    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->encryptionAlgorithm:I

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->getEncryptionAlgorithm()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kType:I

    .line 77
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->getS2kType()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kHashAlgo:I

    .line 78
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->getS2kHashAlgo()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    .line 79
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->getS2kItCount()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;

    if-eqz v3, :cond_1

    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->getS2kIV()[B

    move-result-object v8

    :goto_0
    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getEncryptionAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->encryptionAlgorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->getEncryptionAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getS2kHashAlgo()I
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kHashAlgo:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->getS2kHashAlgo()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getS2kIV()[B
    .locals 4

    move-object/16 v1, p0

    .line 55
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->getS2kIV()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getS2kItCount()J
    .locals 5

    move-object/16 v2, p0

    .line 49
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->getS2kItCount()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getS2kType()I
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kType:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->getS2kType()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 11

    move-object/16 v8, p0

    .line 89
    iget v0, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->encryptionAlgorithm:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 91
    iget v2, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kType:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 93
    iget v2, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kHashAlgo:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 95
    iget-wide v2, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    xor-long v6, v2, v4

    long-to-int v2, v6

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 97
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->hashCode()I"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParcelableS2K{encryptionAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->encryptionAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s2kType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s2kHashAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kHashAlgo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s2kItCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kItCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", s2kIV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->s2kIV:[B

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
