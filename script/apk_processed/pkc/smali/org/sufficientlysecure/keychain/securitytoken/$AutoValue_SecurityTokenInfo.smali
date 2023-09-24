.class abstract Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;
.super Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
.source "$AutoValue_SecurityTokenInfo.java"


# instance fields
.field private final getAid:[B

.field private final getFingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field private final getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

.field private final getUrl:Ljava/lang/String;

.field private final getUserId:Ljava/lang/String;

.field private final getVerifyAdminRetries:I

.field private final getVerifyRetries:I

.field private final hasLifeCycleManagement:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;",
            "Ljava/util/List<",
            "[B>;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move/16 p4, p7

    move/16 p5, p8

    move/16 p6, p9

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;-><init>()V

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getTransportType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    if-nez v2, :cond_1

    .line 37
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getTokenType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    if-nez p0, :cond_2

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getFingerprints"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getFingerprints:Ljava/util/List;

    .line 44
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    .line 45
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    .line 46
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    .line 47
    iput p4, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyRetries:I

    .line 48
    iput p5, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyAdminRetries:I

    .line 49
    iput-boolean p6, v0, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->hasLifeCycleManagement:Z

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V"

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

    .line 121
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 122
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 123
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    .line 124
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getFingerprints:Ljava/util/List;

    .line 125
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getAid()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 128
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyRetries:I

    .line 129
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyRetries()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyAdminRetries:I

    .line 130
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyAdminRetries()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->hasLifeCycleManagement:Z

    .line 131
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->hasLifeCycleManagement()Z

    move-result v5

    if-ne v1, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAid()[B
    .locals 4

    move-object/16 v1, p0

    .line 71
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getAid()[B"

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

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getFingerprints:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getFingerprints()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 4

    move-object/16 v1, p0

    .line 59
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
    .locals 4

    move-object/16 v1, p0

    .line 54
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 83
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getUrl()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUserId()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 77
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getUserId()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerifyAdminRetries()I
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyAdminRetries:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getVerifyAdminRetries()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerifyRetries()I
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyRetries:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->getVerifyRetries()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasLifeCycleManagement()Z
    .locals 4

    move-object/16 v1, p0

    .line 98
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->hasLifeCycleManagement:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->hasLifeCycleManagement()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 140
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 142
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 144
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getFingerprints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 146
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 148
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 150
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 152
    iget v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyRetries:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 154
    iget v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyAdminRetries:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 156
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->hasLifeCycleManagement:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    xor-int/2addr v0, v1

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityTokenInfo{getTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTransportType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getTokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getTokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getFingerprints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getFingerprints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getAid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getAid:[B

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVerifyRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getVerifyAdminRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->getVerifyAdminRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasLifeCycleManagement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;->hasLifeCycleManagement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
