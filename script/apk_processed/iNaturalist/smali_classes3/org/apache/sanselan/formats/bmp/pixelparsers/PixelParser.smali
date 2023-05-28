.class public abstract Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
.super Ljava/lang/Object;
.source "PixelParser.java"


# instance fields
.field protected final bfp:Lorg/apache/sanselan/common/BinaryFileParser;

.field public final bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

.field public final colorTable:[B

.field public final imageData:[B

.field protected final is:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 39
    iput-object p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    .line 40
    iput-object p3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->imageData:[B

    .line 42
    new-instance p1, Lorg/apache/sanselan/common/BinaryFileParser;

    const/16 p2, 0x49

    invoke-direct {p1, p2}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>(I)V

    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    .line 43
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->is:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method protected getColorTableRGB(I)I
    .locals 3

    mul-int/lit8 p1, p1, 0x4

    .line 52
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 v1, p1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 53
    iget-object v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 54
    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public abstract processImage(Ljava/awt/image/BufferedImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
