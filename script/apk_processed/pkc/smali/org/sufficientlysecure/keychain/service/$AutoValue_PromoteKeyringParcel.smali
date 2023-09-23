.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;
.source "$AutoValue_PromoteKeyringParcel.java"


# instance fields
.field private final cardAid:[B

.field private final fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final masterKeyId:J


# direct methods
.method constructor <init>(J[BLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 19
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;-><init>()V

    .line 20
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    .line 21
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    .line 22
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;---><init>(J[BLjava/util/List;)V"

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

    .line 58
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 59
    check-cast v8, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    .line 60
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;

    if-eqz v3, :cond_1

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getCardAid()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getFingerprints()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->getFingerprints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCardAid()[B
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->getCardAid()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->getFingerprints()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 27
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 71
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 73
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 75
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PromoteKeyringParcel{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cardAid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->cardAid:[B

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;->fingerprints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
