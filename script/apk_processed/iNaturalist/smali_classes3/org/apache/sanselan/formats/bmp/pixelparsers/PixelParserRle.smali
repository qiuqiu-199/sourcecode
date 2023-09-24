.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
.source "PixelParserRle.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method

.method private convertDataToSamples(I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 53
    new-array v0, v2, [I

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result p1

    aput p1, v0, v1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [I

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    .line 62
    invoke-virtual {p0, v3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v1

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result p1

    aput p1, v0, v2

    :goto_0
    return-object v0

    .line 67
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v1, v1, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSamplesPerByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    .line 43
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    const/4 p8, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p8, p2, :cond_1

    if-ltz p3, :cond_0

    if-ge p3, p5, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p6, :cond_0

    .line 86
    array-length v1, p1

    rem-int v1, p8, v1

    aget v1, p1, v1

    .line 88
    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    mul-int v2, v2, p4

    add-int/2addr v2, p3

    invoke-virtual {p7, v2, v1}, Ljava/awt/image/DataBuffer;->setElem(II)V

    goto :goto_1

    .line 93
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "skipping bad pixel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public processImage(Ljava/awt/image/BufferedImage;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v10

    .line 109
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v11, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 110
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v12, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    add-int/lit8 v0, v12, -0x1

    const/4 v13, 0x0

    move v8, v0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    :goto_1
    if-nez v14, :cond_4

    .line 122
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "RLE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ") a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP: Bad RLE"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 125
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "RLE ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")  b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v4, "BMP: Bad RLE"

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v16, 0x1

    if-nez v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-direct/range {p0 .. p0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getSamplesPerByte()I

    move-result v7

    .line 162
    div-int v1, v0, v7

    .line 163
    rem-int v2, v0, v7

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :pswitch_0
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "RLE c"

    iget-object v2, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP: Bad RLE"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 151
    iget-object v0, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "RLE d"

    iget-object v2, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP: Bad RLE"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    goto/16 :goto_1

    :pswitch_1
    const/4 v14, 0x1

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 165
    :cond_0
    :goto_2
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 172
    :cond_1
    iget-object v2, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v3, "bytes"

    iget-object v4, v9, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v5, "RLE: Absolute Mode"

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/apache/sanselan/common/BinaryFileParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v17

    move/from16 v19, v15

    const/16 v18, 0x0

    move v15, v0

    :goto_3
    if-lez v15, :cond_2

    .line 181
    aget-byte v0, v17, v18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {v9, v0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v1

    .line 182
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v3, v19

    move v4, v8

    move v5, v11

    move v6, v12

    move/from16 v20, v7

    move-object v7, v10

    move/from16 v21, v8

    move-object/from16 v8, p1

    .line 187
    invoke-direct/range {v0 .. v8}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I

    move-result v0

    add-int v19, v19, v0

    sub-int/2addr v15, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v20

    move/from16 v8, v21

    goto :goto_3

    :cond_2
    move/from16 v21, v8

    move/from16 v15, v19

    goto/16 :goto_1

    :cond_3
    move/from16 v21, v8

    .line 201
    invoke-direct {v9, v0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v1

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v4, v21

    move v5, v11

    move v6, v12

    move-object v7, v10

    move-object/from16 v8, p1

    .line 203
    invoke-direct/range {v0 .. v8}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I

    move-result v0

    add-int/2addr v0, v15

    move v15, v0

    move/from16 v8, v21

    goto/16 :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
