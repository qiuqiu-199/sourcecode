.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;
.source "$AutoValue_DeleteKeyringParcel.java"


# instance fields
.field private final deleteSecret:Z

.field private final masterKeyIds:[J


# direct methods
.method constructor <init>([JZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 15
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;-><init>()V

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null masterKeyIds"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    .line 20
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->deleteSecret:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;---><init>([JZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 48
    check-cast v5, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    .line 49
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->getMasterKeyIds()[J

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->deleteSecret:Z

    .line 50
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->isDeleteSecret()Z

    move-result v5

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 26
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;--->getMasterKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 5

    move-object/16 v2, p0

    .line 59
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 61
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->deleteSecret:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;--->hashCode()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isDeleteSecret()Z
    .locals 4

    move-object/16 v1, p0

    .line 31
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->deleteSecret:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;--->isDeleteSecret()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteKeyringParcel{masterKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->masterKeyIds:[J

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;->deleteSecret:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_DeleteKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
