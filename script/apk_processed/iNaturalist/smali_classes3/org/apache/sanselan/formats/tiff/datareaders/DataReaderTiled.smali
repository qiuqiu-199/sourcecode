.class public final Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;
.super Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.source "DataReaderTiled.java"


# instance fields
.field private final bitsPerPixel:I

.field private final compression:I

.field private final height:I

.field private final imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

.field private final tileLength:I

.field private final tileWidth:I

.field private final width:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p5, p6, p7}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V

    .line 49
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    .line 50
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    .line 52
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    .line 53
    iput p8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    .line 54
    iput p9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    .line 55
    iput p10, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->compression:I

    .line 57
    iput-object p11, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    return-void
.end method

.method private interpretTile(Ljava/awt/image/BufferedImage;[BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    new-instance p2, Lorg/apache/sanselan/common/BitInputStream;

    invoke-direct {p2, v0}, Lorg/apache/sanselan/common/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    add-int v5, v3, p3

    add-int v6, v4, p4

    .line 76
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I

    move-result-object v7

    .line 78
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-ge v5, v8, :cond_0

    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-ge v6, v8, :cond_0

    .line 80
    invoke-virtual {p0, v7, v5}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->applyPredictor([II)[I

    move-result-object v7

    .line 81
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v8, p1, v7, v5, v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Ljava/awt/image/BufferedImage;[III)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 86
    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    if-lt v3, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 90
    invoke-virtual {p2}, Lorg/apache/sanselan/common/BitInputStream;->flushCache()V

    .line 91
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    if-lt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public readImageData(Ljava/awt/image/BufferedImage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 102
    div-int/lit8 v0, v0, 0x8

    .line 103
    iget v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 106
    :goto_0
    iget-object v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    iget-object v5, v5, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 108
    iget-object v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    iget-object v5, v5, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    .line 110
    iget v6, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->compression:I

    invoke-virtual {p0, v5, v6, v0}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->decompress([BII)[B

    move-result-object v5

    .line 113
    invoke-direct {p0, p1, v5, v3, v4}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Ljava/awt/image/BufferedImage;[BII)V

    .line 115
    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v3, v5

    .line 116
    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-lt v3, v5, :cond_1

    .line 119
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    add-int/2addr v4, v3

    .line 120
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
