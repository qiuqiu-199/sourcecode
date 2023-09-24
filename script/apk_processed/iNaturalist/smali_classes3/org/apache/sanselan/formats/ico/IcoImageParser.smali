.class public Lorg/apache/sanselan/formats/ico/IcoImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".ico"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".ico"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".cur"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x49

    .line 45
    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    return-void
.end method

.method private readBufferedImage(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 428
    iget-object v1, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    .line 430
    iget-byte v2, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    .line 431
    iget-byte v3, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    mul-int v4, v2, v3

    .line 432
    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_5

    .line 440
    iget-object v9, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->transparency_map:[B

    iget v10, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->t_scanline_size:I

    mul-int v10, v10, v7

    div-int/lit8 v11, v8, 0x8

    add-int/2addr v10, v11

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/2addr v9, v10

    .line 442
    rem-int/lit8 v11, v8, 0x8

    rsub-int/lit8 v11, v11, 0x7

    shr-int/2addr v9, v11

    const/4 v11, 0x1

    and-int/2addr v9, v11

    if-nez v9, :cond_0

    const/16 v9, 0xff

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    .line 445
    :goto_2
    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    const/16 v13, 0x18

    const/4 v14, 0x4

    const/16 v15, 0x8

    if-eq v12, v11, :cond_4

    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    if-eq v12, v14, :cond_4

    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    if-ne v12, v15, :cond_1

    goto :goto_4

    .line 461
    :cond_1
    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    if-eq v12, v13, :cond_3

    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    const/16 v14, 0x20

    if-ne v12, v14, :cond_2

    goto :goto_3

    .line 474
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown BitCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_3
    :goto_3
    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    shr-int/lit8 v12, v12, 0x3

    .line 465
    iget v14, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    mul-int v14, v14, v7

    mul-int v12, v12, v8

    add-int/2addr v14, v12

    .line 466
    iget-object v12, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    add-int/lit8 v16, v14, 0x2

    aget-byte v12, v12, v16

    and-int/2addr v12, v10

    .line 467
    iget-object v13, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    add-int/lit8 v16, v14, 0x1

    aget-byte v13, v13, v16

    and-int/2addr v13, v10

    .line 468
    iget-object v11, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    add-int/2addr v14, v6

    aget-byte v11, v11, v14

    and-int/2addr v11, v10

    and-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v13, v10

    shl-int/2addr v13, v15

    or-int/2addr v12, v13

    and-int/2addr v11, v10

    shl-int/2addr v11, v6

    or-int/2addr v11, v12

    goto :goto_5

    .line 448
    :cond_4
    :goto_4
    iget v11, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    mul-int v11, v11, v7

    mul-int/lit8 v11, v11, 0x8

    iget v12, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    mul-int v12, v12, v8

    add-int/2addr v11, v12

    .line 450
    iget-object v12, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    shr-int/lit8 v13, v11, 0x3

    aget-byte v12, v12, v13

    and-int/2addr v12, v10

    .line 451
    iget v13, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    const/16 v16, 0x1

    shl-int v13, v16, v13

    add-int/lit8 v13, v13, -0x1

    .line 452
    rem-int/2addr v11, v15

    rsub-int/lit8 v11, v11, 0x8

    iget v15, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    sub-int/2addr v11, v15

    shr-int v11, v12, v11

    and-int/2addr v11, v13

    .line 455
    iget-object v12, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    mul-int/lit8 v11, v11, 0x4

    add-int/lit8 v13, v11, 0x2

    aget-byte v12, v12, v13

    and-int/2addr v12, v10

    .line 456
    iget-object v13, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    add-int/lit8 v14, v11, 0x1

    aget-byte v13, v13, v14

    and-int/2addr v13, v10

    .line 457
    iget-object v14, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    add-int/2addr v11, v6

    aget-byte v11, v14, v11

    and-int/2addr v11, v10

    and-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v13, v10

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    and-int/2addr v11, v10

    shl-int/2addr v11, v6

    or-int/2addr v11, v12

    :goto_5
    and-int/2addr v9, v10

    const/16 v10, 0x18

    shl-int/2addr v9, v10

    const v10, 0xffffff

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    sub-int v10, v3, v7

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    mul-int v10, v10, v2

    add-int/2addr v10, v8

    .line 481
    aput v9, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 485
    :cond_6
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 486
    new-instance v1, Ljava/awt/image/DataBufferInt;

    invoke-direct {v1, v5, v4}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    .line 487
    invoke-virtual {v0, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v2

    const/4 v3, 0x0

    .line 490
    invoke-static {v2, v1, v3}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-direct {v2, v0, v1, v6, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2
.end method

.method private readFileHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Reserved"

    const-string v1, "Not a Valid ICO File"

    .line 135
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const-string v1, "IconType"

    const-string v2, "Not a Valid ICO File"

    .line 136
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    const-string v2, "IconCount"

    const-string v3, "Not a Valid ICO File"

    .line 137
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    .line 139
    new-instance v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;-><init>(III)V

    return-object v2
.end method

.method private readIconData(Ljava/io/InputStream;Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Size"

    const-string v4, "Not a Valid ICO File"

    .line 302
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    const-string v3, "Width"

    const-string v4, "Not a Valid ICO File"

    .line 303
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    const-string v3, "Height"

    const-string v4, "Not a Valid ICO File"

    .line 304
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v3, "Planes"

    const-string v4, "Not a Valid ICO File"

    .line 305
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    const-string v3, "BitCount"

    const-string v4, "Not a Valid ICO File"

    .line 306
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    const-string v3, "Compression"

    const-string v4, "Not a Valid ICO File"

    .line 307
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    const-string v3, "SizeImage"

    const-string v4, "Not a Valid ICO File"

    .line 308
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    const-string v3, "XPelsPerMeter"

    const-string v4, "Not a Valid ICO File"

    .line 309
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    const-string v3, "YPelsPerMeter"

    const-string v4, "Not a Valid ICO File"

    .line 311
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    const-string v3, "ColorsUsed"

    const-string v4, "Not a Valid ICO File"

    .line 313
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    const-string v3, "ColorsImportant"

    const-string v4, "Not a Valid ICO File"

    .line 314
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v16

    .line 317
    new-instance v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;-><init>(IIIIIIIIIII)V

    .line 329
    iget v4, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-eq v4, v5, :cond_1

    iget v4, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    if-eq v4, v7, :cond_1

    iget v4, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 332
    :cond_1
    :goto_0
    iget v4, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    shl-int v4, v5, v4

    mul-int/lit8 v4, v4, 0x4

    const-string v5, "palette"

    const-string v8, "Not a Valid ICO File"

    .line 333
    invoke-virtual {v0, v5, v4, v1, v8}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v4

    .line 338
    :goto_1
    iget v5, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    iget-byte v8, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    mul-int v5, v5, v8

    add-int/lit8 v5, v5, 0x7

    div-int/2addr v5, v6

    .line 339
    rem-int/lit8 v8, v5, 0x4

    if-eqz v8, :cond_2

    rsub-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    :cond_2
    move v8, v5

    .line 342
    iget-byte v5, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    mul-int v5, v5, v8

    const-string v9, "color_map"

    const-string v10, "Not a Valid ICO File"

    .line 344
    invoke-virtual {v0, v9, v5, v1, v10}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v5

    .line 349
    iget-byte v9, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    add-int/lit8 v9, v9, 0x7

    div-int/2addr v9, v6

    .line 350
    rem-int/lit8 v6, v9, 0x4

    if-eqz v6, :cond_3

    sub-int/2addr v7, v6

    add-int/2addr v9, v7

    .line 353
    :cond_3
    iget-byte v6, v2, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    mul-int v6, v6, v9

    const-string v7, "transparency_map"

    const-string v10, "Not a Valid ICO File"

    .line 355
    invoke-virtual {v0, v7, v6, v1, v10}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v7

    .line 359
    new-instance v10, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    move-object v1, v10

    move-object/from16 v2, p2

    move v6, v8

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;-><init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;[B[BI[BI)V

    return-object v10
.end method

.method private readIconInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Width"

    const-string v1, "Not a Valid ICO File"

    .line 187
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    const-string v0, "Height"

    const-string v1, "Not a Valid ICO File"

    .line 188
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v0, "ColorCount"

    const-string v1, "Not a Valid ICO File"

    .line 189
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v0, "Reserved"

    const-string v1, "Not a Valid ICO File"

    .line 190
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v0, "Planes"

    const-string v1, "Not a Valid ICO File"

    .line 191
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    const-string v0, "BitCount"

    const-string v1, "Not a Valid ICO File"

    .line 192
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v0, "ImageSize"

    const-string v1, "Not a Valid ICO File"

    .line 193
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    const-string v0, "ImageOffset"

    const-string v1, "Not a Valid ICO File"

    .line 194
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 196
    new-instance p1, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;-><init>(BBBBIIII)V

    return-object p1
.end method

.method private readImage(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 384
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readFileHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    move-result-object v0

    .line 388
    iget v1, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v1, v1, [Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 389
    :goto_0
    iget v4, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v3, v4, :cond_0

    .line 391
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readIconInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget v3, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v3, v3, [Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    .line 396
    :goto_1
    iget v4, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v2, v4, :cond_1

    .line 398
    aget-object v4, v1, v2

    invoke-direct {p0, p1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readIconData(Ljava/io/InputStream;Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_1
    new-instance v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;

    invoke-direct {v1, v0, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;-><init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 412
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_2
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 408
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 412
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 413
    :goto_4
    throw v0
.end method


# virtual methods
.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lorg/apache/sanselan/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_ICO:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readImage(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;

    move-result-object p1

    .line 505
    iget-object v1, p1, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    const/4 v2, 0x0

    .line 506
    :goto_0
    iget v3, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v2, v3, :cond_0

    .line 508
    iget-object v3, p1, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    aget-object v3, v3, v2

    .line 510
    invoke-direct {p0, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readBufferedImage(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 512
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    .line 421
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Use getAllBufferedImages() instead for .ico images."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".ico"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ico-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
