.class public Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;
.super Ljava/lang/Object;
.source "HkpKeyserverClient.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;
    }
.end annotation


# static fields
.field private static final INFO_LINE:Ljava/util/regex/Pattern;

.field private static final PUB_KEY_LINE:Ljava/util/regex/Pattern;

.field private static final UID_LINE:Ljava/util/regex/Pattern;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "^info:1:([0-9]*)\n"

    const/4 v1, 0x2

    .line 57
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->INFO_LINE:Ljava/util/regex/Pattern;

    const-string v0, "(uid:([^:\n]*)(?::([0-9]*)(?::([0-9]*)(?::(((?=(r(?!(.?r))|d(?!(.?d))|e(?!(.?e))))[rde]){0,3}))?)?)?\n)"

    .line 84
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UID_LINE:Ljava/util/regex/Pattern;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(pub:([0-9a-fA-F]+)(?::([0-9]*)(?::([0-9]*)(?::([0-9]*)(?::([0-9]*)(?::((?:(?=(?:r(?!(.?r))|d(?!(.?d))|e(?!(.?e))))[rde]){0,3}))?)?)?)?)?\n)("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UID_LINE:Ljava/util/regex/Pattern;

    .line 132
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->PUB_KEY_LINE:Ljava/util/regex/Pattern;

    const-string v0, "utf-8"

    .line 137
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 148
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;---><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;
    .locals 4

    move-object/16 v1, p0

    .line 144
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;-><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getHttpUrl(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lokhttp3/HttpUrl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 380
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrlURI()Ljava/net/URI;

    move-result-object v0

    .line 381
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnionURI()Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnionURI()Ljava/net/URI;

    move-result-object v0

    .line 385
    :cond_0
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v0, "pks"

    .line 386
    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->getHttpUrl(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lokhttp3/HttpUrl;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getResponseBodyAsUtf8(Lokhttp3/Response;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 423
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-nez v4, :cond_0

    .line 425
    new-instance v4, Ljava/io/IOException;

    const-string v0, "Response from keyserver was empty"

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    sget-object v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    if-nez v0, :cond_2

    .line 431
    sget-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UTF_8:Ljava/nio/charset/Charset;

    .line 433
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 435
    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v4

    sget-object v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    return-object v1

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->getResponseBodyAsUtf8(Lokhttp3/Response;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private query(Lokhttp3/HttpUrl;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 392
    :try_start_0
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 394
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 395
    invoke-virtual {v1, v5}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 396
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 399
    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    .line 400
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 403
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->getResponseBodyAsUtf8(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 408
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-direct {v1, v5, v0}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    const-string v0, "IOException at HkpKeyserver"

    const/4 v1, 0x0

    .line 411
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v0, v2, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Using proxy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    :goto_0
    invoke-virtual {v5}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "generic"

    .line 415
    :goto_1
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v2, "Network error (%s) for \'%s\'. Check your Internet connection! %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    const/4 v5, 0x1

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 417
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v5, 0x2

    aput-object v6, v3, v5

    .line 415
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->query(Lokhttp3/HttpUrl;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x0

    .line 342
    :try_start_0
    invoke-direct {v4, v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->getHttpUrl(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "add"

    .line 343
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 346
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v3, "keytext"

    .line 347
    invoke-virtual {v2, v3, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 348
    invoke-virtual {v5}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v5

    .line 350
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 351
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 352
    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 353
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 356
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 357
    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    .line 358
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 360
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->getResponseBodyAsUtf8(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v6

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding key with URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v1, v0, [Ljava/lang/Object;

    .line 362
    invoke-static {v6, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 367
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v5

    const-string v6, "Unsupported keyserver URI"

    .line 374
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;-><init>()V

    throw v5

    :catch_1
    move-exception v5

    const-string v6, "IOException"

    .line 371
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;-><init>()V

    throw v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x0

    .line 309
    :try_start_0
    invoke-direct {v4, v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->getHttpUrl(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "lookup"

    .line 310
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "op"

    const-string v3, "get"

    .line 311
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "options"

    const-string v3, "mr"

    .line 312
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "search"

    .line 313
    invoke-virtual {v1, v2, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 314
    invoke-virtual {v5}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v5

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyserver get: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using Proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-direct {v4, v5, v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->query(Lokhttp3/HttpUrl;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    .line 329
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v6, "data is null"

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 332
    :cond_0
    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_PUBLIC_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 333
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 334
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 336
    :cond_1
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v6, "data is null"

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v5

    const-string v6, "Failed to get key at HkpKeyserver"

    .line 322
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->getCode()I

    move-result v5

    const/16 v6, 0x194

    if-ne v5, v6, :cond_2

    .line 324
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException;

    const-string v6, "not found"

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    :cond_2
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    const-string v6, "not found"

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    :catch_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unsupported keyserver URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    move-object/16 v14, p2

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 158
    new-instance v13, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;-><init>()V

    throw v13

    :cond_0
    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-direct {v12, v14}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->getHttpUrl(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    const-string v4, "lookup"

    .line 164
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    const-string v4, "op"

    const-string v5, "index"

    .line 165
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    const-string v4, "options"

    const-string v5, "mr"

    .line 166
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    const-string v4, "search"

    .line 167
    invoke-virtual {v3, v4, v13}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyserver search: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " using Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-direct {v12, v3, v14}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->query(Lokhttp3/HttpUrl;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError; {:try_start_0 .. :try_end_0} :catch_4

    .line 197
    sget-object v3, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->INFO_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 199
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " public key(s)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "Server using non-standard hkp"

    .line 202
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    sget-object v3, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->PUB_KEY_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 206
    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 207
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;-><init>()V

    .line 208
    invoke-virtual {v3, v13}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setQuery(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 212
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x28

    const/16 v9, 0x10

    if-ne v7, v8, :cond_2

    .line 214
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintHexFingerprint(Ljava/lang/String;)[B

    move-result-object v7

    .line 215
    invoke-virtual {v3, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFingerprint([B)V

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    .line 217
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 216
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyIdHex(Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_b

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyIdHex(Ljava/lang/String;)V

    :goto_2
    const/4 v6, -0x1

    const/4 v7, 0x4

    .line 229
    :try_start_1
    invoke-virtual {v14, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 230
    invoke-virtual {v14, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 231
    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setBitStrength(I)V

    .line 234
    :cond_3
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 235
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setAlgorithm(Ljava/lang/String;)V

    :cond_4
    const/4 v6, 0x5

    .line 240
    invoke-virtual {v14, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-wide/16 v8, 0x3e8

    if-nez v7, :cond_5

    .line 241
    invoke-virtual {v14, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 242
    new-instance v10, Ljava/util/GregorianCalendar;

    const-string v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    mul-long v6, v6, v8

    .line 243
    invoke-virtual {v10, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 244
    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    const/4 v6, 0x7

    .line 253
    :try_start_2
    invoke-virtual {v14, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "r"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v3, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setRevoked(Z)V

    .line 254
    invoke-virtual {v14, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v7, 0x6

    .line 258
    invoke-virtual {v14, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 259
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v10, "UTC"

    .line 260
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 261
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    mul-long v6, v6, v8

    .line 262
    invoke-virtual {v11, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 263
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v6, v11}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-ltz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 265
    :cond_7
    :goto_3
    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setExpired(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 272
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0xb

    .line 273
    invoke-virtual {v14, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 274
    sget-object v8, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->UID_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 275
    :goto_4
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 276
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%"

    .line 277
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "%%"

    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "%%"

    const-string v10, "%25"

    .line 281
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_8
    :try_start_3
    const-string v9, "UTF8"

    .line 285
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v9

    goto :goto_5

    :catch_0
    move-exception v8

    const-string v9, "User ID encoding broken"

    .line 289
    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 294
    :catch_1
    :cond_9
    :goto_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 296
    :cond_a
    invoke-virtual {v3, v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUserIds(Ljava/util/ArrayList;)V

    .line 297
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setPrimaryUserId(Ljava/lang/String;)V

    .line 298
    iget-object v4, v12, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->hkpKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    .line 300
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v3

    const-string v4, "Check for revocation or expiry failed."

    .line 267
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_3
    move-exception v3

    const-string v4, "Conversation for bit size, algorithm, or creation date failed."

    .line 247
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    const-string v3, "Wrong length for fingerprint/long key id."

    .line 222
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    return-object v0

    :catch_4
    move-exception v13

    const-string v14, ""

    .line 177
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returned error data: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->getData()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->getData()Ljava/lang/String;

    move-result-object v14

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 181
    :cond_d
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->access$000(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;)I

    move-result v1

    const/16 v2, 0x1f5

    if-ne v1, v2, :cond_e

    .line 184
    new-instance v13, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotImplementedException;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotImplementedException;-><init>()V

    throw v13

    .line 185
    :cond_e
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->access$000(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;)I

    move-result v13

    const/16 v1, 0x194

    if-eq v13, v1, :cond_12

    const-string v13, "no keys found"

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    const-string v13, "too many"

    .line 187
    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 188
    new-instance v13, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$TooManyResponsesException;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$TooManyResponsesException;-><init>()V

    throw v13

    :cond_10
    const-string v13, "insufficient"

    .line 189
    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 190
    new-instance v13, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;-><init>()V

    throw v13

    .line 193
    :cond_11
    new-instance v13, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortOrTooManyResponsesException;

    invoke-direct {v13}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortOrTooManyResponsesException;-><init>()V

    throw v13

    :cond_12
    :goto_6
    return-object v0

    .line 174
    :catch_5
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Unsupported keyserver URI"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;--->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
