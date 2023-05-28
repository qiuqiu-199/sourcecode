.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLUV.java"


# direct methods
.method public constructor <init>(I[IIIIZ)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method private cube(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float v0, v0, p1

    return v0
.end method


# virtual methods
.method public dumpstats()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 53
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 54
    aget v4, p2, v4

    int-to-byte v4, v4

    const/4 v5, 0x2

    .line 55
    aget v1, p2, v5

    int-to-byte v1, v1

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v3, v3, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v3, v7

    const/high16 v7, 0x42e80000    # 116.0f

    div-float/2addr v3, v7

    int-to-float v4, v4

    const/high16 v7, 0x43fa0000    # 500.0f

    div-float/2addr v4, v7

    add-float/2addr v4, v3

    int-to-float v1, v1

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v1, v7

    sub-float v1, v3, v1

    .line 63
    invoke-direct {v0, v4}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v7

    .line 64
    invoke-direct {v0, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v8

    .line 65
    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v9

    const v10, 0x40f92f1b    # 7.787f

    const v11, 0x3e0d3dcb

    const v12, 0x3c1118c2    # 0.008856f

    cmpl-float v13, v8, v12

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v3, v11

    div-float v8, v3, v10

    :goto_0
    cmpl-float v3, v7, v12

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v11

    div-float v7, v4, v10

    :goto_1
    cmpl-float v3, v9, v12

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr v1, v11

    div-float v9, v1, v10

    :goto_2
    const v1, 0x42be1810

    const v3, 0x42d9c419

    mul-float v7, v7, v1

    mul-float v8, v8, v5

    mul-float v9, v9, v3

    div-float/2addr v7, v5

    div-float/2addr v8, v5

    div-float/2addr v9, v5

    const v1, 0x404f65fe

    mul-float v1, v1, v7

    const v3, -0x403b3d08    # -1.5372f

    mul-float v3, v3, v8

    add-float/2addr v1, v3

    const v3, -0x4100b780    # -0.4986f

    mul-float v3, v3, v9

    add-float/2addr v1, v3

    const v3, -0x4087f62b    # -0.9689f

    mul-float v3, v3, v7

    const v4, 0x3ff01a37    # 1.8758f

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    const v4, 0x3d29fbe7    # 0.0415f

    mul-float v4, v4, v9

    add-float/2addr v3, v4

    const v4, 0x3d6425af    # 0.0557f

    mul-float v7, v7, v4

    const v4, -0x41af1aa0    # -0.204f

    mul-float v8, v8, v4

    add-float/2addr v7, v8

    const v4, 0x3f874bc7    # 1.057f

    mul-float v9, v9, v4

    add-float/2addr v7, v9

    float-to-double v4, v1

    const v8, 0x414eb852    # 12.92f

    const v9, 0x3d6147ae    # 0.055f

    const-wide v10, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const v12, 0x3f870a3d    # 1.055f

    const-wide v13, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v15, v4, v13

    if-lez v15, :cond_3

    .line 107
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v1, v1, v12

    sub-float/2addr v1, v9

    goto :goto_3

    :cond_3
    mul-float v1, v1, v8

    :goto_3
    float-to-double v4, v3

    cmpl-double v15, v4, v13

    if-lez v15, :cond_4

    .line 111
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v12

    sub-float/2addr v3, v9

    goto :goto_4

    :cond_4
    mul-float v3, v3, v8

    :goto_4
    float-to-double v4, v7

    cmpl-double v15, v4, v13

    if-lez v15, :cond_5

    .line 116
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v12

    sub-float/2addr v4, v9

    goto :goto_5

    :cond_5
    mul-float v4, v7, v8

    :goto_5
    mul-float v1, v1, v6

    float-to-int v1, v1

    mul-float v3, v3, v6

    float-to-int v3, v3

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 146
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v5, 0xff

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, -0x1000000

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v2, v4, 0x0

    or-int/2addr v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 151
    invoke-virtual {v2, v3, v4, v1}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method
