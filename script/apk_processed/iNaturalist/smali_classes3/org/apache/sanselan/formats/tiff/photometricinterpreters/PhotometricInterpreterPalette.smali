.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterPalette.java"


# instance fields
.field private final fColorMap:[I


# direct methods
.method public constructor <init>(I[IIII[I)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 34
    iput-object p6, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->bitsPerSample:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    shl-int v0, v2, v0

    .line 44
    aget p2, p2, v1

    .line 45
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    aget v2, v2, p2

    shr-int/lit8 v2, v2, 0x8

    .line 46
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    add-int v4, p2, v0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x8

    .line 47
    iget-object v4, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    aget p2, v4, p2

    shr-int/lit8 p2, p2, 0x8

    shl-int/lit8 v0, v2, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    shl-int/2addr p2, v1

    or-int/2addr p2, v0

    .line 51
    invoke-virtual {p1, p3, p4, p2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method
