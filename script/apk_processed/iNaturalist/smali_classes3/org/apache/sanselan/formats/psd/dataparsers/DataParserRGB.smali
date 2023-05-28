.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserRGB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 3

    const/4 p4, 0x0

    .line 26
    aget-object v0, p1, p4

    aget-object v0, v0, p3

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 27
    aget-object v1, p1, v1

    aget-object v1, v1, p3

    aget v1, v1, p2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 28
    aget-object p1, p1, v2

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, v0, 0xff

    shl-int/lit8 p2, p2, 0x10

    const/high16 p3, -0x1000000

    or-int/2addr p2, p3

    and-int/lit16 p3, v1, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, p4

    or-int/2addr p1, p2

    return p1
.end method
