.class public Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;
.super Lio/jsonwebtoken/impl/compression/AbstractCompressionCodec;
.source "DeflateCompressionCodec.java"


# static fields
.field private static final DEFLATE:Ljava/lang/String; = "DEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/jsonwebtoken/impl/compression/AbstractCompressionCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public doCompress([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    :try_start_1
    new-instance v6, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v6, v5, v0, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    array-length v0, p1

    invoke-virtual {v6, p1, v4, v0}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 52
    invoke-virtual {v6}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 53
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v6, v0, v3

    invoke-static {v0}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v5, v2

    :goto_0
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    throw p1
.end method

.method public doDecompress([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 65
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 66
    :try_start_1
    new-instance v5, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/util/zip/InflaterOutputStream;->write([B)V

    .line 68
    invoke-virtual {v5}, Ljava/util/zip/InflaterOutputStream;->flush()V

    .line 69
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    aput-object v5, v2, v0

    invoke-static {v2}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v3, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v4, v3

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Lio/jsonwebtoken/lang/Objects;->nullSafeClose([Ljava/io/Closeable;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DEF"

    return-object v0
.end method
