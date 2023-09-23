.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterRGB.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    aget v1, p2, v0

    const/4 v2, 0x1

    .line 36
    aget v2, p2, v2

    const/4 v3, 0x2

    .line 37
    aget p2, p2, v3

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/2addr p2, v0

    or-int/2addr p2, v1

    .line 41
    invoke-virtual {p1, p3, p4, p2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method
