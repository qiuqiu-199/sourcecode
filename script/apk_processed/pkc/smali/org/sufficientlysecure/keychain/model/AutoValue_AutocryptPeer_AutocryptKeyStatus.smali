.class final Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;
.super Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;
.source "AutoValue_AutocryptPeer_AutocryptKeyStatus.java"


# instance fields
.field private final autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

.field private final gossip_key_is_expired_int:J

.field private final gossip_key_is_revoked_int:Ljava/lang/Boolean;

.field private final gossip_key_is_verified_int:J

.field private final key_is_expired_int:J

.field private final key_is_revoked_int:Ljava/lang/Boolean;

.field private final key_is_verified_int:J


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/model/AutocryptPeer;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-wide/16 p5, p8

    move-wide/16 p7, p10

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;-><init>()V

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null autocryptPeer"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    .line 32
    iput-wide v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    .line 33
    iput-wide p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    .line 34
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    .line 35
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    .line 36
    iput-wide p5, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    .line 37
    iput-wide p7, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    return-void

    const-string p9, "M_InsDal"

    const-string p10, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;---><init>(Lorg/sufficientlysecure/keychain/model/AutocryptPeer;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)V"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    move-result-object v0

    return-object v0
.end method

.method public autocryptPeer()Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->autocryptPeer()Lorg/sufficientlysecure/keychain/model/AutocryptPeer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 96
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 97
    check-cast v8, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;

    .line 98
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    .line 99
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_expired_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    .line 100
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_expired_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    .line 103
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_verified_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    .line 104
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_verified_int()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_key_is_expired_int()J
    .locals 5

    move-object/16 v2, p0

    .line 53
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->gossip_key_is_expired_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_key_is_revoked_int()Ljava/lang/Boolean;
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->gossip_key_is_revoked_int()Ljava/lang/Boolean;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_key_is_verified_int()J
    .locals 5

    move-object/16 v2, p0

    .line 75
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->gossip_key_is_verified_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 12

    move-object/16 v9, p0

    .line 113
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 115
    iget-wide v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    xor-long v7, v2, v5

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 117
    iget-wide v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    ushr-long/2addr v2, v4

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    xor-long v7, v2, v5

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 119
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 121
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 123
    iget-wide v2, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    ushr-long/2addr v2, v4

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    xor-long v7, v2, v5

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 125
    iget-wide v1, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    ushr-long/2addr v1, v4

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    xor-long v5, v1, v3

    long-to-int v1, v5

    xor-int/2addr v0, v1

    return v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->hashCode()I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_is_expired_int()J
    .locals 5

    move-object/16 v2, p0

    .line 48
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->key_is_expired_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_is_revoked_int()Ljava/lang/Boolean;
    .locals 4

    move-object/16 v1, p0

    .line 59
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->key_is_revoked_int()Ljava/lang/Boolean;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_is_verified_int()J
    .locals 5

    move-object/16 v2, p0

    .line 70
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->key_is_verified_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutocryptKeyStatus{autocryptPeer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->autocryptPeer:Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key_is_expired_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_expired_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_key_is_expired_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_expired_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key_is_revoked_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_key_is_revoked_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_revoked_int:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key_is_verified_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->key_is_verified_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_key_is_verified_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;->gossip_key_is_verified_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer_AutocryptKeyStatus;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
