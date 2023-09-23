.class final Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;
.super Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;
.source "AutoValue_UserPacket_UserAttribute.java"


# instance fields
.field private final attribute_data:[B

.field private final is_primary:Z

.field private final is_revoked:Z

.field private final master_key_id:J

.field private final rank:I

.field private final verified_int:Ljava/lang/Long;


# direct methods
.method constructor <init>(JI[BZZLjava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-object/16 p4, p7

    .line 24
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;-><init>()V

    .line 25
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    .line 26
    iput p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->rank:I

    .line 27
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    .line 28
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_primary:Z

    .line 29
    iput-boolean p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_revoked:Z

    .line 30
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;---><init>(JI[BZZLjava/lang/Long;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public attribute_data()[B
    .locals 4

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->attribute_data()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 83
    check-cast v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;

    .line 84
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->rank:I

    .line 85
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->rank()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;

    if-eqz v3, :cond_1

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->attribute_data()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_primary:Z

    .line 87
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->is_primary()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_revoked:Z

    .line 88
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->is_revoked()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->verified_int()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->verified_int()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 98
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 100
    iget v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 102
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 104
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_primary:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 106
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_revoked:Z

    if-eqz v2, :cond_1

    const/16 v3, 0x4cf

    :cond_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 108
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_primary()Z
    .locals 4

    move-object/16 v1, p0

    .line 51
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->is_primary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_revoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 56
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_revoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->is_revoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 35
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rank()I
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->rank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAttribute{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attribute_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->attribute_data:[B

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is_primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_revoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->is_revoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verified_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verified_int()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 62
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;->verified_int:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserAttribute;--->verified_int()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
