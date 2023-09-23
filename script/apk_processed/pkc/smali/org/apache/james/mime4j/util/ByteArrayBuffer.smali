.class public final Lorg/apache/james/mime4j/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer capacity may not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method

.method public constructor <init>([BIZ)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    if-ltz p2, :cond_3

    .line 46
    array-length v0, p1

    if-le p2, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 50
    iput-object p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    goto :goto_0

    .line 52
    :cond_2
    new-array p3, p2, [B

    iput-object p3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 53
    iget-object p3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :goto_0
    iput p2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void

    .line 47
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private expand(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 3

    .line 85
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 86
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 90
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public append([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    .line 69
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 76
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    .line 80
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void

    .line 71
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public buffer()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1

    if-ltz p1, :cond_1

    .line 106
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    aget-byte p1, v0, p1

    return p1

    .line 107
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public length()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public remove(II)V
    .locals 4

    if-ltz p1, :cond_3

    .line 154
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-gt p1, v0, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p1, p2

    if-ltz v0, :cond_3

    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 161
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    if-lez v1, :cond_2

    .line 163
    iget-object v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget-object v3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    invoke-static {v2, v0, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :cond_2
    iget p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void

    .line 156
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toByteArray()[B
    .locals 4

    .line 98
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    new-array v0, v0, [B

    .line 99
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method