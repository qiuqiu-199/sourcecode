.class public Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;
.super Lorg/apache/sanselan/formats/png/ScanExpediter;
.source "ScanExpediterInterlaced.java"


# static fields
.field public static final Block_Height:[I

.field public static final Block_Width:[I

.field public static final Col_Increment:[I

.field public static final Row_Increment:[I

.field public static final Starting_Col:[I

.field public static final Starting_Row:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 57
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Row:[I

    .line 60
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    .line 63
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Row_Increment:[I

    .line 66
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    .line 69
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Block_Height:[I

    .line 72
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Block_Width:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p10}, Lorg/apache/sanselan/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    return-void
.end method

.method private visit(IILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/png/BitParser;IILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p4, p6}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I

    move-result p4

    .line 51
    invoke-virtual {p3, p1, p2, p4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    const/4 v0, 0x7

    if-gt v11, v0, :cond_3

    const/4 v0, 0x0

    .line 84
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Row:[I

    add-int/lit8 v12, v11, -0x1

    aget v1, v1, v12

    .line 86
    iget v2, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->height:I

    move v13, v1

    .line 87
    :goto_1
    iget v1, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->height:I

    if-ge v13, v1, :cond_2

    .line 89
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    aget v1, v1, v12

    const/4 v2, 0x0

    .line 92
    iget v3, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v1, v3, :cond_1

    .line 95
    iget v3, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    sget-object v4, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    aget v4, v4, v12

    sub-int/2addr v3, v4

    sub-int/2addr v3, v10

    sget-object v4, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    aget v4, v4, v12

    div-int/2addr v3, v4

    add-int/2addr v3, v10

    .line 96
    iget v4, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    mul-int v4, v4, v3

    .line 97
    invoke-virtual {v9, v4}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getBitsToBytesRoundingUp(I)I

    move-result v3

    .line 99
    iget-object v4, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->is:Ljava/io/InputStream;

    iget v5, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bytesPerPixel:I

    invoke-virtual {v9, v4, v3, v0, v5}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v14

    .line 104
    new-instance v15, Lorg/apache/sanselan/formats/png/BitParser;

    iget v0, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    iget v3, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitDepth:I

    invoke-direct {v15, v14, v0, v3}, Lorg/apache/sanselan/formats/png/BitParser;-><init>([BII)V

    move v8, v1

    const/16 v16, 0x0

    .line 107
    :goto_2
    iget v0, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v8, v0, :cond_0

    .line 109
    iget-object v3, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bi:Ljava/awt/image/BufferedImage;

    iget v5, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->colorType:I

    iget-object v7, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    iget-object v6, v9, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move-object v4, v15

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v18, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->visit(IILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/png/BitParser;IILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;)V

    .line 113
    sget-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    aget v0, v0, v12

    add-int v8, v18, v0

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    move-object v0, v14

    .line 117
    :cond_1
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Row_Increment:[I

    aget v1, v1, v12

    add-int/2addr v13, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
