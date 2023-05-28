.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterYCbCr.java"


# direct methods
.method public constructor <init>([D[I[I[DI[IIII)V
    .locals 6

    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move v3, p7

    move v4, p8

    move v5, p9

    .line 32
    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public convertYCbCrtoRGB(III)I
    .locals 10

    int-to-double v0, p1

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide v2, 0x3ff29fbe76c8b439L    # 1.164

    mul-double v0, v0, v2

    int-to-double v2, p3

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    const-wide v6, 0x3ff989374bc6a7f0L    # 1.596

    mul-double v6, v6, v2

    add-double/2addr v6, v0

    const-wide v8, 0x3fea04189374bc6aL    # 0.813

    mul-double v2, v2, v8

    sub-double v2, v0, v2

    int-to-double p1, p2

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v4

    const-wide v4, 0x3fd916872b020c4aL    # 0.392

    mul-double v4, v4, p1

    sub-double/2addr v2, v4

    const-wide v4, 0x400022d0e5604189L    # 2.017

    mul-double p1, p1, v4

    add-double/2addr v0, p1

    double-to-int p1, v6

    const/16 p2, 0xff

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result p1

    double-to-int v2, v2

    .line 60
    invoke-virtual {p0, v2, p3, p2}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v2

    double-to-int v0, v0

    .line 61
    invoke-virtual {p0, v0, p3, p2}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result p2

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const/4 v2, 0x0

    .line 71
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 72
    aget v4, p2, v4

    const/4 v5, 0x2

    .line 73
    aget v1, p2, v5

    int-to-double v5, v3

    int-to-double v7, v1

    const-wide/high16 v9, 0x4060000000000000L    # 128.0

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    const-wide v11, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v11, v11, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v5

    int-to-double v3, v4

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v9

    const-wide v9, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v9, v9, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v9, v5, v9

    const-wide v13, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v7, v7, v13

    sub-double/2addr v9, v7

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v7

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v3

    double-to-int v1, v11

    const/16 v3, 0xff

    .line 78
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v1

    double-to-int v4, v9

    .line 79
    invoke-virtual {p0, v4, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v4

    double-to-int v5, v5

    .line 80
    invoke-virtual {p0, v5, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v3

    shl-int/lit8 v1, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v1, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    shl-int/lit8 v2, v3, 0x0

    or-int/2addr v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 84
    invoke-virtual {v2, v3, v4, v1}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method

.method public limit(III)I
    .locals 0

    .line 37
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
