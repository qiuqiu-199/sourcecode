.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserCMYK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 3

    const/4 p4, 0x0

    .line 27
    aget-object p4, p1, p4

    aget-object p4, p4, p3

    aget p4, p4, p2

    and-int/lit16 p4, p4, 0xff

    const/4 v0, 0x1

    .line 28
    aget-object v0, p1, v0

    aget-object v0, v0, p3

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    .line 29
    aget-object v1, p1, v1

    aget-object v1, v1, p3

    aget v1, v1, p2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    .line 30
    aget-object p1, p1, v2

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    rsub-int p2, p4, 0xff

    rsub-int p3, v0, 0xff

    rsub-int p4, v1, 0xff

    rsub-int p1, p1, 0xff

    .line 38
    invoke-static {p2, p3, p4, p1}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result p1

    return p1
.end method
