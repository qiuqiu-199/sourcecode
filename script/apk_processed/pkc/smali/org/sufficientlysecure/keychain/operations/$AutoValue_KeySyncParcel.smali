.class abstract Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;
.super Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;
.source "$AutoValue_KeySyncParcel.java"


# instance fields
.field private final refreshAll:Z


# direct methods
.method constructor <init>(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 12
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;-><init>()V

    .line 13
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;->refreshAll:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;---><init>(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x1

    if-ne v4, v3, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, v4, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 34
    check-cast v4, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;

    .line 35
    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;->refreshAll:Z

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;->getRefreshAll()Z

    move-result v4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRefreshAll()Z
    .locals 4

    move-object/16 v1, p0

    .line 18
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;->refreshAll:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;--->getRefreshAll()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 5

    move-object/16 v2, p0

    .line 44
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;->refreshAll:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;--->hashCode()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeySyncParcel{refreshAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;->refreshAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
