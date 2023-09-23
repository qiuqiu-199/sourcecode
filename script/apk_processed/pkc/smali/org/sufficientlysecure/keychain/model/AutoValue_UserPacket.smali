.class final Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;
.super Lorg/sufficientlysecure/keychain/model/UserPacket;
.source "AutoValue_UserPacket.java"


# instance fields
.field private final attribute_data:[B

.field private final comment:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final is_primary:Z

.field private final is_revoked:Z

.field private final master_key_id:J

.field private final name:Ljava/lang/String;

.field private final rank:I

.field private final type:Ljava/lang/Long;

.field private final user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move/16 p7, p10

    move/16 p8, p11

    .line 32
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket;-><init>()V

    .line 33
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    .line 34
    iput p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->rank:I

    .line 35
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    .line 36
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    .line 37
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    .line 38
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    .line 39
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    .line 40
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    .line 41
    iput-boolean p7, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_primary:Z

    .line 42
    iput-boolean p8, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_revoked:Z

    return-void

    const-string p9, "M_InsDal"

    const-string p10, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;---><init>(JILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public attribute_data()[B
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->attribute_data()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public comment()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->comment()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public email()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 76
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->email()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/UserPacket;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 123
    check-cast v8, Lorg/sufficientlysecure/keychain/model/UserPacket;

    .line 124
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->rank:I

    .line 125
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->rank()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->type()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->type()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->user_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 128
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 129
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 130
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->comment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->comment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;

    if-eqz v3, :cond_6

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    goto :goto_5

    .line 131
    :cond_6
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->attribute_data()[B

    move-result-object v3

    :goto_5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_primary:Z

    .line 132
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->is_primary()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_revoked:Z

    .line 133
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket;->is_revoked()Z

    move-result v8

    if-ne v1, v8, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_8
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 142
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 144
    iget v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 146
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 148
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 150
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 152
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 154
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 156
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 158
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_primary:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_5

    const/16 v2, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v2, 0x4d5

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 160
    iget-boolean v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_revoked:Z

    if-eqz v1, :cond_6

    const/16 v3, 0x4cf

    :cond_6
    xor-int/2addr v0, v3

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_primary()Z
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->is_primary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_revoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 98
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_revoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->is_revoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 47
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public name()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->name()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rank()I
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->rank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserPacket{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attribute_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->attribute_data:[B

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is_primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_revoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->is_revoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public type()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->type:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->type()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public user_id()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;->user_id:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket;--->user_id()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
