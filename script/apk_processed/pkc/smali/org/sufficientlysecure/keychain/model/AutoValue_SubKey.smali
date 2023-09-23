.class final Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;
.super Lorg/sufficientlysecure/keychain/model/SubKey;
.source "AutoValue_SubKey.java"


# instance fields
.field private final algorithm:I

.field private final can_authenticate:Z

.field private final can_certify:Z

.field private final can_encrypt:Z

.field private final can_sign:Z

.field private final creation:J

.field private final expiry:Ljava/lang/Long;

.field private final fingerprint:[B

.field private final has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field private final is_revoked:Z

.field private final is_secure:Z

.field private final key_curve_oid:Ljava/lang/String;

.field private final key_id:J

.field private final key_size:Ljava/lang/Integer;

.field private final master_key_id:J

.field private final rank:J


# direct methods
.method constructor <init>(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V
    .locals 8

    move-object/16 v5, p0

    move-wide/16 v6, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move/16 p6, p9

    move-object/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move-object/16 p13, p16

    move/16 p14, p17

    move-wide/16 p15, p18

    move-object/16 p17, p20

    move-object v0, v5

    move-object v1, p7

    move-object/from16 v2, p13

    .line 46
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;-><init>()V

    move-wide v3, v6

    .line 47
    iput-wide v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    move-wide v3, p0

    .line 48
    iput-wide v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    move-wide v3, p2

    .line 49
    iput-wide v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    move-object v3, p4

    .line 50
    iput-object v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    move-object v3, p5

    .line 51
    iput-object v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    move v3, p6

    .line 52
    iput v3, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->algorithm:I

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null fingerprint"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    move/from16 v1, p8

    .line 57
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_certify:Z

    move/from16 v1, p9

    .line 58
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_sign:Z

    move/from16 v1, p10

    .line 59
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_encrypt:Z

    move/from16 v1, p11

    .line 60
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_authenticate:Z

    move/from16 v1, p12

    .line 61
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_revoked:Z

    if-nez v2, :cond_1

    .line 63
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null has_secret"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move/from16 v1, p14

    .line 66
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_secure:Z

    move-wide/from16 v1, p15

    .line 67
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    move-object/from16 v1, p17

    .line 68
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    return-void

    const-string p18, "M_InsDal"

    const-string p19, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;---><init>(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)V"

    invoke-static/range {p18 .. p19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public algorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 100
    iget v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->algorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->algorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public can_authenticate()Z
    .locals 4

    move-object/16 v1, p0

    .line 126
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_authenticate:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->can_authenticate()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public can_certify()Z
    .locals 4

    move-object/16 v1, p0

    .line 111
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_certify:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->can_certify()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public can_encrypt()Z
    .locals 4

    move-object/16 v1, p0

    .line 121
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_encrypt:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->can_encrypt()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public can_sign()Z
    .locals 4

    move-object/16 v1, p0

    .line 116
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_sign:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->can_sign()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public creation()J
    .locals 5

    move-object/16 v2, p0

    .line 147
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->creation()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 183
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/SubKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 184
    check-cast v8, Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 185
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    .line 186
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->rank()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    .line 187
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 188
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_size()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_size()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 189
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_curve_oid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_curve_oid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->algorithm:I

    .line 190
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->algorithm()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;

    if-eqz v3, :cond_3

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->fingerprint()[B

    move-result-object v3

    :goto_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_certify:Z

    .line 192
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_certify()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_sign:Z

    .line 193
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_sign()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_encrypt:Z

    .line 194
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_encrypt()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_authenticate:Z

    .line 195
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_authenticate()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_revoked:Z

    .line 196
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_revoked()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    .line 197
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_secure:Z

    .line 198
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_secure()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    .line 199
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->creation()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 200
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_6
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public expiry()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 153
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->expiry()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public fingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->fingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 4

    move-object/16 v1, p0

    .line 137
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 12

    move-object/16 v9, p0

    .line 209
    iget-wide v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    xor-long v5, v0, v3

    long-to-int v0, v5

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 211
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 213
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 215
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 217
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 219
    iget v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->algorithm:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 221
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 223
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_certify:Z

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 225
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_sign:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v3, 0x4d5

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 227
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_encrypt:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 229
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_authenticate:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v3, 0x4d5

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 231
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_revoked:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v3, 0x4d5

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 233
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 235
    iget-boolean v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_secure:Z

    if-eqz v3, :cond_7

    const/16 v5, 0x4cf

    :cond_7
    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    .line 237
    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    ushr-long v2, v5, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    xor-long v7, v2, v5

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 239
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v4

    :goto_7
    xor-int/2addr v0, v4

    return v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->hashCode()I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_revoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 131
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_revoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->is_revoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_secure()Z
    .locals 4

    move-object/16 v1, p0

    .line 142
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_secure:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->is_secure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_curve_oid()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 95
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->key_curve_oid()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 83
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public key_size()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 89
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->key_size()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 73
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rank()J
    .locals 5

    move-object/16 v2, p0

    .line 78
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->rank()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubKey{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->rank:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key_curve_oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->key_curve_oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->algorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->fingerprint:[B

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", can_certify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_certify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", can_sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_sign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", can_encrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_encrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", can_authenticate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->can_authenticate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_revoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_revoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", has_secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->has_secret:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is_secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->is_secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", creation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->creation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;->expiry:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
