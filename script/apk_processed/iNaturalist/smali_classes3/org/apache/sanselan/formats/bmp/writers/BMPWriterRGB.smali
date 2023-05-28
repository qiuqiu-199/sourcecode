.class public Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;
.super Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
.source "BMPWriterRGB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 9

    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 54
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_2

    move v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    .line 63
    invoke-virtual {p1, v4, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    .line 70
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    .line 75
    :goto_2
    rem-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_1

    .line 77
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getPaletteSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
