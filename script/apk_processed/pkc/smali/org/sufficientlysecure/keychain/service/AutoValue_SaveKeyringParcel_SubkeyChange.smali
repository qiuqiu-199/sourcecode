.class final Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;
.super Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
.source "AutoValue_SaveKeyringParcel_SubkeyChange.java"


# instance fields
.field private final dummyStrip:Z

.field private final expiry:Ljava/lang/Long;

.field private final flags:Ljava/lang/Integer;

.field private final moveKeyToSecurityToken:Z

.field private final recertify:Z

.field private final securityTokenSerialNo:[B

.field private final subKeyId:J


# direct methods
.method constructor <init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move-object/16 p5, p8

    .line 26
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;-><init>()V

    .line 27
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    .line 28
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    .line 29
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    .line 30
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->recertify:Z

    .line 31
    iput-boolean p3, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->dummyStrip:Z

    .line 32
    iput-boolean p4, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->moveKeyToSecurityToken:Z

    .line 33
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;---><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V"

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

    .line 93
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 94
    check-cast v8, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 95
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getFlags()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 97
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->recertify:Z

    .line 98
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getRecertify()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->dummyStrip:Z

    .line 99
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->moveKeyToSecurityToken:Z

    .line 100
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    if-eqz v3, :cond_3

    check-cast v8, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSecurityTokenSerialNo()[B

    move-result-object v8

    :goto_2
    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDummyStrip()Z
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->dummyStrip:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getDummyStrip()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExpiry()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getExpiry()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFlags()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getFlags()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMoveKeyToSecurityToken()Z
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->moveKeyToSecurityToken:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getMoveKeyToSecurityToken()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRecertify()Z
    .locals 4

    move-object/16 v1, p0

    .line 55
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->recertify:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getRecertify()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenSerialNo()[B
    .locals 4

    move-object/16 v1, p0

    .line 72
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getSecurityTokenSerialNo()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 38
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->getSubKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 110
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 112
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 114
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 116
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->recertify:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 118
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->dummyStrip:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v2, 0x4d5

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 120
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->moveKeyToSecurityToken:Z

    if-eqz v2, :cond_4

    const/16 v3, 0x4cf

    :cond_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 122
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubkeyChange{subKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->subKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->expiry:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recertify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->recertify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dummyStrip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->dummyStrip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", moveKeyToSecurityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->moveKeyToSecurityToken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", securityTokenSerialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;->securityTokenSerialNo:[B

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
