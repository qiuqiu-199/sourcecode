.class public Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;
.super Ljava/lang/Object;
.source "OkHttpClientFactory.java"


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 51
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;--->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;Z)Lokhttp3/OkHttpClient;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 59
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 61
    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v5, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v4, 0x7530

    .line 67
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    const-wide/32 v1, 0xafc8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v4, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1388

    .line 70
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    const-wide/16 v1, 0x61a8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v4, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 76
    :goto_0
    new-instance v4, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;-><init>(Ljava/net/URL;)V

    const-string v5, "https"

    .line 77
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 78
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->isPinAvailable()Z

    move-result v5

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 80
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->pinCertificate(Lokhttp3/OkHttpClient$Builder;)V

    .line 83
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;--->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;Z)Lokhttp3/OkHttpClient;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getClientPinnedIfAvailableWithRedirects(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 55
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;--->getClientPinnedIfAvailableWithRedirects(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSimpleClient()Lokhttp3/OkHttpClient;
    .locals 7

    .line 32
    sget-object v0, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x61a8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->client:Lokhttp3/OkHttpClient;

    .line 38
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->client:Lokhttp3/OkHttpClient;

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;--->getSimpleClient()Lokhttp3/OkHttpClient;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSimpleClientPinned(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient;
    .locals 7

    move-object/16 v4, p0

    .line 42
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    .line 43
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x61a8

    .line 44
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;--->getSimpleClientPinned(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
