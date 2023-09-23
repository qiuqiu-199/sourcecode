.class final Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;
.super Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;
.source "AutoValue_Certification_CertDetails.java"


# instance fields
.field private final creation:J

.field private final masterKeyId:J

.field private final signerMasterKeyId:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-wide/16 p0, p3

    move-wide/16 p2, p5

    .line 16
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;-><init>()V

    .line 17
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    .line 18
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    .line 19
    iput-wide p2, v0, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;---><init>(JJJ)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public creation()J
    .locals 5

    move-object/16 v2, p0

    .line 34
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->creation()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    check-cast v8, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;

    .line 53
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;->masterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    .line 54
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;->signerMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    .line 55
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;->creation()J

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

    const-string p0, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 12

    move-object/16 v9, p0

    .line 64
    iget-wide v0, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    xor-long v5, v0, v3

    long-to-int v0, v5

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 66
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    ushr-long/2addr v3, v2

    iget-wide v5, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 68
    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    ushr-long v1, v3, v2

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    xor-long v5, v1, v3

    long-to-int v1, v5

    xor-int/2addr v0, v1

    return v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->hashCode()I"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public masterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 24
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->masterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public signerMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 29
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->signerMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertDetails{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", signerMasterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->signerMasterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;->creation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/model/AutoValue_Certification_CertDetails;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
