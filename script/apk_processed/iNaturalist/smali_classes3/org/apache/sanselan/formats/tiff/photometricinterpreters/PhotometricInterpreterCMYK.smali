.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCMYK.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 30
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

    .line 37
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 38
    aget v1, p2, v1

    const/4 v2, 0x2

    .line 39
    aget v2, p2, v2

    const/4 v3, 0x3

    .line 40
    aget p2, p2, v3

    .line 42
    invoke-static {v0, v1, v2, p2}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result p2

    .line 43
    invoke-virtual {p1, p3, p4, p2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method