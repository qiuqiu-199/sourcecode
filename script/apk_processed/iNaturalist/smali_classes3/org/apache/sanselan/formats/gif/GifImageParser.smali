.class public Lorg/apache/sanselan/formats/gif/GifImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "GifImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final APPLICATION_EXTENSION_LABEL:I = 0xff

.field private static final COMMENT_EXTENSION:I = 0xfe

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gif"

.field private static final EXTENSION_CODE:I = 0x21

.field private static final GIF_HEADER_SIGNATURE:[B

.field private static final GRAPHIC_CONTROL_EXTENSION:I = 0x21f9

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final INTERLACE_FLAG_MASK:I = 0x40

.field private static final LOCAL_COLOR_TABLE_FLAG_MASK:I = 0x80

.field private static final PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final SORT_FLAG_MASK:I = 0x20

.field private static final TERMINATOR_BYTE:I = 0x3b

.field private static final XMP_APPLICATION_ID_AND_AUTH_CODE:[B

.field private static final XMP_COMPLETE_CODE:I = 0x21ff

.field private static final XMP_EXTENSION:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".gif"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v0, 0xb

    .line 1079
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x49

    .line 55
    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    return-void
.end method

.method private convertColorTableSize(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    .line 425
    invoke-direct {p0, v0, p1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->simple_pow(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method private findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;
    .locals 3

    const/4 v0, 0x0

    .line 464
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 466
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 467
    iget v2, v1, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getColorTable([B)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 672
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 674
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 678
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 679
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v4, 0x2

    .line 680
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    shl-int/2addr v4, v2

    or-int/2addr v4, v5

    .line 685
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 670
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad Color Table Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getComments(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 557
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 559
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 560
    iget v3, v2, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    const/16 v4, 0x21fe

    if-ne v3, v4, :cond_0

    .line 562
    check-cast v2, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    move-result-object v2

    .line 563
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v1, 0x21

    if-eq v3, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v3, v1, :cond_2

    const/16 v1, 0x3b

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 329
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "GIF: unknown code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :pswitch_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "GIF: unexpected end of data"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 250
    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readImageDescriptor(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;ILjava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/16 v3, 0xf9

    if-eq v1, v3, :cond_6

    packed-switch v1, :pswitch_data_1

    if-eqz p4, :cond_4

    const-string v1, "Unknown block"

    .line 310
    invoke-virtual {p4, v1, v2}, Lorg/apache/sanselan/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 313
    :cond_4
    invoke-virtual {p0, p2, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz p4, :cond_5

    .line 287
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown Application Extension ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v2}, Lorg/apache/sanselan/FormatCompliance;->addComment(Ljava/lang/String;I)V

    :cond_5
    if-eqz v1, :cond_0

    .line 296
    array-length v3, v1

    if-lez v3, :cond_0

    .line 298
    invoke-virtual {p0, p2, v2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 268
    :cond_6
    invoke-direct {p0, v2, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    :cond_7
    :pswitch_3
    invoke-virtual {p0, p2, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfe
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    invoke-direct {p0, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result p2

    const-string p3, "block"

    const-string v0, "GIF: corrupt Color Table"

    .line 434
    invoke-virtual {p0, p3, p2, p1, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object p1

    return-object p1
.end method

.method private readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 487
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 489
    :try_start_1
    invoke-direct {p0, p1, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v1

    .line 492
    iget-boolean v2, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->globalColorTableFlag:Z

    if-eqz v2, :cond_0

    .line 493
    iget-byte v0, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    move-result-object v0

    .line 496
    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;

    move-result-object p2

    .line 499
    new-instance p3, Lorg/apache/sanselan/formats/gif/ImageContents;

    invoke-direct {p3, v1, v0, p2}, Lorg/apache/sanselan/formats/gif/ImageContents;-><init>(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;[BLjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 511
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 508
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 511
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 512
    :goto_2
    throw p2
.end method

.method private readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 169
    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    const-string v0, "packed fields"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 170
    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    and-int/lit8 v0, v4, 0x1c

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v0, "delay in milliseconds"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 176
    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    const-string v0, "transparent color index"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 178
    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    const-string v0, "block terminator"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 180
    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 182
    new-instance p2, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;-><init>(IIIZII)V

    return-object p2
.end method

.method private readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "identifier1"

    const-string v4, "Not a Valid GIF File"

    .line 89
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "identifier2"

    const-string v4, "Not a Valid GIF File"

    .line 90
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const-string v3, "identifier3"

    const-string v4, "Not a Valid GIF File"

    .line 91
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    const-string v3, "version1"

    const-string v4, "Not a Valid GIF File"

    .line 93
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    const-string v3, "version2"

    const-string v4, "Not a Valid GIF File"

    .line 94
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    const-string v3, "version3"

    const-string v4, "Not a Valid GIF File"

    .line 95
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v5, "Signature"

    .line 99
    sget-object v12, Lorg/apache/sanselan/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/4 v13, 0x3

    new-array v13, v13, [B

    aput-byte v6, v13, v4

    aput-byte v7, v13, v3

    const/4 v14, 0x2

    aput-byte v8, v13, v14

    invoke-virtual {v2, v5, v12, v13}, Lorg/apache/sanselan/FormatCompliance;->compare_bytes(Ljava/lang/String;[B[B)Z

    const-string v5, "version"

    const/16 v12, 0x38

    .line 101
    invoke-virtual {v2, v5, v12, v9}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;II)Z

    const-string v5, "version"

    .line 102
    new-array v12, v14, [I

    fill-array-data v12, :array_0

    invoke-virtual {v2, v5, v12, v10}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    const-string v5, "version"

    const/16 v12, 0x61

    .line 104
    invoke-virtual {v2, v5, v12, v11}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 107
    :cond_0
    iget-boolean v5, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v5, :cond_1

    const-string v5, "identifier: "

    shl-int/lit8 v12, v6, 0x10

    shl-int/lit8 v13, v7, 0x8

    or-int/2addr v12, v13

    shl-int/lit8 v13, v8, 0x0

    or-int/2addr v12, v13

    .line 108
    invoke-virtual {v0, v5, v12}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printCharQuad(Ljava/lang/String;I)V

    .line 110
    :cond_1
    iget-boolean v5, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "version: "

    shl-int/lit8 v12, v9, 0x10

    shl-int/lit8 v13, v10, 0x8

    or-int/2addr v12, v13

    shl-int/lit8 v13, v11, 0x0

    or-int/2addr v12, v13

    .line 111
    invoke-virtual {v0, v5, v12}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_2
    const-string v5, "Logical Screen Width"

    const-string v12, "Not a Valid GIF File"

    .line 114
    invoke-virtual {v0, v5, v1, v12}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    const-string v5, "Logical Screen Height"

    const-string v13, "Not a Valid GIF File"

    .line 116
    invoke-virtual {v0, v5, v1, v13}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    if-eqz v2, :cond_3

    const-string v5, "Width"

    const v14, 0x7fffffff

    .line 121
    invoke-virtual {v2, v5, v3, v14, v12}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v5, "Height"

    .line 123
    invoke-virtual {v2, v5, v3, v14, v13}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_3
    const-string v5, "Packed Fields"

    const-string v14, "Not a Valid GIF File"

    .line 127
    invoke-virtual {v0, v5, v1, v14}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v14

    const-string v5, "Background Color Index"

    const-string v15, "Not a Valid GIF File"

    .line 129
    invoke-virtual {v0, v5, v1, v15}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v15

    const-string v5, "Pixel Aspect Ratio"

    const-string v3, "Not a Valid GIF File"

    .line 131
    invoke-virtual {v0, v5, v1, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v16

    .line 134
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v1, :cond_4

    const-string v1, "PackedFields bits"

    .line 135
    invoke-virtual {v0, v1, v14}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printByteBits(Ljava/lang/String;B)V

    :cond_4
    and-int/lit16 v1, v14, 0x80

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 138
    :goto_0
    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_6

    .line 139
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "GlobalColorTableFlag: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    shr-int/lit8 v3, v14, 0x4

    and-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    .line 141
    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_7

    .line 142
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v21, v13

    const-string v13, "ColorResolution: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move/from16 v21, v13

    :goto_1
    and-int/lit8 v4, v14, 0x8

    if-lez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    .line 144
    :goto_2
    iget-boolean v5, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v5, :cond_9

    .line 145
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v22, v3

    const-string v3, "SortFlag: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move/from16 v22, v3

    :goto_3
    and-int/lit8 v3, v14, 0x7

    int-to-byte v3, v3

    .line 147
    iget-boolean v5, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v5, :cond_a

    .line 148
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v23, v4

    const-string v4, "SizeofGlobalColorTable: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move/from16 v23, v4

    :goto_4
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    const/4 v4, -0x1

    if-eq v15, v4, :cond_b

    const-string v4, "Background Color Index"

    .line 154
    invoke-direct {v0, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13, v5, v15}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 159
    :cond_b
    new-instance v2, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-object v5, v2

    move/from16 v13, v21

    move/from16 v17, v1

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v3

    invoke-direct/range {v5 .. v20}, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;-><init>(BBBBBBIIBBBZBZB)V

    return-object v2

    :array_0
    .array-data 4
        0x37
        0x39
    .end array-data
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 448
    :try_start_1
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 456
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 453
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 456
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 457
    :goto_2
    throw v0
.end method

.method private readImageDescriptor(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;ILjava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "Image Left Position"

    const-string v5, "Not a Valid GIF File"

    .line 339
    invoke-virtual {v0, v4, v2, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v4, "Image Top Position"

    const-string v5, "Not a Valid GIF File"

    .line 341
    invoke-virtual {v0, v4, v2, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    const-string v4, "Image Width"

    const-string v5, "Not a Valid GIF File"

    .line 343
    invoke-virtual {v0, v4, v2, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    const-string v4, "Image Height"

    const-string v5, "Not a Valid GIF File"

    .line 344
    invoke-virtual {v0, v4, v2, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    const-string v4, "Packed Fields"

    const-string v5, "Not a Valid GIF File"

    .line 345
    invoke-virtual {v0, v4, v2, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v6, "Width"

    .line 350
    iget v7, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    invoke-virtual {v3, v6, v5, v7, v10}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v6, "Height"

    .line 352
    iget v7, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    invoke-virtual {v3, v6, v5, v7, v11}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v6, "Left Position"

    .line 354
    iget v7, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    sub-int/2addr v7, v10

    invoke-virtual {v3, v6, v4, v7, v8}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v6, "Top Position"

    .line 356
    iget v1, v1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    sub-int/2addr v1, v11

    invoke-virtual {v3, v6, v4, v1, v9}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 360
    :cond_0
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "PackedFields bits"

    .line 361
    invoke-virtual {v0, v1, v12}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printByteBits(Ljava/lang/String;B)V

    :cond_1
    shr-int/lit8 v1, v12, 0x7

    and-int/2addr v1, v5

    if-lez v1, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    .line 364
    :goto_0
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v1, :cond_3

    .line 365
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "LocalColorTableFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    shr-int/lit8 v1, v12, 0x6

    and-int/2addr v1, v5

    if-lez v1, :cond_4

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    .line 367
    :goto_1
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v1, :cond_5

    .line 368
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Interlace Flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    shr-int/lit8 v1, v12, 0x5

    and-int/2addr v1, v5

    if-lez v1, :cond_6

    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    .line 370
    :goto_2
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v1, :cond_7

    .line 371
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Sort  Flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v1, v12, 0x7

    int-to-byte v1, v1

    .line 374
    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_8

    .line 375
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "SizeofLocalColorTable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 380
    invoke-direct {v0, v2, v1, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    :goto_3
    const/4 v3, -0x1

    if-nez p4, :cond_a

    .line 386
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 388
    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    move-result-object v2

    .line 390
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    mul-int v2, v10, v11

    .line 393
    new-instance v5, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;

    const/16 v6, 0x49

    invoke-direct {v5, v4, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(II)V

    .line 395
    invoke-virtual {v5, v3, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_4

    .line 398
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 399
    iget-boolean v6, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v6, :cond_b

    .line 400
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LZWMinimumCodeSize: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_b
    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    const/16 v18, 0x0

    .line 405
    :goto_4
    new-instance v2, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    move-object v6, v2

    move/from16 v7, p2

    move/from16 v16, v1

    invoke-direct/range {v6 .. v18}, Lorg/apache/sanselan/formats/gif/ImageDescriptor;-><init>(IIIIIBZZZB[B[B)V

    return-object v2
.end method

.method private readSubBlock(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt block"

    .line 189
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-string v1, "block"

    const-string v2, "GIF: corrupt block"

    .line 191
    invoke-virtual {p0, v1, v0, p1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private simple_pow(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int v0, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private writeAsSubBlocks(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 816
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 818
    array-length v2, p2

    sub-int/2addr v2, v1

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 819
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 820
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gif.dumpImageFile"

    .line 635
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 642
    invoke-virtual {v0, p1, v2}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "gif.blocks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    :goto_0
    iget-object v0, p2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 653
    iget-object v0, p2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 654
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v0, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 661
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
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

    .line 74
    sget-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 705
    invoke-direct {v0, v2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 710
    iget-object v3, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    if-eqz v3, :cond_d

    .line 714
    iget-object v4, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    const/16 v5, 0x2c

    invoke-direct {v0, v4, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    if-eqz v4, :cond_c

    .line 718
    iget-object v5, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    const/16 v6, 0x21f9

    invoke-direct {v0, v5, v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    .line 721
    iget v6, v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    .line 722
    iget v3, v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 725
    iget-boolean v8, v5, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v8, :cond_0

    move-object/from16 v8, p2

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    const/4 v9, 0x0

    .line 728
    :goto_0
    invoke-virtual {v0, v8}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v8

    invoke-interface {v8, v6, v3, v9}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v8

    .line 733
    iget-object v10, v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTable:[B

    if-eqz v10, :cond_1

    .line 734
    iget-object v2, v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v2

    goto :goto_1

    .line 735
    :cond_1
    iget-object v10, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->globalColorTable:[B

    if-eqz v10, :cond_b

    .line 736
    iget-object v2, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->globalColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v2

    :goto_1
    const/4 v10, -0x1

    if-eqz v9, :cond_2

    .line 742
    iget v10, v5, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    :cond_2
    add-int/lit8 v5, v3, 0x7

    .line 751
    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v3, 0x3

    .line 752
    div-int/lit8 v9, v9, 0x8

    add-int/lit8 v11, v3, 0x1

    .line 753
    div-int/lit8 v11, v11, 0x4

    .line 754
    div-int/lit8 v12, v3, 0x2

    .line 756
    invoke-virtual {v8}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v13

    invoke-virtual {v13}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v3, :cond_a

    .line 762
    iget-boolean v1, v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->interlaceFlag:Z

    if-eqz v1, :cond_7

    if-ge v14, v5, :cond_3

    mul-int/lit8 v1, v14, 0x8

    goto :goto_3

    :cond_3
    sub-int v1, v14, v5

    if-ge v1, v9, :cond_4

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_4
    sub-int/2addr v1, v9

    if-ge v1, v11, :cond_5

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_5
    sub-int/2addr v1, v11

    if-ge v1, v12, :cond_6

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    goto :goto_3

    .line 783
    :cond_6
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "Gif: Strange Row"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v1, v14

    :goto_3
    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v6, :cond_9

    .line 795
    iget-object v7, v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageData:[B

    add-int/lit8 v17, v16, 0x1

    aget-byte v7, v7, v16

    and-int/lit16 v7, v7, 0xff

    .line 796
    aget v16, v2, v7

    if-ne v10, v7, :cond_8

    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    move/from16 v7, v16

    :goto_5
    mul-int v16, v1, v6

    add-int v0, v16, v15

    .line 801
    invoke-virtual {v13, v0, v7}, Ljava/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    move-object/from16 v0, p0

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_a
    return-object v8

    .line 738
    :cond_b
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Gif: No Color Table"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_c
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_d
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_e
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "GIF: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".gif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    new-instance v0, Lorg/apache/sanselan/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 697
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;

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
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 573
    invoke-direct {v0, v2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 578
    iget-object v3, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    if-eqz v3, :cond_2

    .line 582
    iget-object v4, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    const/16 v5, 0x2c

    invoke-direct {v0, v4, v5}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    if-eqz v4, :cond_1

    .line 587
    iget-object v5, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    const/16 v6, 0x21f9

    invoke-direct {v0, v5, v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    .line 590
    iget v12, v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    .line 591
    iget v15, v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    .line 595
    iget-object v6, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getComments(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 597
    iget-byte v3, v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->colorResolution:B

    const/4 v6, 0x1

    add-int/2addr v3, v6

    mul-int/lit8 v8, v3, 0x3

    .line 598
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    const-string v11, "GIF Graphics Interchange Format"

    const-string v13, "image/gif"

    .line 604
    iget-boolean v3, v4, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->interlaceFlag:Z

    const/16 v4, 0x48

    int-to-double v6, v15

    move/from16 v25, v15

    int-to-double v14, v4

    .line 607
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v14

    double-to-float v4, v6

    const/16 v16, 0x48

    int-to-double v6, v12

    .line 609
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v14

    double-to-float v15, v6

    .line 611
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Gif "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    iget-byte v7, v7, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version1:B

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    iget-byte v7, v7, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version2:B

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    iget-byte v2, v2, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version3:B

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_0

    .line 616
    iget-boolean v2, v5, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v2, :cond_0

    const/16 v21, 0x1

    goto :goto_0

    :cond_0
    const/16 v21, 0x0

    :goto_0
    const/16 v22, 0x1

    const/16 v23, 0x2

    const-string v24, "LZW"

    .line 623
    new-instance v1, Lorg/apache/sanselan/ImageInfo;

    move-object v6, v1

    const/16 v17, 0x48

    const/4 v2, -0x1

    move v14, v2

    move v5, v15

    move/from16 v2, v25

    move/from16 v15, v16

    move/from16 v16, v5

    move/from16 v18, v4

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-direct/range {v6 .. v24}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v1

    .line 585
    :cond_1
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_2
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "GIF: Couldn\'t read Header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_3
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "GIF: Couldn\'t read blocks"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    iget p1, p1, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 529
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "GIF: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-string v0, "Gif-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 1109
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1112
    :try_start_1
    invoke-direct {v7, v9, v8}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v0

    .line 1115
    iget-boolean v1, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->globalColorTableFlag:Z

    if-eqz v1, :cond_0

    .line 1116
    iget-byte v1, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {v7, v9, v1, v8}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    :cond_0
    const/4 v10, 0x1

    .line 1119
    invoke-direct {v7, v0, v9, v10, v8}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1121
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1122
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_7

    .line 1124
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 1125
    iget v2, v1, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    const/16 v3, 0x21ff

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1128
    :cond_1
    check-cast v1, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    .line 1130
    invoke-virtual {v1, v10}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks(Z)[B

    move-result-object v14

    .line 1131
    array-length v1, v14

    sget-object v2, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1136
    sget-object v4, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    const/4 v5, 0x0

    sget-object v1, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v6, v1

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->compareByteArrays([BI[BII)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x100

    .line 1142
    new-array v15, v1, [B

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xff

    if-gt v1, v2, :cond_4

    sub-int/2addr v2, v1

    int-to-byte v2, v2

    .line 1144
    aput-byte v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1146
    :cond_4
    array-length v1, v14

    sget-object v2, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v2, v2

    array-length v3, v15

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    goto :goto_2

    .line 1149
    :cond_5
    array-length v1, v14

    array-length v2, v15

    sub-int v3, v1, v2

    const/4 v5, 0x0

    array-length v6, v15

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->compareByteArrays([BI[BII)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 1158
    :try_start_2
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v2, v2

    array-length v3, v14

    sget-object v4, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v4, v4

    array-length v5, v15

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const-string v4, "utf-8"

    invoke-direct {v1, v14, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1164
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1167
    :catch_0
    :try_start_3
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Invalid XMP Block in GIF."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_6
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "XMP block in GIF missing magic trailer."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v0, v10, :cond_8

    .line 1181
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1184
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_3
    return-object v8

    .line 1173
    :cond_8
    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v10, :cond_9

    .line 1175
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1181
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1184
    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_4
    return-object v1

    .line 1174
    :cond_9
    :try_start_7
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "More than one XMP Block in GIF."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v9, v8

    .line 1181
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 1184
    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 1185
    :goto_6
    throw v1
.end method

.method protected readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object p1

    return-object p1
.end method

.method protected readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 209
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 214
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 219
    new-instance p1, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    invoke-direct {p1, p2, v0}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;-><init>(ILjava/util/ArrayList;)V

    return-object p1

    .line 216
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 834
    new-instance v3, Ljava/util/HashMap;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v4, "VERBOSE"

    const/4 v5, 0x0

    .line 836
    invoke-static {v3, v4, v5}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v4

    const-string v6, "FORMAT"

    .line 840
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "FORMAT"

    .line 841
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v6, "VERBOSE"

    .line 842
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "VERBOSE"

    .line 843
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    const-string v7, "XMP_XML"

    .line 846
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "XMP_XML"

    .line 848
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "XMP_XML"

    .line 849
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_18

    .line 858
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 859
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    .line 861
    new-instance v8, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v8}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    invoke-virtual {v8, v1}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v10, 0xff

    goto :goto_0

    :cond_3
    const/16 v10, 0x100

    .line 865
    :goto_0
    new-instance v11, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v11}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    invoke-virtual {v11, v1, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;

    move-result-object v11

    if-nez v11, :cond_4

    .line 872
    new-instance v11, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v11}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    invoke-virtual {v11, v1, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteQuantized(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/Palette;

    move-result-object v11

    if-eqz v4, :cond_5

    .line 875
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "quantizing"

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 877
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "exact palette"

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v11, :cond_17

    .line 882
    invoke-virtual {v11}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v4

    add-int/2addr v4, v8

    .line 884
    new-instance v10, Lorg/apache/sanselan/common/BinaryOutputStream;

    const/16 v12, 0x49

    invoke-direct {v10, v2, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v13, 0x47

    .line 888
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    .line 889
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write(I)V

    const/16 v13, 0x46

    .line 890
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    const/16 v13, 0x38

    .line 892
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    const/16 v13, 0x39

    .line 893
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    const/16 v13, 0x61

    .line 894
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    .line 898
    invoke-virtual {v10, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 899
    invoke-virtual {v10, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v13, 0x80

    const/4 v14, 0x7

    const/4 v15, 0x4

    const/4 v12, 0x2

    const/16 v16, 0x1

    if-le v4, v13, :cond_6

    const/4 v4, 0x7

    goto :goto_2

    :cond_6
    const/16 v13, 0x40

    if-le v4, v13, :cond_7

    const/4 v4, 0x6

    goto :goto_2

    :cond_7
    const/16 v13, 0x20

    if-le v4, v13, :cond_8

    const/4 v4, 0x5

    goto :goto_2

    :cond_8
    const/16 v13, 0x10

    if-le v4, v13, :cond_9

    const/4 v4, 0x4

    goto :goto_2

    :cond_9
    const/16 v13, 0x8

    if-le v4, v13, :cond_a

    const/4 v4, 0x3

    goto :goto_2

    :cond_a
    if-le v4, v15, :cond_b

    const/4 v4, 0x2

    goto :goto_2

    :cond_b
    if-le v4, v12, :cond_c

    const/4 v4, 0x1

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v13, v4, 0x1

    shl-int v9, v16, v13

    .line 908
    invoke-direct {v0, v12, v13}, Lorg/apache/sanselan/formats/gif/GifImageParser;->simple_pow(II)I

    int-to-byte v12, v4

    and-int/2addr v12, v14

    shl-int/2addr v12, v15

    or-int/2addr v12, v5

    or-int/2addr v12, v5

    .line 922
    invoke-virtual {v10, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 926
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 930
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x21

    .line 938
    invoke-virtual {v10, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/4 v14, -0x7

    .line 939
    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 943
    invoke-virtual {v10, v15}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    int-to-byte v14, v8

    .line 945
    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 946
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 947
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    if-eqz v8, :cond_d

    .line 948
    invoke-virtual {v11}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v14

    goto :goto_3

    :cond_d
    const/4 v14, 0x0

    :goto_3
    int-to-byte v14, v14

    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 951
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    if-eqz v6, :cond_f

    .line 956
    invoke-virtual {v10, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0xff

    .line 957
    invoke-virtual {v10, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 959
    sget-object v14, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v14, v14

    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 960
    sget-object v14, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    const-string v14, "utf-8"

    .line 962
    invoke-virtual {v6, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 963
    invoke-virtual {v10, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    const/4 v6, 0x0

    :goto_4
    if-gt v6, v12, :cond_e

    rsub-int v14, v6, 0xff

    .line 967
    invoke-virtual {v10, v14}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0xff

    goto :goto_4

    .line 969
    :cond_e
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    :cond_f
    const/16 v6, 0x2c

    .line 974
    invoke-virtual {v10, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 975
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 976
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 977
    invoke-virtual {v10, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 978
    invoke-virtual {v10, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v6, 0x7

    and-int/2addr v4, v6

    const/16 v6, 0x80

    or-int/2addr v4, v6

    .line 993
    invoke-virtual {v10, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_11

    .line 1000
    invoke-virtual {v11}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v6

    if-ge v4, v6, :cond_10

    .line 1002
    invoke-virtual {v11, v4}, Lorg/apache/sanselan/palette/Palette;->getEntry(I)I

    move-result v6

    shr-int/lit8 v12, v6, 0x10

    const/16 v14, 0xff

    and-int/2addr v12, v14

    shr-int/lit8 v15, v6, 0x8

    and-int/2addr v15, v14

    shr-int/2addr v6, v5

    and-int/2addr v6, v14

    .line 1008
    invoke-virtual {v10, v12}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1009
    invoke-virtual {v10, v15}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1010
    invoke-virtual {v10, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    goto :goto_6

    .line 1013
    :cond_10
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1014
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1015
    invoke-virtual {v10, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    const/4 v4, 0x2

    if-ge v13, v4, :cond_12

    const/4 v13, 0x2

    .line 1033
    :cond_12
    invoke-virtual {v10, v13}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1035
    new-instance v4, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;

    const/16 v6, 0x49

    invoke-direct {v4, v13, v6, v5}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZ)V

    mul-int v6, v3, v7

    .line 1039
    new-array v6, v6, [B

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_16

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v3, :cond_15

    .line 1044
    invoke-virtual {v1, v12, v9}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const v14, 0xffffff

    and-int/2addr v14, v13

    if-eqz v8, :cond_14

    shr-int/lit8 v13, v13, 0x18

    const/16 v15, 0xff

    and-int/2addr v13, v15

    if-ge v13, v15, :cond_13

    .line 1053
    invoke-virtual {v11}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v13

    goto :goto_9

    .line 1055
    :cond_13
    invoke-virtual {v11, v14}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v13

    goto :goto_9

    :cond_14
    const/16 v15, 0xff

    .line 1058
    invoke-virtual {v11, v14}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v13

    :goto_9
    mul-int v14, v9, v3

    add-int/2addr v14, v12

    int-to-byte v13, v13

    .line 1061
    aput-byte v13, v6, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_15
    const/16 v15, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1065
    :cond_16
    invoke-virtual {v4, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->compress([B)[B

    move-result-object v1

    .line 1066
    invoke-direct {v0, v10, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->writeAsSubBlocks(Ljava/io/OutputStream;[B)V

    .line 1067
    array-length v1, v1

    const/16 v1, 0x3b

    .line 1072
    invoke-virtual {v10, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1075
    invoke-virtual {v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->close()V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 880
    :cond_17
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Gif: can\'t write images with more than 256 colors"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_18
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 855
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
