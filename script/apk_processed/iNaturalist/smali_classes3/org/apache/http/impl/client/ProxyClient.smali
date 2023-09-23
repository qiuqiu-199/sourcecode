.class public Lorg/apache/http/impl/client/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# instance fields
.field private final authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connFactory:Lorg/apache/http/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionConfig:Lorg/apache/http/config/ConnectionConfig;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

.field private final proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

.field private final requestConfig:Lorg/apache/http/client/config/RequestConfig;

.field private final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/client/config/RequestConfig;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    sget-object p1, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    sget-object p2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/client/ProxyClient;->connectionConfig:Lorg/apache/http/config/ConnectionConfig;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    sget-object p3, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    :goto_2
    iput-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    .line 107
    new-instance p1, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 p2, 0x3

    new-array p2, p2, [Lorg/apache/http/HttpRequestInterceptor;

    const/4 p3, 0x0

    new-instance v0, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v0, p2, p3

    const/4 p3, 0x1

    new-instance v0, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v0, p2, p3

    const/4 p3, 0x2

    new-instance v0, Lorg/apache/http/protocol/RequestUserAgentHC4;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestUserAgentHC4;-><init>()V

    aput-object v0, p2, p3

    invoke-direct {p1, p2}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 109
    new-instance p1, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {p1}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 110
    new-instance p1, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {p1}, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    .line 111
    new-instance p1, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 112
    new-instance p1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    .line 113
    new-instance p1, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 114
    iget-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string p2, "Basic"

    new-instance p3, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;

    invoke-direct {p3}, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 115
    iget-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string p2, "Digest"

    new-instance p3, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;

    invoke-direct {p3}, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 116
    iget-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string p2, "NTLM"

    new-instance p3, Lorg/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {p3}, Lorg/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 117
    new-instance p1, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p1}, Lorg/apache/http/params/HttpParamConfig;->getConnectionConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    return-void
.end method


# virtual methods
.method public getAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    return-object v0
.end method

.method public tunnel(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Lorg/apache/http/auth/Credentials;)Ljava/net/Socket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "Proxy host"

    .line 161
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    .line 162
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Credentials"

    .line 163
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gtz v0, :cond_0

    .line 166
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 168
    :goto_0
    new-instance v1, Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v2}, Lorg/apache/http/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v9, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v10, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v4, v1

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 173
    iget-object v2, p0, Lorg/apache/http/impl/client/ProxyClient;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->connectionConfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-interface {v2, v1, v3}, Lorg/apache/http/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 175
    new-instance v9, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v9}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    .line 178
    new-instance v10, Lorg/apache/http/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {v10, v3, v0, v4}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 181
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;-><init>()V

    .line 182
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, p3}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    const-string p3, "http.target_host"

    .line 185
    invoke-interface {v9, p3, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.connection"

    .line 186
    invoke-interface {v9, p2, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.request"

    .line 187
    invoke-interface {v9, p2, v10}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.route"

    .line 188
    invoke-interface {v9, p2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.auth.proxy-scope"

    .line 189
    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    invoke-interface {v9, p2, p3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.auth.credentials-provider"

    .line 190
    invoke-interface {v9, p2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.authscheme-registry"

    .line 191
    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-interface {v9, p2, p3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "http.request-config"

    .line 192
    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-interface {v9, p2, p3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object p2, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {p2, v10, p3, v9}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 197
    :goto_1
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result p2

    if-nez p2, :cond_1

    .line 198
    new-instance p2, Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    invoke-direct {p2, p3, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 199
    invoke-interface {v2, p2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 202
    :cond_1
    iget-object p2, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    invoke-virtual {p2, v10, p3, v9}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 204
    iget-object p2, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {p2, v10, v2, v9}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 206
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    if-lt p3, v0, :cond_6

    .line 211
    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    iget-object v7, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    move-object v4, p1

    move-object v5, p2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 213
    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    iget-object v7, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    move-object v4, p1

    move-object v5, p2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 216
    iget-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {p3, p2, v9}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 218
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    .line 219
    invoke-static {p2}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    .line 221
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->close()V

    :goto_2
    const-string p2, "Proxy-Authorization"

    .line 224
    invoke-interface {v10, p2}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p3, 0x12b

    if-le p1, p3, :cond_5

    .line 238
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 240
    new-instance p3, Lorg/apache/http/entity/BufferedHttpEntityHC4;

    invoke-direct {p3, p1}, Lorg/apache/http/entity/BufferedHttpEntityHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 243
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->close()V

    .line 244
    new-instance p1, Lorg/apache/http/impl/execchain/TunnelRefusedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONNECT refused by proxy: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw p1

    .line 247
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 208
    :cond_6
    new-instance p1, Lorg/apache/http/HttpException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected response to CONNECT request: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
