.class Lorg/apache/sanselan/formats/bmp/ImageContents;
.super Ljava/lang/Object;
.source "ImageContents.java"


# instance fields
.field public final bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

.field public final colorTable:[B

.field public final imageData:[B

.field public final pixelParser:Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/ImageContents;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 32
    iput-object p2, p0, Lorg/apache/sanselan/formats/bmp/ImageContents;->colorTable:[B

    .line 33
    iput-object p3, p0, Lorg/apache/sanselan/formats/bmp/ImageContents;->imageData:[B

    .line 34
    iput-object p4, p0, Lorg/apache/sanselan/formats/bmp/ImageContents;->pixelParser:Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;

    return-void
.end method
