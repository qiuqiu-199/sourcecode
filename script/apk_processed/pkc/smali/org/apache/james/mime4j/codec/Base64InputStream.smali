.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_DECODE:[I


# instance fields
.field private closed:Z

.field private final decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private position:I

.field private final singleByte:[B

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    .line 33
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 37
    sget-object v3, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    :goto_1
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 39
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 53
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 55
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-nez p2, :cond_0

    .line 66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 67
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 68
    new-instance p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 69
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 70
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1

    const/16 v0, 0x600

    .line 61
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-void
.end method

.method private decodePad(II[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    ushr-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    if-ge p4, p5, :cond_0

    add-int/lit8 p2, p4, 0x1

    .line 248
    aput-byte p1, p3, p4

    :goto_0
    move p4, p2

    goto :goto_1

    .line 250
    :cond_0
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    ushr-int/lit8 p2, p1, 0xa

    int-to-byte p2, p2

    ushr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    add-int/lit8 v0, p5, -0x1

    if-ge p4, v0, :cond_2

    add-int/lit8 p5, p4, 0x1

    .line 259
    aput-byte p2, p3, p4

    add-int/lit8 p2, p5, 0x1

    .line 260
    aput-byte p1, p3, p5

    goto :goto_0

    :cond_2
    if-ge p4, p5, :cond_3

    add-int/lit8 p5, p4, 0x1

    .line 262
    aput-byte p2, p3, p4

    .line 263
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    move p4, p5

    goto :goto_1

    .line 265
    :cond_3
    iget-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p3, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 266
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_1

    .line 270
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    :goto_1
    return p4
.end method

.method private handleUnexpecedPad(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected padding character"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sextet(s)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected padding character"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private handleUnexpectedEof(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected end of BASE64 stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sextet(s)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end of BASE64 stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private read0([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v5, p2, p3

    .line 140
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 142
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, v1, p3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->remove(II)V

    add-int/2addr p3, p2

    goto :goto_0

    :cond_0
    move p3, p2

    .line 149
    :goto_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    sub-int v2, p3, p2

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge p3, v5, :cond_10

    .line 160
    :cond_3
    :goto_3
    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v4, v6, :cond_7

    .line 161
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget-object v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    array-length v7, v7

    invoke-virtual {v4, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_6

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v0, :cond_4

    .line 167
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    :cond_4
    if-ne p3, p2, :cond_5

    goto :goto_4

    :cond_5
    sub-int v2, p3, p2

    :goto_4
    return v2

    :cond_6
    if-lez v4, :cond_3

    .line 172
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 173
    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_3

    :cond_7
    move v4, v3

    :cond_8
    move v3, v0

    .line 181
    :cond_9
    :goto_5
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v0, v6, :cond_f

    if-ge p3, v5, :cond_f

    .line 182
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x3d

    if-ne v0, v6, :cond_a

    move-object v0, p0

    move v1, v4

    move v2, v3

    move-object v3, p1

    move v4, p3

    .line 185
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result p1

    sub-int/2addr p1, p2

    return p1

    .line 189
    :cond_a
    sget-object v6, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v6, v6, v0

    if-gez v6, :cond_b

    const/16 v6, 0xd

    if-eq v0, v6, :cond_9

    const/16 v6, 0xa

    if-eq v0, v6, :cond_9

    const/16 v6, 0x20

    if-eq v0, v6, :cond_9

    .line 192
    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected base64 byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ignoring."

    invoke-virtual {v6, v0, v7}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected base64 byte"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    shl-int/lit8 v0, v4, 0x6

    or-int v4, v0, v6

    add-int/lit8 v0, v3, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    ushr-int/lit8 v0, v4, 0x10

    int-to-byte v0, v0

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    int-to-byte v6, v4

    add-int/lit8 v7, v5, -0x2

    if-ge p3, v7, :cond_c

    add-int/lit8 v7, p3, 0x1

    .line 209
    aput-byte v0, p1, p3

    add-int/lit8 p3, v7, 0x1

    .line 210
    aput-byte v3, p1, v7

    add-int/lit8 v0, p3, 0x1

    .line 211
    aput-byte v6, p1, p3

    move p3, v0

    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v5, -0x1

    if-ge p3, v1, :cond_d

    add-int/lit8 v1, p3, 0x1

    .line 214
    aput-byte v0, p1, p3

    .line 215
    aput-byte v3, p1, v1

    .line 216
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_6

    :cond_d
    if-ge p3, v5, :cond_e

    .line 218
    aput-byte v0, p1, p3

    .line 219
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 220
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_6

    .line 222
    :cond_e
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 223
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 224
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    :goto_6
    sub-int/2addr v5, p2

    return v5

    :cond_f
    move v0, v3

    move v3, v4

    goto/16 :goto_2

    :cond_10
    sub-int/2addr v5, p2

    return v5
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v0, v0, v2

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

    .line 98
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 102
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 104
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 107
    :cond_2
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

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

    .line 112
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    .line 118
    array-length v1, p1

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result p1

    return p1

    .line 119
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
