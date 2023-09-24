.class public abstract Lorg/apache/http/client/methods/HttpRequestBaseHC4;
.super Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;
.source "HttpRequestBaseHC4.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;
.implements Lorg/apache/http/client/methods/Configurable;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private config:Lorg/apache/http/client/config/RequestConfig;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->config:Lorg/apache/http/client/config/RequestConfig;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    .line 77
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getURI()Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "/"

    .line 87
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public releaseConnection()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->reset()V

    return-void
.end method

.method public setConfig(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->config:Lorg/apache/http/client/config/RequestConfig;

    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->uri:Ljava/net/URI;

    return-void
.end method

.method public started()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
