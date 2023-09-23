.class public Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;
.super Ljava/lang/Object;
.source "OkHttpKeybaseClient.java"

# interfaces
.implements Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getKeybaseBaseUrl()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    const-string v0, "https://api.keybase.io/"

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;--->getKeybaseBaseUrl()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUrlResponse(Ljava/net/URL;Ljava/net/Proxy;Z)Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    if-eqz v4, :cond_0

    .line 39
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;

    move-result-object v4

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getSimpleClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 44
    :goto_0
    new-instance p0, Lokhttv5/Request$Builder;

    invoke-direct {p0}, Lokhttv5/Request$Builder;-><init>()V

    .line 45
    invoke-virtual {p0, v3}, Lokhttv5/Request$Builder;->url(Ljava/net/URL;)Lokhttv5/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 46
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 47
    new-instance v4, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttv5/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;-><init>(Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;--->getUrlResponse(Ljava/net/URL;Ljava/net/Proxy;Z)Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
