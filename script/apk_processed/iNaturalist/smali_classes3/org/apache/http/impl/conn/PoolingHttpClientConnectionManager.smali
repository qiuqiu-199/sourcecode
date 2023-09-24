.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.super Ljava/lang/Object;
.source "PoolingHttpClientConnectionManager.java"

# interfaces
.implements Lorg/apache/http/conn/HttpClientConnectionManager;
.implements Lorg/apache/http/pool/ConnPoolControl;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;,
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/conn/HttpClientConnectionManager;",
        "Lorg/apache/http/pool/ConnPoolControl<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

.field private final isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lorg/apache/http/impl/conn/CPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 109
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 138
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 149
    new-instance v0, Lorg/apache/http/impl/conn/CPool;

    new-instance v2, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v2, v1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lorg/apache/http/conn/HttpConnectionFactory;)V

    const/4 v3, 0x2

    const/16 v4, 0x14

    move-object v1, v0

    move-wide v5, p5

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/http/impl/conn/CPool;-><init>(Lorg/apache/http/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    .line 151
    new-instance p2, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-direct {p2, p1, p3, p4}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    iput-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    .line 153
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/conn/CPool;Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/CPool;",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 163
    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    .line 164
    new-instance p1, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    .line 166
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[route: "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "[state: "

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "[state: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/CPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    const-string v2, "[total kept alive: "

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "route allocated: "

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "total allocated: "

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getDefaultRegistry()Lorg/apache/http/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "http"

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 2

    const-string v0, "HttpClient"

    const/4 v1, 0x3

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpClient"

    const-string v1, "Closing expired connections"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-string v0, "HttpClient"

    const/4 v1, 0x3

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpClient"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/CPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 297
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 298
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    monitor-enter p1

    .line 301
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 303
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    goto :goto_0

    .line 310
    :goto_1
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_2
    move-object v4, p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    .line 311
    :goto_3
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1, v3}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    if-nez p1, :cond_2

    .line 313
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 316
    sget-object p1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    :cond_3
    move-object v6, p1

    .line 318
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 303
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;
    .locals 0

    .line 86
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/http/pool/PoolStats;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method protected leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/http/impl/conn/CPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/http/HttpClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 244
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz p2, :cond_2

    .line 245
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 248
    invoke-virtual {p2}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "Pool entry with no connection"

    invoke-static {p1, p3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    const-string p1, "HttpClient"

    const/4 p3, 0x3

    .line 249
    invoke-static {p1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "HttpClient"

    .line 250
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection leased: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/conn/CPoolProxy;->newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :catch_0
    new-instance p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-string v0, "Managed connection"

    .line 262
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    monitor-enter p1

    .line 264
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    monitor-exit p1

    return-void

    .line 268
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 270
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/conn/CPoolEntry;->setState(Ljava/lang/Object;)V

    if-eqz p5, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {v0, p3, p4, p5}, Lorg/apache/http/impl/conn/CPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    const-string p2, "HttpClient"

    .line 273
    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v5, 0x0

    cmp-long p2, p3, v5

    if-lez p2, :cond_2

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "for "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double p3, p3

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v5

    :try_start_2
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " seconds"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "indefinitely"

    :goto_1
    const-string p3, "HttpClient"

    .line 280
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Connection "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " can be kept alive "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    :cond_3
    :try_start_3
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/apache/http/impl/conn/CPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    const-string p2, "HttpClient"

    .line 285
    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "HttpClient"

    .line 286
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection released: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 284
    iget-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p3, v0, v2}, Lorg/apache/http/impl/conn/CPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    const-string p3, "HttpClient"

    .line 285
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "HttpClient"

    .line 286
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Connection released: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p5}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw p2

    :catchall_1
    move-exception p2

    .line 289
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
    .locals 3

    const-string v0, "HTTP route"

    .line 217
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HttpClient"

    const/4 v1, 0x3

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpClient"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/impl/conn/CPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 222
    new-instance p2, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;)V

    return-object p2
.end method

.method public routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "Managed Connection"

    .line 340
    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP route"

    .line 341
    invoke-static {p2, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    monitor-enter p1

    .line 343
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object p2

    .line 344
    invoke-virtual {p2}, Lorg/apache/http/impl/conn/CPoolEntry;->markRouteComplete()V

    .line 345
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/CPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->setMaxTotal(I)V

    return-void
.end method

.method public setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 349
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HttpClient"

    const/4 v1, 0x3

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpClient"

    const-string v2, "Connection manager is shutting down"

    .line 351
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HttpClient"

    const-string v3, "I/O exception shutting down connection manager"

    .line 356
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "HttpClient"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HttpClient"

    const-string v1, "Connection manager shut down"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 326
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 327
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    monitor-enter p1

    .line 330
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 332
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 332
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
