.class public Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffTagConstants;


# static fields
.field public static final AcceptedExtensions:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final permissive:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".jpg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".jpeg"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->AcceptedExtensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x4d

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->setByteOrder(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[I)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z

    move-result p0

    return p0
.end method

.method private assembleSegments(Ljava/util/ArrayList;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;Z)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private assembleSegments(Ljava/util/ArrayList;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    iget v2, v2, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 204
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    xor-int/2addr p2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 209
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    add-int v5, v1, p2

    .line 213
    iget v6, v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    if-ne v5, v6, :cond_1

    .line 222
    iget v5, v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    if-ne v2, v5, :cond_0

    .line 231
    iget-object v4, v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/ArrayList;)V

    .line 225
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Inconsistent App2 Segment Count info.  markerCount: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", segment["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "].num_markers: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/ArrayList;)V

    .line 216
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Incoherent App2 Segment Ordering.  i: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", segment["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "].cur_marker: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v4, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    new-array p2, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 241
    iget-object v4, v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    iget-object v5, v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v5, v5

    invoke-static {v4, v0, p2, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v3, v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    .line 201
    :cond_4
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "App2 Segments Missing.  Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ", Expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 193
    :cond_5
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "No App2 Segments Found."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dumpSegments(Ljava/util/ArrayList;)V
    .locals 4

    .line 251
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    const-string v0, "dumpSegments"

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 254
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 258
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    return-void
.end method

.method private filterAPP1Segments(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 329
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;

    .line 332
    invoke-static {v2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->isExifAPP1Segment(Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterSegments(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 345
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/Segment;

    .line 346
    new-instance v3, Ljava/lang/Integer;

    iget v4, v2, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->marker:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 347
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isExifAPP1Segment(Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;)Z
    .locals 1

    .line 322
    iget-object p0, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    sget-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->byteArrayHasPrefix([B[B)Z

    move-result p0

    return p0
.end method

.method private keepMarker(I[I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 101
    aget v3, p2, v2

    if-ne v3, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "tiff.dumpImageFile"

    .line 1001
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 1008
    invoke-virtual {v0, p1, v2}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, ""

    .line 1011
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1019
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1022
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/segments/Segment;

    .line 1024
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 1026
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ": marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->marker:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " (length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->length:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 1033
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 1017
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "No Segments Found."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public embedICCProfile([B[B)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->AcceptedExtensions:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Sanselan cannot read or write JPEG images."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".jpg"

    return-object v0
.end method

.method public getExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getExifRawData(Lorg/apache/sanselan/common/byteSources/ByteSource;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 362
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v0, "READ_THUMBNAILS"

    .line 363
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "READ_THUMBNAILS"

    .line 364
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    return-object p1
.end method

.method public getExifRawData(Lorg/apache/sanselan/common/byteSources/ByteSource;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 373
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0xffe1

    aput v3, v1, v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->filterAPP1Segments(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 380
    iget-boolean v3, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz v3, :cond_1

    .line 381
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "exif_segments.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_2

    return-object v1

    .line 390
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 395
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;

    .line 396
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    const-string v0, "trimmed exif bytes"

    const/4 v1, 0x6

    .line 402
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getByteArrayTail(Ljava/lang/String;[BI)[B

    move-result-object p1

    return-object p1

    .line 391
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "Sanselan currently can\'t parse EXIF metadata split across multiple APP1 segments.  Please send this image to the Sanselan project."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 273
    new-array v0, p2, [I

    const/4 v1, 0x0

    const v2, 0xffe2

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 283
    iget-object v3, v2, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 289
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_3

    goto :goto_2

    .line 292
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 294
    iget-boolean p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz p2, :cond_5

    .line 295
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    :cond_5
    iget-boolean p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz p2, :cond_6

    .line 299
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xd

    .line 659
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v4, 0x1

    .line 675
    new-array v5, v4, [I

    const v6, 0xffe0

    aput v6, v5, v3

    invoke-virtual {v0, v1, v5, v4}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 678
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;

    if-eqz v2, :cond_b

    .line 685
    iget v15, v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->width:I

    .line 686
    iget v12, v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->height:I

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 690
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 691
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;

    :cond_0
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    if-eqz v6, :cond_1

    .line 705
    iget v1, v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->xDensity:I

    int-to-double v7, v1

    .line 706
    iget v1, v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->yDensity:I

    int-to-double v9, v1

    .line 707
    iget v1, v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->densityUnits:I

    .line 711
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Jpeg/JFIF v."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMajorVersion:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, "."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v6, v6, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMinorVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v13, 0x400451eb851eb852L    # 2.54

    goto :goto_0

    :pswitch_1
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_0
    :pswitch_2
    move-object v1, v5

    goto :goto_6

    .line 729
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    if-eqz v1, :cond_5

    .line 735
    sget-object v5, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 738
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    goto :goto_1

    :cond_2
    move-wide v5, v13

    .line 741
    :goto_1
    sget-object v7, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v7}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 744
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    goto :goto_2

    :cond_3
    move-wide v7, v13

    .line 747
    :goto_2
    sget-object v9, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v9}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 751
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    move-wide v9, v7

    const-wide v13, 0x400451eb851eb852L    # 2.54

    goto :goto_4

    :pswitch_4
    move-wide v9, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_4
    :goto_3
    :pswitch_5
    move-wide v9, v7

    :goto_4
    move-wide v7, v5

    goto :goto_5

    :cond_5
    move-wide v7, v13

    move-wide v9, v7

    :goto_5
    const-string v1, "Jpeg/DCM"

    :goto_6
    const-wide/16 v5, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/16 v16, -0x1

    cmpl-double v17, v13, v5

    if-lez v17, :cond_6

    div-double v5, v7, v13

    .line 783
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v3, v15

    mul-double v7, v7, v13

    .line 785
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    double-to-float v3, v3

    mul-double v9, v9, v13

    .line 786
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    int-to-double v6, v12

    .line 788
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    double-to-float v6, v6

    move/from16 v18, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move v3, v6

    goto :goto_7

    :cond_6
    const/high16 v3, -0x40800000    # -1.0f

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 791
    :goto_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 794
    iget v4, v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->numberOfComponents:I

    .line 795
    iget v5, v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->precision:I

    mul-int v8, v4, v5

    .line 798
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    const-string v11, "JPEG (Joint Photographic Experts Group) Format"

    const-string v13, "image/jpeg"

    const/4 v14, 0x1

    .line 804
    iget v2, v2, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->marker:I

    const v5, 0xffc2

    if-ne v2, v5, :cond_7

    const/16 v20, 0x1

    goto :goto_8

    :cond_7
    const/16 v20, 0x0

    :goto_8
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/16 v23, 0x0

    goto :goto_9

    :cond_8
    if-ne v4, v2, :cond_9

    const/4 v2, 0x2

    const/16 v23, 0x2

    goto :goto_9

    :cond_9
    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    const/16 v23, 0x3

    goto :goto_9

    :cond_a
    const/4 v2, -0x2

    const/16 v23, -0x2

    :goto_9
    const-string v24, "JPEG"

    .line 820
    new-instance v2, Lorg/apache/sanselan/ImageInfo;

    move-object v6, v2

    move-object v7, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v3

    move/from16 v19, v1

    invoke-direct/range {v6 .. v24}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v2

    .line 683
    :cond_b
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "No SOFN Data Found."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_c
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "No SOFN Data Found."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0xd

    .line 623
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 633
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p2, v0, :cond_1

    .line 636
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p2, v0, :cond_0

    const/4 p2, 0x0

    .line 639
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;

    .line 641
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->width:I

    iget p1, p1, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 637
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Redundant JFIF Data Found."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "No JFIF Data Found."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    move-result-object v0

    .line 309
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getPhotoshopMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_0
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    invoke-direct {p2, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;)V

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Jpeg-Custom"

    return-object v0
.end method

.method public getPhotoshopMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 595
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0xffed

    aput v3, v1, v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 598
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 603
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 605
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;

    .line 607
    invoke-virtual {v3, p2}, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 609
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Jpeg contains more than one Photoshop App13 segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-object v1

    .line 617
    :cond_4
    new-instance p1, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    invoke-direct {p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;

    invoke-direct {v0, p0, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Ljava/util/List;)V

    .line 582
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 584
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 586
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 589
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 587
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Jpeg file contains more than one XMP segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasExifSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 408
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 410
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$2;

    invoke-direct {v2, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$2;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 443
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 445
    aget-boolean p1, v0, v1

    return p1
.end method

.method public hasIptcSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 451
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 453
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$3;

    invoke-direct {v2, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$3;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 486
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 488
    aget-boolean p1, v0, v1

    return p1
.end method

.method public hasXmpSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 494
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 496
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;

    invoke-direct {v2, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 528
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 530
    aget-boolean p1, v0, v1

    return p1
.end method

.method public readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v6, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[ILjava/util/ArrayList;Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Z)V

    .line 170
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {p2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p2, p1, v6}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    return-object p4
.end method
