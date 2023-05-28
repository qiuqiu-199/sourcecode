.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;
.source "PixelParserBitFields.java"


# instance fields
.field private final blueMask:I

.field private final blueShift:I

.field private bytecount:I

.field private final greenMask:I

.field private final greenShift:I

.field private final redMask:I

.field private final redShift:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    .line 42
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    iget-object p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string p3, "redMask"

    const-string v0, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {p2, p3, p1, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    .line 46
    iget-object p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string p3, "greenMask"

    const-string v0, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {p2, p3, p1, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    .line 48
    iget-object p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string p3, "blueMask"

    const-string v0, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {p2, p3, p1, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    .line 51
    iget p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    .line 52
    iget p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    .line 53
    iget p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    return-void
.end method

.method private getMaskShift(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    const v3, 0x7fffffff

    if-nez v2, :cond_0

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    and-int/lit8 v2, p1, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, v0, 0x8

    sub-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public getNextRGB()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->imageData:[B

    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v3, v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 85
    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v3, 0x18

    if-ne v0, v3, :cond_1

    .line 89
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v3, "Pixel"

    iget-object v4, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v5, "BMP Image Data"

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/common/BinaryFileParser;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 90
    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    .line 94
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v3, "Pixel"

    iget-object v4, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v5, "BMP Image Data"

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 95
    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v1, :cond_6

    .line 99
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v3, "Pixel"

    iget-object v4, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v5, "BMP Image Data"

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 100
    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    .line 106
    :goto_0
    iget v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    and-int/2addr v3, v0

    .line 107
    iget v4, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    and-int/2addr v4, v0

    .line 108
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    and-int/2addr v0, v5

    .line 110
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    if-ltz v5, :cond_3

    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    shr-int/2addr v3, v5

    goto :goto_1

    :cond_3
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    neg-int v5, v5

    shl-int/2addr v3, v5

    .line 111
    :goto_1
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    if-ltz v5, :cond_4

    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    shr-int/2addr v4, v5

    goto :goto_2

    :cond_4
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    neg-int v5, v5

    shl-int/2addr v4, v5

    .line 112
    :goto_2
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    if-ltz v5, :cond_5

    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    shr-int/2addr v0, v5

    goto :goto_3

    :cond_5
    iget v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    neg-int v5, v5

    shl-int/2addr v0, v5

    :goto_3
    const/high16 v5, -0x1000000

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v1, v5

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    return v0

    .line 103
    :cond_6
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "Pixel"

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP Image Data"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 126
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
