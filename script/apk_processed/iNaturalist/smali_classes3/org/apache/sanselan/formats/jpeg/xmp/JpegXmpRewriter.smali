.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.source "JpegXmpRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method

.method private writeXmpSegment([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->XMP_IDENTIFIER:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public removeXmpXml(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 62
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 113
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p2, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public removeXmpXml([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 79
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/File;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 169
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 188
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "utf-8"

    .line 192
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    const/4 v1, 0x0

    .line 194
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 196
    array-length v2, p3

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 197
    invoke-direct {p0, p3, v1, v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeXmpSegment([BII)[B

    move-result-object v3

    .line 199
    new-instance v4, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v5, 0xffe1

    invoke-direct {v4, v5, v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p2, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public updateXmpXml([BLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 133
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
