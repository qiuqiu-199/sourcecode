.class final Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;
.super Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;
.source "AutoValue_UserPacket_UidStatus.java"


# instance fields
.field private final candidates:J

.field private final email:Ljava/lang/String;

.field private final key_status_int:Ljava/lang/Long;

.field private final master_key_id:J

.field private final user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move-wide/16 p3, p6

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;-><init>()V

    .line 22
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    .line 23
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    .line 24
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    .line 25
    iput-wide p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    .line 26
    iput-wide p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;---><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JJ)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public candidates()J
    .locals 5

    move-object/16 v2, p0

    .line 54
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->candidates()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public email()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 32
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->email()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 74
    check-cast v8, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;

    .line 75
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->key_status_int()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->key_status_int()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 77
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->user_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    .line 78
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    .line 79
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->candidates()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 12

    move-object/16 v9, p0

    .line 88
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 90
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 92
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 94
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    const/16 v1, 0x20

    ushr-long/2addr v3, v1

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 96
    iget-wide v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    ushr-long v1, v2, v1

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    xor-long v5, v1, v3

    long-to-int v1, v5

    xor-int/2addr v0, v1

    return v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->hashCode()I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_status_int()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->key_status_int()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 49
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStatus{email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key_status_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->key_status_int:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", candidates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->candidates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public user_id()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;->user_id:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_UserPacket_UidStatus;--->user_id()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
