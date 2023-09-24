.class final Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;
.source "AutoValue_IdentityDao_AutocryptPeerInfo.java"


# instance fields
.field private final appIcon:Landroid/graphics/drawable/Drawable;

.field private final autocryptPeerIntent:Landroid/content/Intent;

.field private final identity:Ljava/lang/String;

.field private final masterKeyId:J

.field private final packageName:Ljava/lang/String;

.field private final primary:Z

.field private final rank:I

.field private final userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

.field private final verified:Z


# direct methods
.method constructor <init>(JIZZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Landroid/content/Intent;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;-><init>()V

    .line 32
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    .line 33
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->rank:I

    .line 34
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->verified:Z

    .line 35
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->primary:Z

    if-nez p3, :cond_0

    .line 37
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null identity"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->identity:Ljava/lang/String;

    if-nez p4, :cond_1

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null packageName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->packageName:Ljava/lang/String;

    .line 44
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    .line 46
    iput-object p7, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    return-void

    const-string p8, "M_InsDal"

    const-string p9, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;---><init>(JIZZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Landroid/content/Intent;)V"

    invoke-static/range {p8 .. p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 118
    check-cast v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    .line 119
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->rank:I

    .line 120
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getRank()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->verified:Z

    .line 121
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->isVerified()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->primary:Z

    .line 122
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->isPrimary()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->identity:Ljava/lang/String;

    .line 123
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->packageName:Ljava/lang/String;

    .line 124
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    if-nez v1, :cond_2

    .line 126
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 127
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAutocryptPeerIntent()Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAutocryptPeerIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getAppIcon()Landroid/graphics/drawable/Drawable;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAutocryptPeerIntent()Landroid/content/Intent;
    .locals 4

    move-object/16 v1, p0

    .line 94
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getAutocryptPeerIntent()Landroid/content/Intent;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 71
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->identity:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getIdentity()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 51
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 76
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->packageName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getPackageName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRank()I
    .locals 4

    move-object/16 v1, p0

    .line 56
    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->rank:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getRank()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 136
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 138
    iget v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->rank:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 140
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->verified:Z

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

    .line 142
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->primary:Z

    if-eqz v2, :cond_1

    const/16 v3, 0x4cf

    :cond_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 144
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->identity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 146
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 148
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 150
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 152
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPrimary()Z
    .locals 4

    move-object/16 v1, p0

    .line 66
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->primary:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->isPrimary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isVerified()Z
    .locals 4

    move-object/16 v1, p0

    .line 61
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->verified:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->isVerified()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutocryptPeerInfo{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->primary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userIdInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->userIdInfo:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autocryptPeerIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;->autocryptPeerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
