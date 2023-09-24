.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
.source "$AutoValue_ImportKeyringParcel.java"


# instance fields
.field private final forceReinsert:Z

.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation
.end field

.field private final keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private final skipSave:Z


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "ZZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 22
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;-><init>()V

    .line 23
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    .line 24
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 25
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->skipSave:Z

    .line 26
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->forceReinsert:Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;---><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 67
    check-cast v5, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 68
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_2

    .line 69
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->skipSave:Z

    .line 70
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->isSkipSave()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->forceReinsert:Z

    .line 71
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->isForceReinsert()Z

    move-result v5

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 32
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->getKeyList()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 8

    move-object/16 v5, p0

    .line 80
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 82
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 84
    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->skipSave:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 86
    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->forceReinsert:Z

    if-eqz v1, :cond_3

    const/16 v3, 0x4cf

    :cond_3
    xor-int/2addr v0, v3

    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->hashCode()I"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isForceReinsert()Z
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->forceReinsert:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->isForceReinsert()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSkipSave()Z
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->skipSave:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->isSkipSave()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImportKeyringParcel{keyList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipSave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->skipSave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceReinsert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;->forceReinsert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
