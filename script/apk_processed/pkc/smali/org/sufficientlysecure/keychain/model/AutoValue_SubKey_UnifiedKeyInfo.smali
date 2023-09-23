.class final Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;
.super Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
.source "AutoValue_SubKey_UnifiedKeyInfo.java"


# instance fields
.field private final MIN_user_packets_rank:J

.field private final autocrypt_package_names_csv:Ljava/lang/String;

.field private final can_certify:Z

.field private final comment:Ljava/lang/String;

.field private final creation:J

.field private final email:Ljava/lang/String;

.field private final expiry:Ljava/lang/Long;

.field private final fingerprint:[B

.field private final has_any_secret_int:J

.field private final has_auth_key_int:J

.field private final has_duplicate_int:J

.field private final has_encrypt_key_int:J

.field private final has_sign_key_int:J

.field private final is_revoked:Z

.field private final is_secure:Z

.field private final master_key_id:J

.field private final name:Ljava/lang/String;

.field private final user_id:Ljava/lang/String;

.field private final user_id_list:Ljava/lang/String;

.field private final verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;


# direct methods
.method constructor <init>(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object/16 v4, p0

    move-wide/16 v5, p1

    move-object/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-wide/16 p7, p10

    move-object/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move-object/16 p13, p16

    move-wide/16 p14, p17

    move-wide/16 p16, p19

    move-wide/16 p18, p21

    move-wide/16 p20, p23

    move-wide/16 p22, p25

    move-object/16 p24, p27

    move-object/16 p25, p28

    move-object v0, v4

    move-object v1, p0

    .line 54
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;-><init>()V

    move-wide v2, v5

    .line 55
    iput-wide v2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null fingerprint"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    move-wide v1, p1

    .line 60
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    move-object v1, p3

    .line 61
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    move-object v1, p4

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    move-object v1, p5

    .line 63
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    move-object v1, p6

    .line 64
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    move-wide v1, p7

    .line 65
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    move-object/from16 v1, p9

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    move/from16 v1, p10

    .line 67
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_revoked:Z

    move/from16 v1, p11

    .line 68
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_secure:Z

    move/from16 v1, p12

    .line 69
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->can_certify:Z

    move-object/from16 v1, p13

    .line 70
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-wide/from16 v1, p14

    .line 71
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    move-wide/from16 v1, p16

    .line 72
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    move-wide/from16 v1, p18

    .line 73
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    move-wide/from16 v1, p20

    .line 74
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    move-wide/from16 v1, p22

    .line 75
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    move-object/from16 v1, p24

    .line 76
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 77
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    return-void

    const-string p26, "M_InsDal"

    const-string p27, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;---><init>(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p26 .. p27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public MIN_user_packets_rank()J
    .locals 5

    move-object/16 v2, p0

    .line 93
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->MIN_user_packets_rank()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public autocrypt_package_names_csv()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 180
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->autocrypt_package_names_csv()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public can_certify()Z
    .locals 4

    move-object/16 v1, p0

    .line 143
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->can_certify:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->can_certify()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public comment()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->comment()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public creation()J
    .locals 5

    move-object/16 v2, p0

    .line 122
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->creation()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public email()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 111
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->email()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 220
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 221
    check-cast v8, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 222
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;

    if-eqz v3, :cond_1

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    .line 224
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->MIN_user_packets_rank()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 225
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 226
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 227
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 228
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->comment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_5
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->comment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_4
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    .line 229
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->creation()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 230
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->expiry()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_6
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->expiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_5
    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_revoked:Z

    .line 231
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v3

    if-ne v1, v3, :cond_a

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_secure:Z

    .line 232
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v3

    if-ne v1, v3, :cond_a

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->can_certify:Z

    .line 233
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->can_certify()Z

    move-result v3

    if-ne v1, v3, :cond_a

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-nez v1, :cond_7

    .line 234
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_7
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    .line 235
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_duplicate_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    .line 236
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    .line 237
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_encrypt_key_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    .line 238
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_sign_key_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    .line 239
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_auth_key_int()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 240
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocrypt_package_names_csv()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_8
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocrypt_package_names_csv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_7
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 241
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id_list()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_8

    :cond_9
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id_list()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_b
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public expiry()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 128
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->expiry()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public fingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->fingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_any_secret_int()J
    .locals 5

    move-object/16 v2, p0

    .line 159
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->has_any_secret_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_auth_key_int()J
    .locals 5

    move-object/16 v2, p0

    .line 174
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->has_auth_key_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_duplicate_int()J
    .locals 5

    move-object/16 v2, p0

    .line 154
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->has_duplicate_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_encrypt_key_int()J
    .locals 5

    move-object/16 v2, p0

    .line 164
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->has_encrypt_key_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_sign_key_int()J
    .locals 5

    move-object/16 v2, p0

    .line 169
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->has_sign_key_int()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 14

    move-object/16 v11, p0

    .line 250
    iget-wide v0, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    xor-long v5, v0, v3

    long-to-int v0, v5

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 252
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 254
    iget-wide v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    ushr-long/2addr v3, v2

    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 256
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 258
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 260
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 262
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 264
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    ushr-long/2addr v5, v2

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    xor-long v9, v5, v7

    long-to-int v3, v9

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 266
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 268
    iget-boolean v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_revoked:Z

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v3, :cond_5

    const/16 v3, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v3, 0x4d5

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 270
    iget-boolean v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_secure:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v3, 0x4d5

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 272
    iget-boolean v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->can_certify:Z

    if-eqz v3, :cond_7

    const/16 v5, 0x4cf

    :cond_7
    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    .line 274
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 276
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    ushr-long/2addr v5, v2

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    xor-long v9, v5, v7

    long-to-int v3, v9

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 278
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    ushr-long/2addr v5, v2

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    xor-long v9, v5, v7

    long-to-int v3, v9

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 280
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    ushr-long/2addr v5, v2

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    xor-long v9, v5, v7

    long-to-int v3, v9

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 282
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    ushr-long/2addr v5, v2

    iget-wide v7, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    xor-long v9, v5, v7

    long-to-int v3, v9

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 284
    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    ushr-long v2, v5, v2

    iget-wide v5, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    xor-long v7, v2, v5

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 286
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 288
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_9
    xor-int/2addr v0, v4

    return v0

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->hashCode()I"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_revoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 133
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_revoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->is_revoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_secure()Z
    .locals 4

    move-object/16 v1, p0

    .line 138
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_secure:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->is_secure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public master_key_id()J
    .locals 5

    move-object/16 v2, p0

    .line 82
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->master_key_id()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public name()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 105
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->name()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnifiedKeyInfo{master_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->master_key_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->fingerprint:[B

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MIN_user_packets_rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->MIN_user_packets_rank:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->creation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->expiry:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is_revoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_revoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->is_secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", can_certify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->can_certify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", has_duplicate_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_duplicate_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", has_any_secret_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_any_secret_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", has_encrypt_key_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_encrypt_key_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", has_sign_key_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_sign_key_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", has_auth_key_int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->has_auth_key_int:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autocrypt_package_names_csv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->autocrypt_package_names_csv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public user_id()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->user_id()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public user_id_list()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 186
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->user_id_list:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->user_id_list()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 4

    move-object/16 v1, p0

    .line 149
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;->verified:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutoValue_SubKey_UnifiedKeyInfo;--->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
