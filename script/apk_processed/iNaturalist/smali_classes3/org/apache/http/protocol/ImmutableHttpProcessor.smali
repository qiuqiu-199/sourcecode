.class public final Lorg/apache/http/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpProcessor;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

.field private final responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    goto :goto_0

    .line 81
    :cond_0
    new-array p1, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    :goto_0
    if-eqz p2, :cond_1

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 85
    new-array p1, p1, [Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    goto :goto_1

    .line 87
    :cond_1
    new-array p1, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestInterceptorList;Lorg/apache/http/protocol/HttpResponseInterceptorList;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I

    move-result v1

    .line 101
    new-array v2, v1, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 103
    iget-object v3, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {p1, v2}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-array p1, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    :cond_1
    if-eqz p2, :cond_2

    .line 109
    invoke-interface {p2}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I

    move-result p1

    .line 110
    new-array v1, p1, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    :goto_1
    if-ge v0, p1, :cond_3

    .line 112
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_2
    new-array p1, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    :cond_3
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    array-length v1, p1

    .line 56
    new-array v2, v1, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 57
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 59
    :cond_0
    new-array p1, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    :goto_0
    if-eqz p2, :cond_1

    .line 62
    array-length p1, p2

    .line 63
    new-array v1, p1, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 64
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 66
    :cond_1
    new-array p1, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object p1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    :goto_1
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0, p1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 131
    invoke-interface {v3, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    invoke-interface {v3, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
