.class abstract Lorg/sufficientlysecure/keychain/network/SktUri;
.super Ljava/lang/Object;
.source "SktUri.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final QRCODE_URI_FORMAT:Ljava/lang/String; = "OPGPSKT:%s/%d/%s"

.field private static final QRCODE_URI_FORMAT_SSID:Ljava/lang/String; = "OPGPSKT:%s/%d/%s/SSID:%s"


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/SktUri;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static create(Ljava/lang/String;I[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/SktUri;--->create(Ljava/lang/String;I[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static parse(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v12, p0

    const-string v0, "OPGPSKT:"

    .line 50
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "invalid scheme"

    invoke-direct {v0, v12, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ":"

    .line 54
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 56
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "invalid syntax"

    invoke-direct {v0, v12, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    .line 59
    aget-object v4, v0, v2

    .line 62
    :try_start_0
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x2

    .line 68
    :try_start_1
    aget-object v7, v0, v6

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_1
    .catch Lorg/bouncycastle/util/encoders/DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    .line 74
    :goto_0
    array-length v9, v0

    if-ge v3, v9, :cond_3

    .line 75
    aget-object v9, v0, v3

    const-string v10, ":"

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 76
    array-length v10, v9

    if-ne v10, v6, :cond_2

    const-string v10, "SSID"

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 78
    :try_start_2
    new-instance v10, Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Lorg/bouncycastle/util/encoders/DecoderException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v10

    goto :goto_1

    .line 80
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing ssid in skt uri, ignoring: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_3
    new-instance v12, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;

    invoke-direct {v12, v4, v5, v7, v8}, Lorg/sufficientlysecure/keychain/network/AutoValue_SktUri;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object v12

    .line 70
    :catch_1
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "error parsing hex psk"

    invoke-direct {v0, v12, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 64
    :catch_2
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "error parsing port"

    invoke-direct {v0, v12, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/network/SktUri;--->parse(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPresharedKey()[B
.end method

.method public abstract getWifiSsid()Ljava/lang/String;
.end method

.method toUriString()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    move-object/16 v9, p0

    .line 90
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPresharedKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getWifiSsid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getWifiSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v6, "OPGPSKT:%s/%d/%s/SSID:%s"

    const/4 v7, 0x4

    .line 96
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    aput-object v0, v7, v3

    aput-object v1, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "OPGPSKT:%s/%d/%s"

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/network/SktUri;--->toUriString()Ljava/lang/String;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
