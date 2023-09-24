.class final Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;
.super Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;
.source "AutoValue_SaveKeyringParcel_SubkeyAdd.java"


# instance fields
.field private final algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field private final curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

.field private final expiry:Ljava/lang/Long;

.field private final flags:I

.field private final keySize:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;-><init>()V

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null algorithm"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    .line 26
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    .line 27
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    .line 28
    iput p1, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->flags:I

    .line 29
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;---><init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)V"

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

    .line 76
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 77
    check-cast v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 78
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    if-nez v1, :cond_2

    .line 80
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->flags:I

    .line 81
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 82
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

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

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;
    .locals 4

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExpiry()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 57
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->getExpiry()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFlags()I
    .locals 4

    move-object/16 v1, p0

    .line 51
    iget v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->flags:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->getFlags()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeySize()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->getKeySize()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 91
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 93
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 95
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 97
    iget v2, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->flags:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 99
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubkeyAdd{algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->algorithm:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->keySize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->curve:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;->expiry:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
