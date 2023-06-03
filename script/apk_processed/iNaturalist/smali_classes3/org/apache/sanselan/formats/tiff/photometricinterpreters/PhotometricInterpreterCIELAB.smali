.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCIELAB.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 41
    aget v1, p2, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 42
    aget p2, p2, v2

    int-to-byte p2, p2

    .line 44
    invoke-static {v0, v1, p2}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result p2

    .line 45
    invoke-virtual {p1, p3, p4, p2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method
