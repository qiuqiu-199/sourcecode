.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;
.source "$AutoValue_RevokeKeyringParcel.java"


# instance fields
.field private final keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private final masterKeyId:J

.field private final shouldUpload:Z


# direct methods
.method constructor <init>(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move/16 p0, p3

    move-object/16 p1, p4

    .line 18
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;-><init>()V

    .line 19
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    .line 20
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->shouldUpload:Z

    .line 21
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;---><init>(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

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

    .line 54
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 55
    check-cast v8, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    .line 56
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->getMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->shouldUpload:Z

    .line 57
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->isShouldUpload()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 37
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 26
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 67
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 69
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->shouldUpload:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 71
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isShouldUpload()Z
    .locals 4

    move-object/16 v1, p0

    .line 31
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->shouldUpload:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->isShouldUpload()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RevokeKeyringParcel{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->masterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->shouldUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/$AutoValue_RevokeKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
