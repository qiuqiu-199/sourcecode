.class public Lorg/apache/http/client/methods/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;,
        Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private config:Lorg/apache/http/client/config/RequestConfig;

.field private entity:Lorg/apache/http/HttpEntity;

.field private headergroup:Lorg/apache/http/message/HeaderGroup;

.field private method:Ljava/lang/String;

.field private parameters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-void
.end method

.method public static copy(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP request"

    .line 119
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    invoke-direct {v0}, Lorg/apache/http/client/methods/RequestBuilder;-><init>()V

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/RequestBuilder;->doCopy(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    .line 86
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 87
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 107
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private doCopy(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 127
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    .line 128
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->version:Lorg/apache/http/ProtocolVersion;

    .line 129
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 130
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    .line 134
    :goto_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 138
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->setHeaders([Lorg/apache/http/Header;)V

    .line 139
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 140
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    goto :goto_1

    .line 142
    :cond_3
    iput-object v1, p0, Lorg/apache/http/client/methods/RequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    .line 144
    :goto_1
    instance-of v0, p1, Lorg/apache/http/client/methods/Configurable;

    if-eqz v0, :cond_4

    .line 145
    check-cast p1, Lorg/apache/http/client/methods/Configurable;

    invoke-interface {p1}, Lorg/apache/http/client/methods/Configurable;->getConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->config:Lorg/apache/http/client/config/RequestConfig;

    goto :goto_2

    .line 147
    :cond_4
    iput-object v1, p0, Lorg/apache/http/client/methods/RequestBuilder;->config:Lorg/apache/http/client/config/RequestConfig;

    .line 149
    :goto_2
    iput-object v1, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static get()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 91
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static head()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "HEAD"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static options()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 115
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 99
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 103
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace()Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 111
    new-instance v0, Lorg/apache/http/client/methods/RequestBuilder;

    const-string v1, "TRACE"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public addHeader(Lorg/apache/http/Header;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    .line 269
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/RequestBuilder;->addParameter(Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "Name value pair"

    .line 260
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 3

    .line 273
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 274
    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/RequestBuilder;->addParameter(Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/RequestBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .line 290
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 291
    :goto_0
    iget-object v1, p0, Lorg/apache/http/client/methods/RequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    .line 292
    iget-object v2, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    const-string v2, "POST"

    .line 293
    iget-object v3, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PUT"

    iget-object v3, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    :cond_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntityHC4;

    iget-object v2, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    const-string v3, "ISO-8859-1"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntityHC4;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    goto :goto_1

    .line 298
    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/http/client/utils/URIBuilder;

    invoke-direct {v2, v0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lorg/apache/http/client/utils/URIBuilder;->addParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 305
    new-instance v1, Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;

    iget-object v2, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 307
    :cond_4
    new-instance v2, Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;

    iget-object v3, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v2

    .line 311
    :goto_2
    iget-object v2, p0, Lorg/apache/http/client/methods/RequestBuilder;->version:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V

    .line 312
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->setURI(Ljava/net/URI;)V

    .line 313
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->setHeaders([Lorg/apache/http/Header;)V

    .line 316
    :cond_5
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->config:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->setConfig(Lorg/apache/http/client/config/RequestConfig;)V

    return-object v1
.end method

.method public getConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->config:Lorg/apache/http/client/config/RequestConfig;

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->version:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->removeHeader(Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    if-eqz p1, :cond_3

    .line 217
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->iterator()Lorg/apache/http/HeaderIterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->remove()V

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public setConfig(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->config:Lorg/apache/http/client/config/RequestConfig;

    return-object p0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->updateHeader(Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public setHeader(Lorg/apache/http/Header;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->updateHeader(Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public setVersion(Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/client/methods/RequestBuilder;
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder;->version:Lorg/apache/http/ProtocolVersion;

    return-object p0
.end method
