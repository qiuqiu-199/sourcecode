.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
.source "$AutoValue_UploadKeyringParcel.java"


# instance fields
.field private final keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private final masterKeyId:Ljava/lang/Long;

.field private final uncachedKeyringBytes:[B


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 19
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;-><init>()V

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null keyserver"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 24
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    .line 25
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;---><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 61
    check-cast v5, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    .line 62
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;

    if-eqz v3, :cond_2

    check-cast v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getUncachedKeyringBytes()[B

    move-result-object v5

    :goto_1
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 30
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 36
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->getMasterKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUncachedKeyringBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->getUncachedKeyringBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 73
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 75
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 77
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadKeyringParcel{keyserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uncachedKeyringBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;->uncachedKeyringBytes:[B

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
