.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterBiLevel.java"


# instance fields
.field private final invert:Z


# direct methods
.method public constructor <init>(II[IIIIZ)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 34
    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 36
    iput-boolean p7, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    aget p2, p2, v0

    .line 45
    iget-boolean v1, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    if-eqz v1, :cond_0

    rsub-int p2, p2, 0xff

    :cond_0
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    shl-int/2addr p2, v0

    or-int/2addr p2, v1

    .line 55
    invoke-virtual {p1, p3, p4, p2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method
