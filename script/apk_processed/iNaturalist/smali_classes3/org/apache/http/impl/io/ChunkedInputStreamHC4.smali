.class public Lorg/apache/http/impl/io/ChunkedInputStreamHC4;
.super Ljava/io/InputStream;
.source "ChunkedInputStreamHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    .line 85
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    .line 87
    new-array v1, v0, [Lorg/apache/http/Header;

    iput-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;

    const-string v1, "Session input buffer"

    .line 96
    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/io/SessionInputBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 97
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    .line 98
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/4 p1, 0x1

    .line 99
    iput p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    return-void
.end method

.method private getChunkSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 227
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 228
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v4, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v4}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v3

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iput v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 240
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_4

    return v3

    .line 244
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 246
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .line 249
    :cond_5
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1, v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 251
    :catch_0
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->getChunkSize()I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    .line 207
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    .line 210
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    .line 212
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    .line 214
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->parseTrailerHeaders()V

    :cond_0
    return-void

    .line 208
    :cond_1
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTrailerHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, Lorg/apache/http/impl/io/AbstractMessageParserHC4;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 270
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v0, v0, Lorg/apache/http/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    check-cast v0, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v0}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    .line 106
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 284
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-nez v1, :cond_0

    const/16 v1, 0x800

    .line 286
    new-array v1, v1, [B

    .line 287
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    .line 292
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 291
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    .line 292
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, [Lorg/apache/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_3

    .line 129
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 133
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->nextChunk()V

    .line 134
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-eqz v0, :cond_1

    return v1

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 140
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    .line 141
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    .line 142
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    :cond_2
    return v0

    .line 127
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_4

    .line 165
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 169
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->nextChunk()V

    .line 170
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-eqz v0, :cond_1

    return v1

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 176
    iget p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    .line 177
    iget p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-lt p2, p3, :cond_2

    const/4 p2, 0x3

    .line 178
    iput p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    .line 183
    new-instance p1, Lorg/apache/http/TruncatedChunkException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Truncated chunk ( expected size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
