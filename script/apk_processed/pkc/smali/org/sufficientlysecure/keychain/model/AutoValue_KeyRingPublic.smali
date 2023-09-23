.class final Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;
.super Lorg/sufficientlysecure/keychain/model/KeyRingPublic;
.source "AutoValue_KeyRingPublic.java"


# instance fields
.field private final key_ring_data:[B

.field private final master_key_id:J


# direct methods
.method constructor <init>(J[B)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    .line 16
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;-><init>()V

    .line 17
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    .line 18
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;---><init>(J[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 46
    check-cast v8, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    .line 47
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;

    if-eqz v3, :cond_1

    check-cast v8, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->key_ring_data()[B

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

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 57
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 59
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_ring_data()[B
    .locals 4

    move-object/16 v1, p0

    .line 29
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;--->key_ring_data()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 23
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyRingPublic{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key_ring_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;->key_ring_data:[B

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
