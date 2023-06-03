.class public Lorg/apache/http/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP request executor"

    .line 92
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection manager"

    .line 93
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection reuse strategy"

    .line 94
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection keep alive strategy"

    .line 95
    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v2, Lorg/apache/http/protocol/RequestContentHC4;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestContentHC4;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestUserAgentHC4;

    const-string v3, "Apache-HttpClient"

    const-string v4, "org.apache.http.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/http/util/VersionInfoHC4;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/RequestUserAgentHC4;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 102
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 103
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 104
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 105
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    return-void
.end method

.method static rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-static {p1, v0, v1}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p1}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 120
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Lorg/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "HTTP route"

    .line 132
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    .line 133
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 134
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-static {p2, p1}, Lorg/apache/http/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 140
    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-interface {p4, v0}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 142
    new-instance p1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v2

    .line 152
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v3

    if-lez v3, :cond_2

    int-to-long v3, v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    .line 153
    :goto_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 165
    new-instance v3, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    if-eqz p4, :cond_4

    .line 168
    :try_start_1
    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 172
    invoke-interface {p4, v3}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->close()V

    .line 170
    new-instance p1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :catch_2
    move-exception p1

    goto/16 :goto_9

    :catch_3
    move-exception p1

    goto/16 :goto_a

    .line 176
    :cond_4
    :goto_2
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result p4

    if-nez p4, :cond_6

    .line 177
    invoke-virtual {v2}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result p4

    .line 178
    iget-object v4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez p4, :cond_5

    goto :goto_3

    :cond_5
    const/4 p4, 0x0

    :goto_3
    invoke-interface {v4, v0, p1, p4, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 183
    iget-object p4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {p4, v0, p1, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 185
    :cond_6
    invoke-virtual {v2}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result p4

    if-ltz p4, :cond_7

    .line 187
    invoke-interface {v0, p4}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    .line 191
    :cond_7
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p4

    .line 192
    instance-of v2, p4, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_8

    .line 193
    check-cast p4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p4

    .line 194
    invoke-virtual {p4}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 195
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, v4, v5, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_9

    .line 199
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    :cond_9
    const-string p4, "http.target_host"

    .line 202
    invoke-virtual {p3, p4, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "http.request"

    .line 203
    invoke-virtual {p3, p4, p2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "http.connection"

    .line 204
    invoke-virtual {p3, p4, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "http.route"

    .line 205
    invoke-virtual {p3, p4, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {p1, p2, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 208
    iget-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {p1, p2, v0, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 212
    iget-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {p2, p1, p3}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 214
    iget-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {p2, p1, p3}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide p2

    .line 215
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3, p4}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 216
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    goto :goto_5

    .line 218
    :cond_a
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V

    .line 222
    :goto_5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 223
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_6

    .line 228
    :cond_b
    new-instance p2, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {p2, p1, v3}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    return-object p2

    .line 225
    :cond_c
    :goto_6
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 226
    new-instance p2, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {p2, p1, v1}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    .line 242
    :goto_7
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 243
    throw p1

    .line 239
    :goto_8
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 240
    throw p1

    .line 236
    :goto_9
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 237
    throw p1

    .line 231
    :goto_a
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 234
    throw p2

    :catch_4
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_b

    :cond_d
    move-object p1, p2

    .line 162
    :goto_b
    new-instance p2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string p3, "Request execution failed"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 156
    new-instance p2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string p3, "Request aborted"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
