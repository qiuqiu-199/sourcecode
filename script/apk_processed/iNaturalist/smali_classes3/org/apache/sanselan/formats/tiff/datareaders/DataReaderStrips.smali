.class public final Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;
.super Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.source "DataReaderStrips.java"


# instance fields
.field private final bitsPerPixel:I

.field private final compression:I

.field private final height:I

.field private final imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

.field private final rowsPerStrip:I

.field private final width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Strips;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iput p1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 45
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    .line 46
    iput p6, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    .line 47
    iput p7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    .line 48
    iput p8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->compression:I

    .line 49
    iput p9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    .line 50
    iput-object p10, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    return-void
.end method

.method private interpretStrip(Ljava/awt/image/BufferedImage;[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 57
    new-instance p2, Lorg/apache/sanselan/common/BitInputStream;

    invoke-direct {p2, v0}, Lorg/apache/sanselan/common/BitInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I

    move-result-object v2

    .line 63
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    if-ge v3, v4, :cond_0

    .line 65
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->applyPredictor([II)[I

    move-result-object v2

    .line 67
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    invoke-virtual {v3, p1, v2, v4, v5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Ljava/awt/image/BufferedImage;[III)V

    .line 70
    :cond_0
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 71
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-lt v2, v3, :cond_1

    .line 73
    iput v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 74
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 75
    invoke-virtual {p2}, Lorg/apache/sanselan/common/BitInputStream;->flushCache()V

    .line 76
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    iget v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public readImageData(Ljava/awt/image/BufferedImage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int v2, v2, v0

    sub-int/2addr v1, v2

    .line 90
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int v1, v1, v2

    .line 92
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    mul-int v2, v2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 94
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    iget-object v3, v3, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    .line 96
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->compression:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->decompress([BII)[B

    move-result-object v2

    .line 99
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Ljava/awt/image/BufferedImage;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
