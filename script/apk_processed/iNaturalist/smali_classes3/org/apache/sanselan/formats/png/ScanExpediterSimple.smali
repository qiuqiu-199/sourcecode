.class public Lorg/apache/sanselan/formats/png/ScanExpediterSimple;
.super Lorg/apache/sanselan/formats/png/ScanExpediter;
.source "ScanExpediterSimple.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p10}, Lorg/apache/sanselan/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v1, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->width:I

    mul-int v0, v0, v1

    .line 42
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getBitsToBytesRoundingUp(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    .line 45
    :goto_0
    iget v4, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->height:I

    if-ge v2, v4, :cond_1

    .line 47
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->is:Ljava/io/InputStream;

    iget v5, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bytesPerPixel:I

    invoke-virtual {p0, v4, v0, v3, v5}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v3

    .line 52
    new-instance v4, Lorg/apache/sanselan/formats/png/BitParser;

    iget v5, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v6, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitDepth:I

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/sanselan/formats/png/BitParser;-><init>([BII)V

    const/4 v5, 0x0

    .line 55
    :goto_1
    iget v6, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->width:I

    if-ge v5, v6, :cond_0

    .line 57
    invoke-virtual {p0, v4, v5}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I

    move-result v6

    .line 59
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v7, v5, v2, v6}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
