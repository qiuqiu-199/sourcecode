.class final Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
.source "AutoValue_IdentityDao_UserIdInfo.java"


# instance fields
.field private final comment:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final masterKeyId:J

.field private final name:Ljava/lang/String;

.field private final primary:Z

.field private final rank:I

.field private final verified:Z


# direct methods
.method constructor <init>(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    .line 25
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;-><init>()V

    .line 26
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    .line 27
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->rank:I

    .line 28
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->verified:Z

    .line 29
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->primary:Z

    .line 30
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    .line 31
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    .line 32
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;---><init>(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 92
    check-cast v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    .line 93
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->rank:I

    .line 94
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getRank()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->verified:Z

    .line 95
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isVerified()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->primary:Z

    .line 96
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isPrimary()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 99
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getComment()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getComment()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->getComment()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEmail()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->getEmail()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 37
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->getName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRank()I
    .locals 4

    move-object/16 v1, p0

    .line 42
    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->getRank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 108
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 110
    iget v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 112
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->verified:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 114
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->primary:Z

    if-eqz v2, :cond_1

    const/16 v3, 0x4cf

    :cond_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 116
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 118
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 120
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPrimary()Z
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->isPrimary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isVerified()Z
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->verified:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->isVerified()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserIdInfo{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
