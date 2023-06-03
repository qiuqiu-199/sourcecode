.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    }
.end annotation


# static fields
.field private static final EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final JPEG_BYTE_ORDER:I = 0x4d

.field private static final PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$2;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$2;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 221
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$3;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$3;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 228
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$4;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$4;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    const/16 v0, 0x4d

    .line 50
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->setByteOrder(I)V

    return-void
.end method

.method static synthetic access$000(II)[B
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->int2ToByteArray(II)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(II)[B
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->int2ToByteArray(II)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;-><init>(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 204
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 206
    new-instance p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    invoke-direct {p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;
    .locals 5

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 265
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 267
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 268
    instance-of v3, v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-eqz v3, :cond_0

    .line 270
    move-object v3, v2

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-interface {p2, v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;->filter(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z

    move-result v3

    xor-int/lit8 v4, p3, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 247
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 308
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 310
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 311
    instance-of v4, v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v4, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 315
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x1

    if-ne v2, v0, :cond_4

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_3

    .line 324
    invoke-interface {v1, v3, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 323
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string p2, "JPEG file has no APP segments."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/2addr v2, v3

    .line 327
    invoke-interface {v1, v2, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return-object v1
.end method

.method protected insertBeforeFirstAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 283
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 285
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 286
    instance-of v4, v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v4, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 290
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v2, v0, :cond_1

    move v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eq v2, v0, :cond_3

    .line 300
    invoke-interface {v1, v2, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object v1

    .line 299
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string p2, "JPEG file has no APP segments."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeExifSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 252
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 242
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected removeXmpSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 237
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    :try_start_0
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->SOI:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 342
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 351
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    :catch_0
    :cond_1
    throw p2
.end method
