.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
.source "$AutoValue_BackupKeyringParcel.java"


# instance fields
.field private final enableAsciiArmorOutput:Z

.field private final exportPublic:Z

.field private final exportSecret:Z

.field private final extraHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isEncrypted:Z

.field private final masterKeyIds:[J

.field private final outputUri:Landroid/net/Uri;


# direct methods
.method constructor <init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZZZZ",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 28
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;-><init>()V

    .line 29
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    .line 30
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportSecret:Z

    .line 31
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportPublic:Z

    .line 32
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->isEncrypted:Z

    .line 33
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->enableAsciiArmorOutput:Z

    .line 34
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    .line 35
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;---><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 95
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 96
    check-cast v5, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    .line 97
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportSecret:Z

    .line 98
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExportSecret()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportPublic:Z

    .line 99
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExportPublic()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->isEncrypted:Z

    .line 100
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getIsEncrypted()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->enableAsciiArmorOutput:Z

    .line 101
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getEnableAsciiArmorOutput()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExtraHeaders()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExtraHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEnableAsciiArmorOutput()Z
    .locals 4

    move-object/16 v1, p0

    .line 62
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->enableAsciiArmorOutput:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getEnableAsciiArmorOutput()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExportPublic()Z
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportPublic:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getExportPublic()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExportSecret()Z
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportSecret:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getExportSecret()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExtraHeaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 74
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getExtraHeaders()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIsEncrypted()Z
    .locals 4

    move-object/16 v1, p0

    .line 57
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->isEncrypted:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getIsEncrypted()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 42
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getMasterKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 68
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->getOutputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 8

    move-object/16 v5, p0

    .line 112
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 114
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportSecret:Z

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

    .line 116
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportPublic:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 118
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->isEncrypted:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 120
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->enableAsciiArmorOutput:Z

    if-eqz v2, :cond_3

    const/16 v3, 0x4cf

    :cond_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 122
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 124
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->hashCode()I"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupKeyringParcel{masterKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->masterKeyIds:[J

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exportSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportSecret:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exportPublic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->exportPublic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableAsciiArmorOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->enableAsciiArmorOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", outputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;->extraHeaders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
