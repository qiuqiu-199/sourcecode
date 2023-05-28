.class public Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;
.super Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
.source "BMPWriterPalette.java"


# instance fields
.field private final bitsPerSample:I

.field private final palette:Lorg/apache/sanselan/palette/SimplePalette;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/SimplePalette;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    .line 35
    invoke-virtual {p1}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    const/4 p1, 0x4

    .line 38
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 40
    iput p1, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    return v0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 11

    .line 72
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 75
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v1, :cond_5

    move v7, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v8, 0x8

    if-ge v4, v0, :cond_2

    .line 85
    invoke-virtual {p1, v4, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    .line 88
    iget-object v10, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v10, v9}, Lorg/apache/sanselan/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v9

    .line 90
    iget v10, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    if-ne v10, v8, :cond_0

    and-int/lit16 v8, v9, 0xff

    .line 92
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 97
    :cond_0
    iget v10, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    shl-int/2addr v7, v10

    or-int/2addr v7, v9

    .line 98
    iget v9, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    add-int/2addr v5, v9

    if-lt v5, v8, :cond_1

    and-int/lit16 v5, v7, 0xff

    .line 101
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    sub-int/2addr v8, v5

    shl-int v4, v7, v8

    and-int/lit16 v4, v4, 0xff

    .line 113
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v4, v7

    .line 119
    :goto_3
    rem-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_4

    .line 121
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getPaletteSize()I
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v0}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v0

    return v0
.end method

.method public writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v2}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v2, v1}, Lorg/apache/sanselan/palette/SimplePalette;->getEntry(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 63
    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 64
    invoke-virtual {p1, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 65
    invoke-virtual {p1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 66
    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
