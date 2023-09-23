.class abstract Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;
.super Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
.source "$AutoValue_Preferences_CloudSearchPrefs.java"


# instance fields
.field private final facebookEnabled:Z

.field private final keybaseEnabled:Z

.field private final keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private final keyserverEnabled:Z

.field private final webKeyDirectoryEnabled:Z


# direct methods
.method constructor <init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    .line 22
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;-><init>()V

    .line 23
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserverEnabled:Z

    .line 24
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keybaseEnabled:Z

    .line 25
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->facebookEnabled:Z

    .line 26
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->webKeyDirectoryEnabled:Z

    .line 27
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;---><init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 73
    check-cast v5, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    .line 74
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserverEnabled:Z

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isKeyserverEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keybaseEnabled:Z

    .line 75
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isKeybaseEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->facebookEnabled:Z

    .line 76
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isFacebookEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->webKeyDirectoryEnabled:Z

    .line 77
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isWebKeyDirectoryEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 53
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 8

    move-object/16 v5, p0

    .line 87
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserverEnabled:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    .line 89
    iget-boolean v4, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keybaseEnabled:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 91
    iget-boolean v4, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->facebookEnabled:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 93
    iget-boolean v4, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->webKeyDirectoryEnabled:Z

    if-eqz v4, :cond_3

    const/16 v1, 0x4cf

    :cond_3
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 95
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->hashCode()I"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isFacebookEnabled()Z
    .locals 4

    move-object/16 v1, p0

    .line 42
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->facebookEnabled:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->isFacebookEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeybaseEnabled()Z
    .locals 4

    move-object/16 v1, p0

    .line 37
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keybaseEnabled:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->isKeybaseEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeyserverEnabled()Z
    .locals 4

    move-object/16 v1, p0

    .line 32
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserverEnabled:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->isKeyserverEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isWebKeyDirectoryEnabled()Z
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->webKeyDirectoryEnabled:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->isWebKeyDirectoryEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudSearchPrefs{keyserverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserverEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keybaseEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keybaseEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", facebookEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->facebookEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", webKeyDirectoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->webKeyDirectoryEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;->keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
