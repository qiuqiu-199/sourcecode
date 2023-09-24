.class final Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;
.super Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;
.source "AutoValue_UserPacket_UserId.java"


# instance fields
.field private final comment:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final is_primary:Z

.field private final is_revoked:Z

.field private final master_key_id:J

.field private final name:Ljava/lang/String;

.field private final rank:I

.field private final user_id:Ljava/lang/String;

.field private final verified_int:Ljava/lang/Long;


# direct methods
.method constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    .line 29
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;-><init>()V

    .line 30
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    .line 31
    iput p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->rank:I

    .line 32
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    .line 33
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    .line 34
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    .line 35
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    .line 36
    iput-boolean p5, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_primary:Z

    .line 37
    iput-boolean p6, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_revoked:Z

    .line 38
    iput-object p7, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    return-void

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;---><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;)V"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public comment()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 72
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->comment()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public email()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 66
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->email()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 111
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 112
    check-cast v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    .line 113
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->rank:I

    .line 114
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->rank()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 116
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 117
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 118
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->comment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->comment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_primary:Z

    .line 119
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_primary()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_revoked:Z

    .line 120
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_revoked()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 121
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->verified_int()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_5
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->verified_int()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_7
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 130
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 132
    iget v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 134
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 136
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 138
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 140
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 142
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_primary:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v2, :cond_4

    const/16 v2, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v2, 0x4d5

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 144
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_revoked:Z

    if-eqz v2, :cond_5

    const/16 v4, 0x4cf

    :cond_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 146
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_primary()Z
    .locals 4

    move-object/16 v1, p0

    .line 77
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->is_primary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_revoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_revoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->is_revoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 43
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public name()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->name()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rank()I
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->rank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserId{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is_primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_revoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->is_revoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verified_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public user_id()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 54
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->user_id:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->user_id()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verified_int()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;->verified_int:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UserId;--->verified_int()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
