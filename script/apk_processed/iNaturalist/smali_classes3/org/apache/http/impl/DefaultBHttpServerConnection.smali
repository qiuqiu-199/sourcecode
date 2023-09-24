.class public Lorg/apache/http/impl/DefaultBHttpServerConnection;
.super Lorg/apache/http/impl/BHttpConnectionBase;
.source "DefaultBHttpServerConnection.java"

# interfaces
.implements Lorg/apache/http/HttpServerConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final requestParser:Lorg/apache/http/io/HttpMessageParser;

.field private final responseWriter:Lorg/apache/http/io/HttpMessageWriter;


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    .line 114
    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/http/config/MessageConstraints;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageParserFactory<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    if-eqz p6, :cond_0

    move-object v6, p6

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;

    move-object v6, v0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/BHttpConnectionBase;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;)V

    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    goto :goto_1

    .line 99
    :cond_1
    sget-object v0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->getSessionInputBuffer()Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v1

    move-object v2, p5

    invoke-interface {v0, v1, p5}, Lorg/apache/http/io/HttpMessageParserFactory;->create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/http/impl/DefaultBHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    goto :goto_2

    .line 101
    :cond_2
    sget-object v0, Lorg/apache/http/impl/io/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpResponseWriterFactory;

    :goto_2
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->getSessionOutputBuffer()Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/HttpMessageWriterFactory;->create(Lorg/apache/http/io/SessionOutputBuffer;)Lorg/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/http/impl/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    return-void
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 110
    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->bind(Ljava/net/Socket;)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 171
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->doFlush()V

    return-void
.end method

.method protected onRequestReceived(Lorg/apache/http/HttpRequest;)V
    .locals 0

    return-void
.end method

.method protected onResponseSubmitted(Lorg/apache/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 139
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->prepareInput(Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 142
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method public receiveRequestHeader()Lorg/apache/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    invoke-interface {v0}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 132
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->onRequestReceived(Lorg/apache/http/HttpRequest;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->incrementRequestCount()V

    return-object v0
.end method

.method public sendResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 158
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 160
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->prepareOutput(Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;

    move-result-object p1

    .line 165
    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 166
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public sendResponseHeader(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 147
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 149
    iget-object v0, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->onResponseSubmitted(Lorg/apache/http/HttpResponse;)V

    .line 151
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->incrementResponseCount()V

    :cond_0
    return-void
.end method
