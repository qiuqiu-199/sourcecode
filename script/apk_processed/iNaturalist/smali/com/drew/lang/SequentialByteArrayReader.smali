.class public Lcom/drew/lang/SequentialByteArrayReader;
.super Lcom/drew/lang/SequentialReader;
.source "SequentialByteArrayReader.java"


# instance fields
.field private final _bytes:[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private _index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Lcom/drew/lang/SequentialReader;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    .line 57
    iput p2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    aget-byte v0, v0, v1

    return v0

    .line 64
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of data reached."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes([BII)V
    .locals 2
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "End of data reached."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes(I)[B
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 77
    new-array v0, p1, [B

    .line 78
    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    return-object v0

    .line 74
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of data reached."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPosition()J
    .locals 2

    .line 42
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 102
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 106
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "End of data reached."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be zero or greater."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySkip(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 116
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 118
    iget p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    iget-object p2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length p2, p2

    if-le p1, p2, :cond_0

    .line 119
    iget-object p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length p1, p1

    iput p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be zero or greater."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
