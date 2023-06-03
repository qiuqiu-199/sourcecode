.class public Lorg/apache/sanselan/formats/tiff/TiffImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "TiffImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".tif"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".tif"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".tiff"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    return-void
.end method

.method private getPhotometricInterpreter(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 578
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TIFF: Unknown fPhotometricInterpretation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const v0, 0x804c

    if-ne v1, v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 573
    :goto_0
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;

    move-object v4, v0

    move/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v10}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;-><init>(I[IIIIZ)V

    return-object v0

    .line 567
    :sswitch_1
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;

    move-object v1, v0

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;-><init>(I[IIII)V

    return-object v0

    .line 550
    :sswitch_2
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_COEFFICIENTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleArrayValue()[D

    move-result-object v5

    .line 553
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_POSITIONING:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v6

    .line 555
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_SUB_SAMPLING:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v7

    .line 558
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_REFERENCE_BLACK_WHITE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleArrayValue()[D

    move-result-object v8

    .line 561
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;

    move-object v4, v0

    move/from16 v9, p6

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;-><init>([D[I[I[DI[IIII)V

    return-object v0

    .line 546
    :sswitch_3
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;

    move-object v9, v0

    move/from16 v10, p6

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v9 .. v14}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;-><init>(I[IIII)V

    return-object v0

    .line 529
    :sswitch_4
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COLOR_MAP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v10

    shl-int v0, v3, p3

    mul-int/lit8 v0, v0, 0x3

    .line 534
    array-length v1, v10

    if-ne v1, v0, :cond_1

    .line 539
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;

    move-object v4, v0

    move/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v10}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;-><init>(I[IIII[I)V

    return-object v0

    .line 535
    :cond_1
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Tiff: fColorMap.length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")!=expected_colormap_size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :sswitch_5
    new-instance v0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;

    move-object v2, v0

    move/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;-><init>(I[IIII)V

    return-object v0

    :sswitch_6
    if-nez v1, :cond_2

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    .line 524
    :goto_1
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    move-object v11, v1

    move/from16 v12, p3

    move/from16 v13, p6

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v11 .. v18}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(II[IIIIZ)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0x804c -> :sswitch_0
        0x804d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public collectRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 413
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result p2

    invoke-direct {v1, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p2

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    :goto_0
    iget-object v3, p2, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 419
    iget-object v3, p2, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 421
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    .line 422
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 424
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    .line 426
    iget v6, v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->offset:I

    iget v5, v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v6, v5}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v5

    .line 428
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "tiff.dumpImageFile"

    .line 338
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    const-string p2, ""

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_1
    const-string v2, ""

    .line 345
    invoke-virtual {v0, p1, v2}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, ""

    .line 348
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    const/4 v2, 0x0

    .line 355
    new-instance v3, Lorg/apache/sanselan/formats/tiff/TiffReader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v3, p2, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p2

    .line 358
    iget-object p2, p2, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 363
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 365
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 368
    iget-object v2, v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 375
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 377
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 379
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lorg/apache/sanselan/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string p2, ""

    .line 383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, ""

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catchall_0
    move-exception p2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw p2
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

    .line 73
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 78
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 438
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p1

    .line 440
    iget-object p1, p1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 441
    invoke-virtual {p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImage(Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 443
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "TIFF does not contain an image."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBufferedImage(Lorg/apache/sanselan/formats/tiff/TiffDirectory;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p1

    .line 450
    iget-object v10, v9, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 455
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v2

    .line 457
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v11

    .line 459
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v12

    .line 461
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v13

    .line 463
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v14

    .line 465
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v15

    .line 468
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v16

    const/4 v0, -0x1

    .line 481
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_PREDICTOR:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v9, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v0

    move/from16 v17, v0

    goto :goto_0

    :cond_0
    const/16 v17, -0x1

    .line 486
    :goto_0
    array-length v0, v15

    if-ne v14, v0, :cond_1

    const/4 v0, 0x0

    move-object/from16 v8, p0

    move-object/from16 v1, p2

    .line 492
    invoke-virtual {v8, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v1

    invoke-interface {v1, v12, v13, v0}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move-object v4, v15

    move/from16 v5, v17

    move v6, v14

    move-object/from16 v18, v7

    move v7, v12

    move v8, v13

    .line 495
    invoke-direct/range {v0 .. v8}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getPhotometricInterpreter(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v19

    .line 499
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v0

    move-object v1, v10

    move-object/from16 v2, v19

    move v9, v11

    .line 501
    invoke-virtual/range {v0 .. v9}, Lorg/apache/sanselan/formats/tiff/TiffImageData;->getDataReader(Ljava/util/ArrayList;Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIII)Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;

    move-result-object v0

    move-object/from16 v1, v18

    .line 505
    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->readImageData(Ljava/awt/image/BufferedImage;)V

    .line 507
    invoke-virtual/range {v19 .. v19}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->dumpstats()V

    return-object v1

    .line 487
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Tiff: samplesPerPixel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")!=fBitsPerSample.length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "TIFF missing entries"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".tif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 404
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 86
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p1

    .line 88
    iget-object p1, p1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 90
    sget-object p2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->EXIF_TAG_ICC_PROFILE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_0
    iget-object p1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 156
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static/range {p2 .. p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 158
    iget-object v1, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 160
    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v3

    .line 161
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    .line 167
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v12

    .line 168
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    .line 172
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 177
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v6

    :cond_0
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v7, 0x3f9a027525460aa6L    # 0.0254

    goto :goto_0

    :pswitch_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 194
    :goto_0
    :pswitch_2
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    .line 195
    sget-object v6, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v6}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v6

    const-wide/16 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    cmpl-double v14, v7, v9

    if-lez v14, :cond_3

    if-eqz v5, :cond_1

    .line 204
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 207
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v9

    div-double v14, v9, v7

    double-to-int v5, v14

    int-to-double v14, v3

    mul-double v9, v9, v7

    .line 210
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v9

    double-to-float v9, v14

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    :goto_1
    if-eqz v6, :cond_2

    .line 212
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 215
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v10

    div-double v14, v10, v7

    double-to-int v6, v14

    int-to-double v14, v12

    mul-double v10, v10, v7

    .line 218
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    double-to-float v7, v14

    move/from16 v17, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v18, v9

    goto :goto_2

    :cond_2
    move/from16 v17, v5

    move/from16 v18, v9

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_2

    :cond_3
    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 224
    :goto_2
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 228
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 230
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v5

    move v8, v5

    goto :goto_3

    :cond_4
    const/4 v8, -0x1

    .line 237
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v5, v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 239
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 241
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 242
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 246
    :cond_5
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    const-string v11, "TIFF Tag-based Image File Format"

    const-string v13, "image/tiff"

    .line 249
    iget-object v5, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v20, 0x0

    .line 254
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Tiff v."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->tiffVersion:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v21, 0x0

    .line 258
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COLOR_MAP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v22, 0x1

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    const/16 v23, 0x2

    .line 264
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    const v1, 0x8003

    if-eq v0, v1, :cond_8

    const v1, 0x8005

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_1

    const-string v0, "Unknown"

    :goto_6
    move-object/from16 v24, v0

    goto :goto_7

    :pswitch_3
    const-string v0, "JPEG"

    goto :goto_6

    :pswitch_4
    const-string v0, "LZW"

    goto :goto_6

    :pswitch_5
    const-string v0, "CCITT Group 4"

    goto :goto_6

    :pswitch_6
    const-string v0, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    goto :goto_6

    :pswitch_7
    const-string v0, "CCITT 1D"

    goto :goto_6

    :pswitch_8
    const-string v0, "None"

    goto :goto_6

    :cond_7
    const-string v0, "PackBits"

    goto :goto_6

    :cond_8
    const-string v0, "None"

    goto :goto_6

    .line 299
    :goto_7
    new-instance v0, Lorg/apache/sanselan/ImageInfo;

    move-object v6, v0

    move/from16 v19, v3

    invoke-direct/range {v6 .. v24}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v0

    .line 165
    :cond_9
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "TIFF image missing size info."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 100
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p1

    .line 102
    iget-object p1, p1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 104
    sget-object p2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result p2

    .line 105
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 107
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p2, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 124
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p1

    .line 127
    iget-object p2, p1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;-><init>(Lorg/apache/sanselan/formats/tiff/TiffContents;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 135
    new-instance v3, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    invoke-direct {v3, v2}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;-><init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)V

    .line 138
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getDirectoryEntrys()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    .line 140
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 143
    invoke-virtual {v3, v5}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/sanselan/formats/tiff/TiffField;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v0, v3}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->add(Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tiff-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 312
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result p2

    invoke-direct {v1, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object p1

    .line 314
    iget-object p1, p1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 316
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_XMP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p1, v0, p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    .line 325
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 329
    :catch_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Invalid JPEG XMP Segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
