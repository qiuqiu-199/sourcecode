.class public abstract Lorg/apache/sanselan/formats/png/ScanExpediter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ScanExpediter.java"


# instance fields
.field protected final bi:Ljava/awt/image/BufferedImage;

.field protected final bitDepth:I

.field protected final bitsPerPixel:I

.field protected final bytesPerPixel:I

.field protected final colorType:I

.field protected final gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

.field protected final height:I

.field protected final is:Ljava/io/InputStream;

.field protected final pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

.field protected final transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

.field protected final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->width:I

    .line 55
    iput p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->height:I

    .line 56
    iput-object p3, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->is:Ljava/io/InputStream;

    .line 57
    iput-object p4, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bi:Ljava/awt/image/BufferedImage;

    .line 58
    iput p5, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    .line 59
    iput p6, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bitDepth:I

    .line 60
    invoke-virtual {p0, p7}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getBitsToBytesRoundingUp(I)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bytesPerPixel:I

    .line 61
    iput p7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bitsPerPixel:I

    .line 62
    iput-object p8, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    .line 63
    iput-object p9, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    .line 64
    iput-object p10, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    return-void
.end method


# virtual methods
.method public abstract drive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getBitsToBytesRoundingUp(I)I
    .locals 1

    .line 69
    div-int/lit8 v0, p1, 0x8

    .line 70
    rem-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method protected getNextScanline(Ljava/io/InputStream;I[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v1, "scanline"

    const-string v2, "PNG: missing image data"

    .line 238
    invoke-virtual {p0, v1, p2, p1, v2}, Lorg/apache/sanselan/formats/png/ScanExpediter;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    .line 241
    invoke-virtual {p0, v0, p1, p3, p4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->unfilterScanline(I[B[BI)[B

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG: missing filter type"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getPixelARGB(IIII)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    return p1
.end method

.method protected final getPixelRGB(III)I
    .locals 1

    const/16 v0, 0xff

    .line 85
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1
.end method

.method protected getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "PNG: unknown color type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :pswitch_0
    invoke-virtual {p1, p2, v1}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 153
    invoke-virtual {p1, p2, v4}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 155
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {p2, v0}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 158
    :cond_0
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1

    .line 140
    :pswitch_1
    invoke-virtual {p1, p2, v1}, Lorg/apache/sanselan/formats/png/BitParser;->getSample(II)I

    move-result p1

    .line 142
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    invoke-virtual {p2, p1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->getRGB(I)I

    move-result p2

    .line 144
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    invoke-virtual {v0, p2, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_1
    return p2

    .line 115
    :pswitch_2
    invoke-virtual {p1, p2, v1}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 116
    invoke-virtual {p1, p2, v4}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 117
    invoke-virtual {p1, p2, v3}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 119
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 121
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, v3}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    .line 124
    :cond_2
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz v2, :cond_3

    const/high16 v2, -0x1000000

    and-int/2addr p2, v2

    shr-int/lit8 p2, p2, 0x18

    .line 128
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v2, v0}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 129
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v2, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 130
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v2, p1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 131
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p2

    :cond_3
    return p2

    .line 164
    :cond_4
    invoke-virtual {p1, p2, v1}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 165
    invoke-virtual {p1, p2, v4}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 166
    invoke-virtual {p1, p2, v3}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    const/4 v3, 0x3

    .line 167
    invoke-virtual {p1, p2, v3}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 169
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz p2, :cond_5

    .line 171
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {p2, v0}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 172
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {p2, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 173
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {p2, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 176
    :cond_5
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1

    .line 98
    :cond_6
    invoke-virtual {p1, p2, v1}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 100
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz p2, :cond_7

    .line 102
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {p2, p1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 105
    :cond_7
    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 107
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_8

    .line 108
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    invoke-virtual {v0, p2, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_8
    return p2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getScanlineFilter(II)Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PNG: unknown filter_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 209
    :pswitch_0
    new-instance p1, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;-><init>(I)V

    goto :goto_0

    .line 205
    :pswitch_1
    new-instance p1, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;-><init>(I)V

    goto :goto_0

    .line 201
    :pswitch_2
    new-instance p1, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;-><init>(I)V

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance p1, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;-><init>(I)V

    goto :goto_0

    .line 193
    :pswitch_4
    new-instance p1, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterNone;

    invoke-direct {p1}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterNone;-><init>()V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected unfilterScanline(I[B[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1, p4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getScanlineFilter(II)Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;

    move-result-object p1

    .line 226
    array-length p4, p2

    new-array p4, p4, [B

    .line 227
    invoke-virtual {p1, p2, p4, p3}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;->unfilter([B[B[B)V

    return-object p4
.end method
