.class abstract Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;
.super Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
.source "$AutoValue_CryptoInputParcel.java"


# instance fields
.field private final cachePassphrase:Z

.field private final cryptoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field private final passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private final passphraseSubkey:Ljava/lang/Long;

.field private final signatureTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "Ljava/lang/Long;",
            "Z",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 29
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;-><init>()V

    .line 30
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    .line 31
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 32
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    .line 33
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cachePassphrase:Z

    .line 34
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    if-nez p3, :cond_0

    .line 36
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null cryptoData"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cryptoData:Ljava/util/Map;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;---><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 94
    check-cast v5, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 95
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    if-nez v1, :cond_1

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v1, :cond_2

    .line 96
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 97
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cachePassphrase:Z

    .line 98
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    if-nez v1, :cond_4

    .line 99
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cryptoData:Ljava/util/Map;

    .line 100
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_6
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCryptoData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 73
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cryptoData:Ljava/util/Map;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->getCryptoData()Ljava/util/Map;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
    .locals 4

    move-object/16 v1, p0

    .line 67
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4

    move-object/16 v1, p0

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphraseSubkey()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 56
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->getPassphraseSubkey()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureTime()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->getSignatureTime()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 109
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 111
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 113
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 115
    iget-boolean v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cachePassphrase:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v3, 0x4d5

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 117
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 119
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cryptoData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isCachePassphrase()Z
    .locals 4

    move-object/16 v1, p0

    .line 61
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cachePassphrase:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->isCachePassphrase()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoInputParcel{signatureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->signatureTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", passphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", passphraseSubkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->passphraseSubkey:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cachePassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cachePassphrase:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", parcelableProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;->cryptoData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
