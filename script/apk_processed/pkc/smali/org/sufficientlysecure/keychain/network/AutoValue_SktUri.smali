.class final Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;
.super Lorg/sufficientlysecure/keychain/network/SktUri;
.source "AutoValue_SktUri.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final presharedKey:[B

.field private final wifiSsid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 20
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/network/SktUri;-><init>()V

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null host"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->host:Ljava/lang/String;

    .line 25
    iput v2, v0, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->port:I

    if-nez p0, :cond_1

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null presharedKey"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_1
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    .line 30
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;---><init>(Ljava/lang/String;I[BLjava/lang/String;)V"

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

    .line 70
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/network/SktUri;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 71
    check-cast v5, Lorg/sufficientlysecure/keychain/network/SktUri;

    .line 72
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->host:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v4, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->port:I

    .line 73
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPort()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPresharedKey()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 75
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->getWifiSsid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->getWifiSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 35
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->host:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->getHost()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPort()I
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget v0, v1, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->port:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->getPort()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPresharedKey()[B
    .locals 4

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->getPresharedKey()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getWifiSsid()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->getWifiSsid()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 84
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 86
    iget v2, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->port:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 88
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 90
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SktUri{host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presharedKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->presharedKey:[B

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifiSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;->wifiSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
