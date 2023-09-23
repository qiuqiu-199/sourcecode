.class final Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;
.super Lorg/sufficientlysecure/keychain/model/KeySignature;
.source "AutoValue_KeySignature.java"


# instance fields
.field private final master_key_id:J

.field private final signer_key_id:J


# direct methods
.method constructor <init>(JJ)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-wide/16 p0, p3

    .line 14
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/KeySignature;-><init>()V

    .line 15
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    .line 16
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;---><init>(JJ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 42
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/KeySignature;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast v8, Lorg/sufficientlysecure/keychain/model/KeySignature;

    .line 44
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/KeySignature;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    .line 45
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/KeySignature;->signer_key_id()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 10

    move-object/16 v7, p0

    .line 54
    iget-wide v0, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    xor-long v5, v0, v3

    long-to-int v0, v5

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 56
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    ushr-long v1, v3, v2

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    xor-long v5, v1, v3

    long-to-int v1, v5

    xor-int/2addr v0, v1

    return v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;--->hashCode()I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 21
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public signer_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 26
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;--->signer_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeySignature{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", signer_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;->signer_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
