.class abstract Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;
.super Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;
.source "$AutoValue_SecurityTokenChangePinParcel.java"


# instance fields
.field private final adminPin:Ljava/lang/String;

.field private final newPin:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 14
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;-><init>()V

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null adminPin"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->adminPin:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null newPin"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->newPin:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;---><init>(Ljava/lang/String;Ljava/lang/String;)V"

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

    .line 48
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast v5, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    .line 50
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->adminPin:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;->getAdminPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->newPin:Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;->getNewPin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAdminPin()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 27
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->adminPin:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;--->getAdminPin()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNewPin()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 32
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->newPin:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;--->getNewPin()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 5

    move-object/16 v2, p0

    .line 60
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->adminPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 62
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->newPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;--->hashCode()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityTokenChangePinParcel{adminPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->adminPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;->newPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_SecurityTokenChangePinParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
