.class public Lio/jsonwebtoken/impl/compression/GzipCompressionCodec;
.super Lio/jsonwebtoken/impl/compression/AbstractCompressionCodec;
.source "GzipCompressionCodec.java"

# interfaces
.implements Lio/jsonwebtoken/CompressionCodec;


# static fields
.field private static final GZIP:Ljava/lang/String; = "GZIP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/jsonwebtoken/impl/compression/AbstractCompressionCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCompress([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 67
    :try_start_0
    array-length v5, p1

    invoke-virtual {v1, p1, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 68
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    throw p1
.end method

.method protected doDecompress([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    .line 43
    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 51
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 52
    :try_start_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 55
    invoke-virtual {v7, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v6, v3, v4

    aput-object p1, v3, v2

    aput-object v7, v3, v1

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v5, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v5

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v5

    move-object v6, p1

    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v6, v3, v4

    aput-object p1, v3, v2

    aput-object v5, v3, v1

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GZIP"

    return-object v0
.end method
