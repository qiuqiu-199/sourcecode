.class public Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# instance fields
.field private final blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private closed:Z

.field private final decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final encoded:[B

.field private final in:Ljava/io/InputStream;

.field private lastWasCR:Z

.field private limit:I

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private pos:I

.field private final singleByte:[B


# direct methods
.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->singleByte:[B

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 46
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 48
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 59
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    .line 60
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    .line 61
    new-instance p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 p2, 0x200

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 62
    new-instance p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 63
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 64
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1

    const/16 v0, 0x800

    .line 54
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-void
.end method

.method private convert(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private fillBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    iget v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 95
    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    goto :goto_0

    .line 97
    :cond_0
    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 98
    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 101
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 103
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method private getnext()I
    .locals 2

    .line 114
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    aget-byte v0, v0, v1

    .line 116
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private peek(I)I
    .locals 2

    .line 124
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private read0([BII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    add-int v8, v7, p3

    .line 165
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    sub-int v1, v8, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    move-object/from16 v10, p1

    invoke-static {v1, v9, v10, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->remove(II)V

    add-int/2addr v0, v7

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    move v0, v7

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v0, v8, :cond_1b

    .line 174
    iget v2, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    iget v3, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v11, 0x1

    if-ge v2, v3, :cond_2

    .line 175
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->fillBuffer()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_2
    move v12, v1

    .line 180
    iget v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    iget v2, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_4

    if-eqz v12, :cond_4

    if-ne v0, v7, :cond_3

    goto :goto_3

    :cond_3
    sub-int v4, v0, v7

    :goto_3
    return v4

    :cond_4
    move v3, v0

    .line 184
    :goto_4
    iget v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    iget v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    if-ge v0, v1, :cond_1a

    if-ge v3, v8, :cond_1a

    .line 185
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    iget v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v13, v0, 0xff

    .line 187
    iget-boolean v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    const/16 v14, 0xa

    if-eqz v0, :cond_6

    if-eq v13, v14, :cond_6

    .line 188
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Found CR without LF"

    const-string v2, "Leaving it as is"

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Found CR without LF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 191
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    move v3, v0

    goto :goto_5

    .line 192
    :cond_6
    iget-boolean v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    if-nez v0, :cond_7

    if-ne v13, v14, :cond_7

    .line 193
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Found LF without CR"

    const-string v2, "Translating to CRLF"

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Found LF without CR"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_5
    const/16 v15, 0xd

    if-ne v13, v15, :cond_8

    .line 199
    iput-boolean v11, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    goto :goto_4

    .line 202
    :cond_8
    iput-boolean v9, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    const/16 v0, 0x3d

    if-ne v13, v14, :cond_b

    .line 207
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    const/16 v1, 0xa

    .line 209
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    goto :goto_6

    .line 211
    :cond_9
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v1

    if-eq v1, v0, :cond_a

    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 213
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    const/16 v1, 0xa

    .line 214
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    .line 217
    :cond_a
    :goto_6
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    goto/16 :goto_b

    :cond_b
    if-ne v13, v0, :cond_17

    .line 219
    iget v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    iget v2, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    if-nez v12, :cond_c

    .line 221
    iget v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    sub-int/2addr v0, v11

    iput v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    move v0, v3

    move v1, v12

    goto/16 :goto_1

    .line 226
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->getnext()I

    move-result v5

    if-ne v5, v0, :cond_f

    const/4 v13, 0x1

    move-object v0, v6

    move v1, v5

    move-object v2, v10

    move v4, v8

    move/from16 v16, v5

    move v5, v13

    .line 228
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    .line 230
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    move-result v1

    .line 231
    invoke-direct {v6, v11}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    move-result v2

    if-eq v1, v14, :cond_e

    if-ne v1, v15, :cond_d

    if-ne v2, v14, :cond_d

    goto :goto_7

    .line 236
    :cond_d
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v2, "Unexpected == encountered"

    const-string v3, "=="

    invoke-virtual {v1, v2, v3}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 233
    :cond_e
    :goto_7
    iget-object v3, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v4, "Unexpected ==EOL encountered"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "== 0x"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move/from16 v5, v16

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto/16 :goto_a

    :cond_f
    int-to-char v0, v5

    .line 238
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 240
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    move-result v0

    if-ne v5, v15, :cond_10

    if-eq v0, v14, :cond_11

    .line 242
    :cond_10
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v2, "Found non-standard soft line break"

    const-string v4, "Translating to soft line break"

    invoke-virtual {v1, v2, v4}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Non-standard soft line break"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-ne v0, v14, :cond_13

    if-ne v5, v15, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    .line 247
    :goto_8
    iput-boolean v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    :cond_13
    const/4 v1, -0x1

    const/4 v15, 0x1

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    move v9, v5

    move v5, v15

    .line 249
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    if-eq v9, v14, :cond_19

    .line 251
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v13}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 252
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto/16 :goto_a

    :cond_14
    move v9, v5

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->getnext()I

    move-result v13

    .line 256
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->convert(I)I

    move-result v1

    .line 257
    invoke-direct {v6, v13}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->convert(I)I

    move-result v2

    if-ltz v1, :cond_16

    if-gez v2, :cond_15

    goto :goto_9

    :cond_15
    shl-int/lit8 v0, v1, 0x4

    or-int v1, v0, v2

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 265
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    goto :goto_a

    .line 259
    :cond_16
    :goto_9
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v2, "Malformed encoded value encountered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaving ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, v13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " as is"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0x3d

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 261
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    const/4 v5, 0x0

    move v1, v9

    .line 262
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v3

    move v1, v13

    .line 263
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    goto :goto_a

    .line 268
    :cond_17
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 269
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_b

    :cond_18
    and-int/lit16 v1, v13, 0xff

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, v10

    move v4, v8

    .line 271
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    move-result v0

    :cond_19
    :goto_a
    move v3, v0

    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_1a
    move v0, v3

    move v1, v12

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_1b
    sub-int/2addr v8, v7

    return v8
.end method

.method private transfer(I[BIIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 134
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 135
    iget-object p5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result p5

    sub-int v1, p4, p3

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 136
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v0, p2, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p5

    .line 138
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    sub-int/2addr v0, p5

    if-lez v0, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    invoke-virtual {v1, v2, p5, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 142
    :cond_0
    iget-object p5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-nez p5, :cond_3

    .line 144
    new-instance p5, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v1, " "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "ignored blanks"

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 147
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ignored blanks"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p5, -0x1

    if-eq p1, p5, :cond_5

    if-ge p3, p4, :cond_4

    add-int/lit8 p4, p3, 0x1

    int-to-byte p1, p1

    .line 151
    aput-byte p1, p2, p3

    move p3, p4

    goto :goto_2

    .line 153
    :cond_4
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    :cond_5
    :goto_2
    return p3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->singleByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->singleByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 314
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->read0([BII)I

    move-result p1

    return p1
.end method
