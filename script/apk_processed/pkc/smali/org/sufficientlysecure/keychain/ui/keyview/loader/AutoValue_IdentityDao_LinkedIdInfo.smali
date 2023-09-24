.class final Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
.source "AutoValue_IdentityDao_LinkedIdInfo.java"


# instance fields
.field private final linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

.field private final masterKeyId:J

.field private final primary:Z

.field private final rank:I

.field private final verified:Z


# direct methods
.method constructor <init>(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;-><init>()V

    .line 22
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    .line 23
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->rank:I

    .line 24
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->verified:Z

    .line 25
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->primary:Z

    if-nez p3, :cond_0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null linkedAttribute"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;---><init>(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 74
    check-cast v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    .line 75
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->rank:I

    .line 76
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getRank()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->verified:Z

    .line 77
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->isVerified()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->primary:Z

    .line 78
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->isPrimary()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    .line 79
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;
    .locals 4

    move-object/16 v1, p0

    .line 54
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 34
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRank()I
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->getRank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 88
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 90
    iget v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 92
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->verified:Z

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

    .line 94
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->primary:Z

    if-eqz v2, :cond_1

    const/16 v3, 0x4cf

    :cond_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 96
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPrimary()Z
    .locals 4

    move-object/16 v1, p0

    .line 49
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->isPrimary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isVerified()Z
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->verified:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->isVerified()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkedIdInfo{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linkedAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;->linkedAttribute:Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
