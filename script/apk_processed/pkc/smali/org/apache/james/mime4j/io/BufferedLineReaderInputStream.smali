.class public Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "BufferedLineReaderInputStream.java"


# instance fields
.field private buffer:[B

.field private buflen:I

.field private bufpos:I

.field private final maxLineLen:I

.field private origBuffer:[B

.field private origBuflen:I

.field private origBufpos:I

.field tempBuffer:Z

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gtz p2, :cond_1

    .line 56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 59
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 60
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 61
    iput p3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    .line 62
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    return-void
.end method

.method private bufferLen()I
    .locals 2

    .line 121
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 343
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    return-void
.end method

.method private expand(I)V
    .locals 4

    .line 72
    new-array p1, p1, [B

    .line 73
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    return-void
.end method


# virtual methods
.method protected buf()[B
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .locals 3

    .line 309
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 310
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->expand(I)V

    :cond_0
    return-void
.end method

.method public fillBuffer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unread only works when a buffer is fully read before the next refill is asked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuffer:[B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 93
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuflen:I

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBufpos:I

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 95
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    .line 97
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    return v0

    .line 100
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lez v0, :cond_3

    .line 101
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    if-lez v0, :cond_2

    .line 103
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_2
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 106
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 109
    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 110
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 111
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    add-int/2addr v0, v1

    .line 115
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    return v1
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 125
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public indexOf(B)I
    .locals 2

    .line 305
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result p1

    return p1
.end method

.method public indexOf(BII)I
    .locals 1

    .line 293
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int/2addr p3, p2

    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le p3, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 297
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v0, v0, p2

    if-ne v0, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    .line 294
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public indexOf([BII)I
    .locals 9

    if-nez p1, :cond_0

    .line 238
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pattern may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v0, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le v0, v1, :cond_1

    goto :goto_6

    .line 243
    :cond_1
    array-length v0, p1

    const/4 v1, -0x1

    if-ge p3, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x100

    .line 247
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 248
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 249
    array-length v4, p1

    add-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 251
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 252
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 253
    array-length v6, p1

    sub-int/2addr v6, v3

    aput v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 257
    :goto_2
    array-length v4, p1

    sub-int v4, p3, v4

    if-gt v3, v4, :cond_9

    add-int v4, p2, v3

    const/4 v6, 0x0

    .line 260
    :goto_3
    array-length v7, p1

    if-ge v6, v7, :cond_6

    .line 261
    iget-object v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    add-int v8, v4, v6

    aget-byte v7, v7, v8

    aget-byte v8, p1, v6

    if-eq v7, v8, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    return v4

    .line 270
    :cond_7
    array-length v6, p1

    add-int/2addr v4, v6

    .line 271
    iget-object v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v6, v6

    if-lt v4, v6, :cond_8

    goto :goto_5

    .line 274
    :cond_8
    iget-object v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    .line 275
    aget v4, v0, v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_9
    :goto_5
    return v1

    .line 241
    :cond_a
    :goto_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "looking for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected length()I
    .locals 1

    .line 328
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    return v0
.end method

.method protected limit()I
    .locals 1

    .line 324
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected pos()I
    .locals 1

    .line 320
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->readAllowed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->readAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 178
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->readAllowed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 163
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    if-le v0, p3, :cond_3

    goto :goto_0

    :cond_3
    move p3, v0

    .line 167
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    return p3
.end method

.method protected readAllowed()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxLineLimitException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->readAllowed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    if-nez v0, :cond_6

    .line 198
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v4

    if-nez v4, :cond_3

    .line 199
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v3

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    .line 204
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(B)I

    move-result v4

    if-eq v4, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 208
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v0

    sub-int/2addr v4, v0

    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v4

    :goto_0
    if-lez v4, :cond_5

    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v6

    invoke-virtual {p1, v5, v6, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 214
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    add-int/2addr v2, v4

    .line 217
    :cond_5
    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v4

    iget v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lt v4, v5, :cond_2

    .line 218
    new-instance p1, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum line length limit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    if-ne v3, v1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method protected skip(I)I
    .locals 1

    .line 336
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 337
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pos: "

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[limit: "

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-ge v1, v2, :cond_0

    .line 357
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    if-eqz v1, :cond_2

    const-string v1, "-ORIG[pos: "

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBufpos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[limit: "

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuflen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBufpos:I

    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuflen:I

    if-ge v1, v2, :cond_1

    .line 369
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuffer:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "]"

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->clear()V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    return-void
.end method

.method public unread(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Z
    .locals 2

    .line 378
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuffer:[B

    .line 380
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBuflen:I

    .line 381
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->origBufpos:I

    .line 382
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 383
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 384
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    const/4 p1, 0x1

    .line 385
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->tempBuffer:Z

    return p1
.end method
