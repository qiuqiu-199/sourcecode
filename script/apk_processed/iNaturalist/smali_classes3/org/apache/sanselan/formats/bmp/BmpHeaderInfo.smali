.class public Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
.super Ljava/lang/Object;
.source "BmpHeaderInfo.java"


# instance fields
.field public final bitmapDataOffset:I

.field public final bitmapDataSize:I

.field public final bitmapHeaderSize:I

.field public final bitsPerPixel:I

.field public final colorsImportant:I

.field public final colorsUsed:I

.field public final compression:I

.field public final fileSize:I

.field public final hResolution:I

.field public final height:I

.field public final identifier1:B

.field public final identifier2:B

.field public final planes:I

.field public final reserved:I

.field public final vResolution:I

.field public final width:I


# direct methods
.method public constructor <init>(BBIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 53
    iput-byte v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    move v1, p2

    .line 54
    iput-byte v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    move v1, p3

    .line 55
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->fileSize:I

    move v1, p4

    .line 56
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->reserved:I

    move v1, p5

    .line 57
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move v1, p6

    .line 59
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    move v1, p7

    .line 60
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    move v1, p8

    .line 61
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    move v1, p9

    .line 62
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->planes:I

    move v1, p10

    .line 63
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move v1, p11

    .line 64
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move v1, p12

    .line 65
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataSize:I

    move v1, p13

    .line 66
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->hResolution:I

    move/from16 v1, p14

    .line 67
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->vResolution:I

    move/from16 v1, p15

    .line 68
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v1, p16

    .line 69
    iput v1, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsImportant:I

    return-void
.end method
