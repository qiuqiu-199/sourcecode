.class final Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;
.super Lorg/sufficientlysecure/keychain/model/Certification;
.source "AutoValue_Certification.java"


# instance fields
.field private final creation:J

.field private final data:[B

.field private final key_id_certifier:J

.field private final master_key_id:J

.field private final rank:J

.field private final type:J

.field private final verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;


# direct methods
.method constructor <init>(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-wide/16 p4, p7

    move-object/16 p6, p9

    move-wide/16 p7, p10

    move-object/16 p9, p12

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/Certification;-><init>()V

    .line 28
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    .line 29
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    .line 30
    iput-wide p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    .line 31
    iput-wide p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    if-nez p6, :cond_0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null verified"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    .line 36
    iput-wide p7, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    if-nez p9, :cond_1

    .line 38
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    iput-object p9, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    return-void

    const-string p10, "M_InsDal"

    const-string p11, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;---><init>(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)V"

    invoke-static/range {p10 .. p11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public creation()J
    .locals 5

    move-object/16 v2, p0

    .line 71
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->creation()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public data()[B
    .locals 4

    move-object/16 v1, p0

    .line 77
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->data()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/Certification;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 99
    check-cast v8, Lorg/sufficientlysecure/keychain/model/Certification;

    .line 100
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    .line 101
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->rank()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    .line 102
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->key_id_certifier()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    .line 103
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->type()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    .line 104
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    .line 105
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->creation()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;

    if-eqz v3, :cond_1

    check-cast v8, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification;->data()[B

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

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 12

    move-object/16 v9, p0

    .line 115
    iget-wide v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    xor-long v5, v0, v3

    long-to-int v0, v5

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 117
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 119
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 121
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 123
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 125
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    ushr-long v2, v3, v2

    iget-wide v4, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    xor-long v6, v2, v4

    long-to-int v2, v6

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 127
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->hashCode()I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_id_certifier()J
    .locals 5

    move-object/16 v2, p0

    .line 55
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->key_id_certifier()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 45
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rank()J
    .locals 5

    move-object/16 v2, p0

    .line 50
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->rank()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certification{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->rank:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key_id_certifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->key_id_certifier:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->creation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->data:[B

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public type()J
    .locals 5

    move-object/16 v2, p0

    .line 60
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->type:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->type()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 4

    move-object/16 v1, p0

    .line 66
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification;--->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
