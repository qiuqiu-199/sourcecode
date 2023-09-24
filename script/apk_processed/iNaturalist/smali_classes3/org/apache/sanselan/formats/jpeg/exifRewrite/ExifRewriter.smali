.class public Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    const/16 v0, 0x4d

    .line 57
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->setByteOrder(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->setByteOrder(I)V

    return-void
.end method

.method private analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;-><init>(Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 199
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 208
    new-instance p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    invoke-direct {p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method private writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_0

    .line 568
    sget-object p3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->EXIF_IDENTIFIER_CODE:[B

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p3, 0x0

    .line 569
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 570
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 575
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->getByteOrder()I

    move-result v0

    .line 474
    :try_start_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->SOI:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 478
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 480
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;

    .line 481
    instance-of v4, v4, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v2, 0xffff

    const v4, 0xffe1

    if-nez v3, :cond_3

    if-eqz p3, :cond_3

    .line 487
    invoke-virtual {p0, v4, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v3

    .line 489
    array-length v6, p3

    if-gt v6, v2, :cond_2

    .line 492
    array-length v6, p3

    add-int/lit8 v6, v6, 0x2

    .line 493
    invoke-virtual {p0, v6, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v6

    .line 497
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    .line 499
    iget v7, v7, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;->marker:I

    const v8, 0xffe0

    .line 501
    new-instance v7, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    invoke-direct {v7, v4, v3, v6, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    invoke-interface {p2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 490
    :cond_2
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "APP1 Segment is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 507
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 509
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;

    .line 510
    instance-of v7, v6, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v7, :cond_7

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-nez p3, :cond_5

    goto :goto_3

    .line 520
    :cond_5
    invoke-virtual {p0, v4, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v3

    .line 522
    array-length v6, p3

    if-gt v6, v2, :cond_6

    .line 525
    array-length v6, p3

    add-int/lit8 v6, v6, 0x2

    .line 526
    invoke-virtual {p0, v6, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v6

    .line 529
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 530
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 531
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    .line 523
    :cond_6
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "APP1 Segment is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 535
    :cond_7
    invoke-virtual {v6, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 543
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 547
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :catchall_0
    move-exception p2

    .line 543
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 547
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 548
    :goto_6
    throw p2
.end method


# virtual methods
.method public removeExifMetadata(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 226
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 227
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 254
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 269
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p2, p1, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public removeExifMetadata([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 241
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 298
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 339
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 362
    iget-object v0, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 367
    iget-object v1, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 370
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    .line 372
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    const-string v1, "trimmed exif bytes"

    const/4 v2, 0x6

    .line 373
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->getByteArrayTail(Ljava/lang/String;[BI)[B

    move-result-object p1

    .line 375
    new-instance v1, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;

    iget v2, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v1, v2, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;-><init>(I[B)V

    goto :goto_0

    .line 379
    :cond_0
    new-instance v1, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    iget p1, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v1, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>(I)V

    :goto_0
    const/4 p1, 0x1

    .line 382
    invoke-direct {p0, v1, p3, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object p1

    .line 384
    invoke-direct {p0, p2, v0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 318
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 319
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 437
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 438
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 419
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 455
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 456
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 458
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    iget v1, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>(I)V

    const/4 v1, 0x1

    .line 462
    invoke-direct {p0, v0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object p3

    .line 464
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public updateExifMetadataLossy([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 401
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 402
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method
