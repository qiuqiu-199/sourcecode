.class final Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;
.super Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
.source "AutoValue_AutocryptPeer.java"


# instance fields
.field private final gossip_last_seen_key:Ljava/util/Date;

.field private final gossip_master_key_id:Ljava/lang/Long;

.field private final gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

.field private final identifier:Ljava/lang/String;

.field private final is_mutual:Z

.field private final last_seen:Ljava/util/Date;

.field private final last_seen_key:Ljava/util/Date;

.field private final master_key_id:Ljava/lang/Long;

.field private final package_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;-><init>()V

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null package_name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->package_name:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 37
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null identifier"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->identifier:Ljava/lang/String;

    .line 40
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    .line 41
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    .line 42
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->is_mutual:Z

    .line 43
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    .line 44
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    .line 45
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    .line 46
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;---><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)V"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 123
    check-cast v5, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    .line 124
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->package_name:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->package_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->identifier:Ljava/lang/String;

    .line 125
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->identifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen_key()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->last_seen_key()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->is_mutual:Z

    .line 128
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->is_mutual()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 129
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->master_key_id()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->master_key_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 130
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_master_key_id()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_master_key_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    if-nez v1, :cond_5

    .line 131
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_last_seen_key()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_last_seen_key()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    if-nez v1, :cond_6

    .line 132
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_origin()Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_6
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_origin()Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_8
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_last_seen_key()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->gossip_last_seen_key()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_master_key_id()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 87
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->gossip_master_key_id()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public gossip_origin()Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->gossip_origin()Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 141
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 143
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->identifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 145
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 147
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 149
    iget-boolean v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->is_mutual:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 151
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 153
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 155
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 157
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public identifier()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->identifier:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->identifier()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_mutual()Z
    .locals 4

    move-object/16 v1, p0

    .line 75
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->is_mutual:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->is_mutual()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public last_seen()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->last_seen()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public last_seen_key()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->last_seen_key()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 81
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->master_key_id()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public package_name()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->package_name:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->package_name()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutocryptPeer{package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last_seen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last_seen_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->last_seen_key:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is_mutual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->is_mutual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_master_key_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_last_seen_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_last_seen_key:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gossip_origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;->gossip_origin:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_AutocryptPeer;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
