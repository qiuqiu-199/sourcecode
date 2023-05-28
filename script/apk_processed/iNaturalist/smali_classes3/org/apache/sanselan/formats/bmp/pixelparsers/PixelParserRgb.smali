.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;
.source "PixelParserRgb.java"


# instance fields
.field private bytecount:I

.field private cached_bit_count:I

.field private cached_byte:I

.field pixelCount:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    .line 34
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 35
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 37
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    return-void
.end method


# virtual methods
.method public getNextRGB()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    .line 43
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v2, 0x8

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v2, :cond_1

    .line 67
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v2, v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 69
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->getColorTableRGB(I)I

    move-result v0

    .line 71
    iget v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    return v0

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/high16 v4, -0x1000000

    const/16 v5, 0x10

    if-ne v0, v5, :cond_2

    .line 76
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "Pixel"

    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->is:Ljava/io/ByteArrayInputStream;

    const-string v6, "BMP Image Data"

    invoke-virtual {v0, v1, v3, v6}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v1, v0, 0x0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v3, v0, 0x5

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x3

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x3

    shl-int/2addr v0, v5

    or-int/2addr v0, v4

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 85
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    return v0

    .line 88
    :cond_2
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x18

    if-ne v0, v6, :cond_3

    .line 90
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v3, v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 91
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/2addr v6, v1

    aget-byte v1, v3, v6

    and-int/lit16 v1, v1, 0xff

    .line 92
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v3, v4

    shl-int/2addr v1, v2

    or-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    .line 97
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    return v0

    .line 100
    :cond_3
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x20

    if-ne v0, v6, :cond_4

    .line 102
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v6, v6, 0x0

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 103
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/2addr v7, v1

    aget-byte v1, v6, v7

    and-int/lit16 v1, v1, 0xff

    .line 104
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x10

    or-int/2addr v4, v5

    shl-int/2addr v1, v2

    or-int/2addr v1, v4

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    .line 109
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    return v0

    .line 114
    :cond_4
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_5
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ge v0, v3, :cond_7

    .line 48
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    if-nez v0, :cond_6

    .line 52
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 53
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 55
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto :goto_1

    .line 49
    :cond_6
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected leftover bits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 58
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v2, v3

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 59
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 60
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->getColorTableRGB(I)I

    move-result v0

    return v0
.end method

.method public newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 122
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "Pixel"

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP Image Data"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 125
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
