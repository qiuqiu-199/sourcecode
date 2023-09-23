.class final Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;
.super Lorg/sufficientlysecure/keychain/model/KeyMetadata;
.source "AutoValue_KeyMetadata.java"


# instance fields
.field private final last_updated:Ljava/util/Date;

.field private final master_key_id:Ljava/lang/Long;

.field private final seen_on_keyservers:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 18
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;-><init>()V

    .line 19
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    .line 20
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    .line 21
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;---><init>(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/model/KeyMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 57
    check-cast v5, Lorg/sufficientlysecure/keychain/model/KeyMetadata;

    .line 58
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->master_key_id()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->master_key_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->last_updated()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->last_updated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 60
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->seen_on_keyservers()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->seen_on_keyservers()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 69
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 71
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 73
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public last_updated()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 33
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->last_updated()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 27
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->master_key_id()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public seen_on_keyservers()Ljava/lang/Boolean;
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->seen_on_keyservers()Ljava/lang/Boolean;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyMetadata{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->master_key_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last_updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->last_updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seen_on_keyservers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;->seen_on_keyservers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyMetadata;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
