.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;


# instance fields
.field private final nonRetriableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/net/UnknownHostException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/net/ConnectException;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/net/ssl/SSLException;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>(IZLjava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    .line 82
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    .line 83
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 85
    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    return v0
.end method

.method protected handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z
    .locals 0

    .line 186
    instance-of p1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    return v0
.end method

.method protected requestIsAborted(Lorg/apache/http/HttpRequest;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    instance-of v0, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p1

    .line 200
    :cond_0
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2

    const-string v0, "Exception parameter"

    .line 131
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 132
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 140
    :cond_1
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 146
    :cond_3
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequest()Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 149
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestIsAborted(Lorg/apache/http/HttpRequest;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v1

    .line 153
    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    return p3

    .line 158
    :cond_5
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->isRequestSent()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return p3
.end method
